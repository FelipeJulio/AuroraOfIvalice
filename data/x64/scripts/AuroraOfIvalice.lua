-- Aurora of Ivalice: Made by FehDead
-------------------------------------
-- MAIN MOD
-------------------------------------
-- showLog              bool helper for debug
-------------------------------------
local AOISettings = {}
local AOIPointers = {}
local AOIMaps = {}

local function showLog(condition, message)
    if condition then
        print(message)
    end
end

-------------------------------------
-- LOAD EXTERNAL FILES
-------------------------------------

local function loadExternalFile(path, description)
    local file, err = loadfile(path, "t", {})
    if not file then
        showLog(true, string.format("Aurora of Ivalice (AOI): Failed to load %s: %s", description, err))
        return nil
    end
    local status, result = pcall(file)
    if not status then
        showLog(true, string.format("Aurora of Ivalice (AOI): Failed to execute %s: %s", description, result))
        return nil
    end
    return result
end

local function loadGameData()
    local path = "scripts/AuroraOfIvalice/AOIPointers.lua"
    local pointersData = loadExternalFile(path, "AOIPointers") or {}

    AOIPointers = {
        initialValues = pointersData.initialValues or {
            pointers = {},
            staticAddresses = {}
        },
        pointers = {},
        staticAddresses = {}
    }
    gamePresets = pointersData.presets or {}

    if next(gamePresets) == nil then
        showLog(true, "Aurora of Ivalice (AOI): No presets found ...")
        return false
    end

    return true
end

local function loadSettings()
    local path = "scripts/AuroraOfIvalice/AOISettings.lua"
    AOISettings = loadExternalFile(path, "AOISettings") or {}
    return AOISettings ~= nil
end

local function loadMaps()
    local path = "scripts/AuroraOfIvalice/AOIMaps.lua"
    AOIMaps = loadExternalFile(path, "AOIMaps") or {}
    return AOIMaps ~= nil
end

local function applyPreset(presetName)
    local preset = gamePresets[presetName]
    if not preset then
        preset = gamePresets["sunny"]
    end

    if not preset then
        return
    end

    AOIPointers.pointers = preset.pointers or {}
    AOIPointers.staticAddresses = preset.staticAddresses or {}
end

-------------------------------------
-- CALCULATE VALUES
-------------------------------------

local function calculateValue(initialValue, changeValue, limit, changeType)
    local result = initialValue
    if changeType == "increment" then
        result = result + changeValue
        if limit ~= nil and result > limit then
            result = limit
        end
    elseif changeType == "decrement" then
        result = result - changeValue
        if limit ~= nil and result < limit then
            result = limit
        end
    end

    showLog(false, string.format("Aurora of Ivalice (AOI): Calculated final value: %f", result))
    return result
end

local function calculateValueWithCycle(initialValue, changeValue, limit, changeType)
    if AOISettings.disableCycle then
        showLog(false, "Aurora of Ivalice (AOI): Cycle disabled.")
        return calculateValue(initialValue, changeValue, limit, changeType)
    end

    local progress = AOISettings.currentCycleTime / AOISettings.totalCycleTimeMs
    if AOISettings.cycleDirection == -1 then
        progress = 1 - progress
    end
    local adjustedChangeValue = changeValue * progress
    showLog(false, string.format("Aurora of Ivalice (AOI): Progress: %.2f%%, Value: %.4f", progress * 100,
        adjustedChangeValue))
    return calculateValue(initialValue, adjustedChangeValue, limit, changeType)
end

-------------------------------------
-- PERSIST VALUES IN POINTERS
-------------------------------------

