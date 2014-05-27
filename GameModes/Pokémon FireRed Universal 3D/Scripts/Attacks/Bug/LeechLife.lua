SetAttackBaseDamage(141, 20)
SetAttackMaxPP(141, 15)
SetAttackCategory(141, 0)
SetAttackContestCategory(141, 1)
SetAttackAttackCategory(141, 2)
SetAttackType(141, 6)
SetAttackPriority(141, 0)
SetAttackAccuracy(141, 255)
SetAttackSpecialAttackDelegate(141, "ATTACKS_BUG_LEECH_LIFE_SPECIAL")

function ATTACKS_BUG_LEECH_LIFE_SPECIAL()
    if Attacks_DamageDealt ~= 0 then
        local drain = math.ceil(Attacks_DamageDealt / 2)
        Attacks_AddBattleStep("GainHP", Attacks_TargetString .. "|" .. drain)
        Attacks_AddBattleStep("Message", Attacks_PrimaryTargetName .. " had its~energy drained!")
    end
end