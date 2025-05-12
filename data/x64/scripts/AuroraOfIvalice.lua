-- Aurora of Ivalice: Made by FehDead
-------------------------------------
-- MAIN MOD
-------------------------------------
-- showLog              bool helper for debug
-------------------------------------
local AOISettings = {}
local AOIPointers = {}
local AOIMaps = {}
local blockNextMapJump = false

local function showLog(condition, message)
    if condition then
        print(message)
    end
end

-------------------------------------
-- LOAD EXTERNAL FILES
-------------------------------------

local function getConfigEnv()
    return setmetatable({}, {
        __index = _G
    })
end

local function loadExternalFile(path, description)
    local file, err = loadfile(path, "t", getConfigEnv())
    if not file then
        showLog(true, string.format("Aurora of Ivalice (AOI): Failed to load %s: %s", description, err))
        return nil
    end
    local status, result = pcall(file)
    if not status then
        showLog(true, string.format("Aurora of Ivalice (AOI): Failed to execute %s: %s", description, result))
        return nil
    end
    showLog(true, string.format("Aurora of Ivalice (AOI): Successfully loaded %s", description))
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
-- EXPOSE CONDITIONS
-------------------------------------

local function writeExposedValuesToFile(values)
    local path = "scripts/config/AuroraOfIvalice/AOIExposedValues.lua"
    local file, err = io.open(path, "w")
    if not file then
        showLog(true, "Aurora of Ivalice: Couldn't write to AOIExposedValues.lua: " .. err)
        return
    end

    file:write("-- Aurora of Ivalice: Made by FehDead\n")
    file:write("-------------------------------------\n")
    file:write("-- EXPOSE CONDITIONS\n")
    file:write("-------------------------------------\n")
    file:write("_G.AOIExposedValues = {\n")
    file:write(string.format("    AOIActive = %s,\n", values.AOIActive or "false"))
    file:write(string.format("    AOIProgress = %s,\n", values.AOIProgress or "nil"))
    file:write(string.format("    AOIDirection = \"%s\",\n", values.AOIDirection or "unknown"))
    file:write(string.format("    AOICondition = \"%s\",\n", values.AOICondition or "unknown"))
    file:write("}\n")
    file:close()
end

local function generateExposedValues(active, progress, direction, condition)
    return {
        AOIActive = active,
        AOIProgress = progress,
        AOIDirection = direction,
        AOICondition = condition
    }
end

local function saveExposedValues()
    writeExposedValuesToFile(_G.AOIExposedValues)
end

local function resetExposedValues()
    local defaultValues = generateExposedValues(false, nil, "unknown", "unknown")
    writeExposedValuesToFile(defaultValues)
end

local function updateCycleVariables()
    if not AOISettings or not AOISettings.currentCycleTime or not AOISettings.totalCycleTimeMs then
        showLog(true, "Aurora of Ivalice (AOI): Settings not initialized for cycle variables.")
        return
    end

    local progress = math.floor((AOISettings.currentCycleTime / AOISettings.totalCycleTimeMs) * 100)
    local direction = AOISettings.cycleDirection == 1 and "forward" or "backward"

    _G.AOIExposedValues.AOIActive = true
    _G.AOIExposedValues.AOIProgress = progress
    _G.AOIExposedValues.AOIDirection = direction

    if progress <= 33 then
        _G.AOIExposedValues.AOICondition = "day"
    elseif progress <= 66 then
        _G.AOIExposedValues.AOICondition = "afternoon"
    else
        _G.AOIExposedValues.AOICondition = "night"
    end
end

local function periodicUpdate()
    if not _G.AOIExposedValues then
        _G.AOIExposedValues = generateExposedValues(false, nil, "unknown", "unknown")
    end

    updateCycleVariables()
    saveExposedValues()
    event.executeAfterMs(1000, periodicUpdate)
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

    persistPointers()
    persistStatics()
    updateCycleVariables()

    local progress = AOISettings.currentCycleTime / AOISettings.totalCycleTimeMs
    local direction = AOISettings.cycleDirection

    if direction == -1 then
        progress = 1 - progress
    end

    local curve = 1.0
    if progress <= 0.33 then
        curve = AOISettings.dayCurve or 1.0
    elseif progress <= 0.66 then
        curve = AOISettings.afternoonCurve or 1.0
    else
        curve = AOISettings.nightCurve or 1.0
    end

    local delta = AOISettings.updateIntervalMs * curve
    AOISettings.currentCycleTime = AOISettings.currentCycleTime + delta

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

    showLog(true, string.format("Map Jump %X.", locationId))

    local mapRegion = "unknown"
    local mapName = "unknown"

    if blockNextMapJump then
        showLog(true, string.format("Map Jump BLOCKED %X.", locationId))
        return
    end

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

    showLog(false,
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

    _G.AOIExposedValues.exposedReady = true

    resetDefaultValues()
end

local function onOpenFile(reader, filename, flag)
    if filename and type(filename) == "string" then
        local normalized = filename:lower()
        if normalized:find("str_z0000_") then
            blockNextMapJump = true

            event.executeAfterMs(10000, function()
                blockNextMapJump = false
            end)
        end
    end

    return true
end

-------------------------------------
-- START MOD
-------------------------------------

local function onExit()
    resetExposedValues()
    memory.unregisterAllSymbols()
    collectgarbage()
end

local function applyPatch()
    event.executeAfterMs(3000, function()
        updateInitialValues()
        periodicUpdate()
    end)

    event.registerEventAsync("onMapJump", onMapJump)
    event.registerEventAsync("onOpenFile", onOpenFile)
    event.registerEventSync("onFlip", persistValues)
    event.registerEventAsync("exit", onExit)

    showLog(true, string.format("Aurora of Ivalice (AOI) %s: Applying patch.", AOISettings.modVer))
end

local function startPatch()

    if not _G.AOIExposedValues then
        _G.AOIExposedValues = generateExposedValues(false, nil, "unknown", "unknown")
    end

    resetExposedValues()

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