local function persistPointers()
    for basePointer, config in pairs(AOIPointers.pointers) do
        if not AOIPointers.initialValues.pointers[basePointer] then
            showLog(false,
                string.format("Aurora of Ivalice (AOI): Initial values for basePointer %X not found.", basePointer))
        else
            for name, data in pairs(config.offsets) do
                local initialValueData = AOIPointers.initialValues.pointers[basePointer][name]
                if initialValueData then
                    local targetValue = calculateValueWithCycle(initialValueData.value, data.value, data.limit,
                        data.type)
                    memory.writeFloat(initialValueData.address, targetValue)
                    showLog(false,
                        string.format("Aurora of Ivalice (AOI): [%s] Initial value: %f, persisted: %f at address %X",
                            name, initialValueData.value, targetValue, initialValueData.address))
                end
            end
        end
    end
end

local function persistStatics()
    for _, static in ipairs(AOIPointers.staticAddresses) do
        local initialValue = AOIPointers.initialValues.staticAddresses[static.address]
        if initialValue then
            local targetValue = calculateValueWithCycle(initialValue, static.value, static.limit, static.type)
            memory.writeFloat(static.address, targetValue)
            showLog(false,
                string.format("Aurora of Ivalice (AOI): [%s] Initial value: %f, persisted: %f at address %X",
                    static.description, initialValue, targetValue, static.address))
        end
    end
end

local function persistValues()
    if AOISettings.pausePersist then
        showLog(false, "Aurora of Ivalice (AOI): Persist paused.")
        return
    end

    if not AOISettings.applyEffects then
        AOISettings.currentCycleTime = AOISettings.currentCycleTime + AOISettings.updateIntervalMs
        if AOISettings.currentCycleTime >= AOISettings.totalCycleTimeMs then
            AOISettings.currentCycleTime = AOISettings.currentCycleTime % AOISettings.totalCycleTimeMs
            AOISettings.cycleDirection = -AOISettings.cycleDirection
        end
        return
    end

    persistPointers()
    persistStatics()

    AOISettings.currentCycleTime = AOISettings.currentCycleTime + AOISettings.updateIntervalMs
    if AOISettings.currentCycleTime >= AOISettings.totalCycleTimeMs then
        AOISettings.currentCycleTime = AOISettings.currentCycleTime % AOISettings.totalCycleTimeMs
        AOISettings.cycleDirection = -AOISettings.cycleDirection
    end
end

-------------------------------------
-- UPDATE VALUES ON POINTERS
-------------------------------------

local function updateInitialValues()
    for basePointer, config in pairs(AOIPointers.pointers) do
        local pointerBase = memory.readU64(basePointer)
        if pointerBase then
            AOIPointers.initialValues.pointers[basePointer] = {}
            for name, data in pairs(config.offsets) do
                local address = pointerBase + data.offset
                local value = memory.readFloat(address)
                if value then
                    AOIPointers.initialValues.pointers[basePointer][name] = {
                        value = value,
                        address = address
                    }
                else
                    showLog(false, string.format(
                        "Aurora of Ivalice (AOI): Unable to read the value of %s in address %X", name, address))
                end
            end
        else
            showLog(false, string.format("Aurora of Ivalice (AOI): The basePointer %X was not found.", basePointer))
        end
    end

    for _, static in ipairs(AOIPointers.staticAddresses) do
        local value = memory.readFloat(static.address)
        if value then
            AOIPointers.initialValues.staticAddresses[static.address] = value
        else
            showLog(false, string.format("Aurora of Ivalice (AOI): Unable to read initial value from staticAddress %X.",
                static.address))
        end
    end
end

local function resetDefaultValues()
    AOISettings.pausePersist = true
    AOIPointers.initialValues = {
        pointers = {},
        staticAddresses = {}
    }

    event.executeAfterMs(1000, function()
        updateInitialValues()

        for basePointer, config in pairs(AOIPointers.pointers) do
            if not AOIPointers.initialValues.pointers[basePointer] then
                showLog(false, string.format(
                    "Aurora of Ivalice (AOI): Initial values for basePointer %X were not updated correctly.",
                    basePointer))
            else
                showLog(false, string.format(
                    "Aurora of Ivalice (AOI): Initial values for basePointer %X successfully updated.", basePointer))
            end
        end

        AOISettings.pausePersist = false

    end)
