local storage = require("openmw.storage")
local self = require("openmw.self")

require("scripts.LuaPoweredArtifacts.utils.daedra")

local sectionScourge = storage.globalSection("SettingsLuaPoweredArtifacts_scourge")
local isDaedra = Daedra.Summoned[self.recordId] or Daedra.Normal[self.recordId]

function ScourgeCond(attack)
    if not sectionScourge:get("enabled") then
        return false
    end

    if not (attack.successful and attack.sourceType == "melee" and attack.weapon) then
        return false
    end

    return attack.weapon.recordId == "daedric_scourge_unique"
        and isDaedra
end
