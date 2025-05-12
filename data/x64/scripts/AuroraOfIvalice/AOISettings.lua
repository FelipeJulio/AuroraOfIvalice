-- Aurora of Ivalice: Made by FehDead
-------------------------------------
-- AOI SETTINGS
-------------------------------------
-- disableMod              Fully disable mod
-- disableCycle            Disable cycling and apply only final values
-- pausePersist            Pause the persistence of value updates
-- applyEffect             Disable applyng modifications
-- totalCycleTimeMs        Full cycle (start to end, end to start)
-- currentCycleTime        Actual starting cycle
-- updateIntervalMs        Value update interval
-- cycleDirection          Cycle direction
-- applyedpreset           Default preset
-- **Curve                 Velocity of condition
-------------------------------------
local AOISettings = {
    modVer = "v1.0.0",
    minVer = {1, 5, 1},
    disableMod = false,
    disableCycle = false,
    pausePersist = false,
    applyEffects = false,
    totalCycleTimeMs = 27000000, -- 27000000 - 300000 (test)
    currentCycleTime = 0,
    updateIntervalMs = 1000,
    cycleDirection = 1,
    applyedpreset = "sunny",
    dayCurve = 1.0,
    afternoonCurve = 2.0,
    nightCurve = 3.0
}

return AOISettings