end

-------------------------------------
-- CALL MOD
-------------------------------------

local function onMapJump(locationId, flags)
    local mapRegion = "unknown"
    local mapName = "unknown"

    for region, maps in pairs(AOIMaps) do
        for _, map in ipairs(maps) do
            if map.id == locationId then
                mapRegion = region
                mapName = map.name or "unknown"
                presetName = map.preset or "sunny"
                break
            end
        end
        if mapRegion ~= "unknown" then
            break
        end
    end

    AOISettings.applyedpreset = presetName

    showLog(true,
        string.format("Aurora of Ivalice (AOI): Map Loaded { preset: %s, region: %s, name: %s, mapId: %d, flags: %d }",
            AOISettings.applyedpreset, mapRegion, mapName, locationId, flags))

    applyPreset(presetName)

    local hasCycle = false
    for _, maps in pairs(AOIMaps) do
        for _, map in ipairs(maps) do
            if map.id == locationId then
                hasCycle = map.hasCycle
                break
            end
        end
        if hasCycle then
            break
        end
    end

    if hasCycle then
        AOISettings.applyEffects = true
        AOISettings.pausePersist = false
    else
        AOISettings.applyEffects = false
        AOISettings.pausePersist = true
    end

    resetDefaultValues()
end

-------------------------------------
-- START MOD
-------------------------------------

local function onExit()
    memory.unregisterAllSymbols()
    collectgarbage()
end

local function applyPatch()
    event.executeAfterMs(3000, function()
        updateInitialValues()
    end)

    event.registerEventAsync("onMapJump", onMapJump)
    event.registerEventSync("onFlip", persistValues)
    event.registerEventAsync("exit", onExit)

    showLog(true, string.format("Aurora of Ivalice (AOI) %s: Applying patch.", AOISettings.modVer))
end

local function startPatch()
    if not loadSettings() then
        showLog(true, string.format("Aurora of Ivalice (AOI): Couldn't load AOISettings.lua"))
        return false
    end

    if not loadGameData() then
        showLog(true, string.format("Aurora of Ivalice (AOI): Couldn't load AOIPointers.lua"))
        return false
    end

    if not loadMaps() then
        showLog(true, string.format("Aurora of Ivalice (AOI): Couldn't load AOIMaps.lua"))
        return false
    end

    if not (checkMinVersion and checkMinVersion(AOISettings.minVer[1], AOISettings.minVer[2], AOISettings.minVer[3])) then
        showLog(true,
            string.format(
                "Aurora of Ivalice (AOI) %s: Couldn't apply patch, LUA Loader v" .. AOISettings.minVer[1] .. "." ..
                    AOISettings.minVer[2] .. "." .. AOISettings.minVer[3] .. " or higher required.", AOISettings.modVer))
        return false
    end

    if AOISettings.disableMod then
        showLog(true, string.format("Aurora of Ivalice (AOI): Mod is disabled."))
        return false
    end

    applyPatch()
end

event.registerEventAsync("onInitDone", startPatch)

-------------------------------------
-- TEST EVENT
-------------------------------------

-- local function onOpenFile(reader, filename, flag)
--     if filename and type(filename) == "string" then
--         if filename:find("\\us\\WorldMap\\menumap_location") then

--             showLog(true, string.format("Aurora of Ivalice (AOI): File open: %s", filename))

--             AOISettings.pausePersist = true
--             AOIPointers.initialValues = {
--                 pointers = {},
--                 staticAddresses = {}
--             }

--             event.executeAfterMs(500, function()
--                 updateInitialValues()
--                 AOISettings.pausePersist = false
--             end)
--         end
--     end

--     return true
-- end

-- event.registerEventAsync("onOpenFile", onOpenFile)
