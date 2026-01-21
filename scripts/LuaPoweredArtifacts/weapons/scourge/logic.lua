local storage = require("openmw.storage")
local self = require("openmw.self")

require("scripts.LuaPoweredArtifacts.utils.omwUtils")

local sectionScourge = storage.globalSection("SettingsLuaPoweredArtifacts_scourge")
local isSummonedDaedra = Daedra.Summoned[self.recordId]
local isNormalDaedra = Daedra.Normal[self.recordId]

function DoBanish(attack)
    local dmgMult = 0
    if isSummonedDaedra then
        dmgMult = sectionScourge:get("summonedDaedraDmgModifier")
    elseif isNormalDaedra then
        dmgMult = sectionScourge:get("normalDaedraDmgModifier")
    end

    local msg = "Scourge debug messagen" ..
        "Victim:      " .. self.recordId .. "\n" ..
        "Is summoned: " .. tostring(isSummonedDaedra) .. "\n" ..
        "Is normal:   " .. tostring(isNormalDaedra) .. "\n" ..
        "Damage mult: " .. tostring(dmgMult)

    if dmgMult > 0 then
        msg = msg .. "\n" ..
            "Initial HP damage:      " .. tostring(attack.damage.health) .. "\n" ..
            "Final HP damage:        " .. tostring(attack.damage.health * dmgMult) .. "\n" ..
            "Initial fatigue damage: " .. tostring(attack.damage.fatigue) .. "\n" ..
            "Final fatigue damage:   " .. tostring(attack.damage.fatigue * dmgMult)
        attack.damage.health = attack.damage.health * dmgMult
        attack.damage.fatigue = attack.damage.fatigue * dmgMult
    elseif dmgMult < 0 then
        self.type.stats.dynamic.health(self).current = 0
        msg = msg .. "\n" ..
            "Instakill:   " .. tostring(dmgMult < 0)
    end

    Log(msg)
end
