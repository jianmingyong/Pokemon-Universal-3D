SetAttackBaseDamage(71,20)
SetAttackMaxPP(71,25)
SetAttackCategory(71,1)
SetAttackContestCategory(71,1)
SetAttackType(71,11)
SetAttackPriority(71,0)
SetAttackAccuracy(71,255)
SetAttackSpecialAttackDelegate(71, "ATTACKS_GRASS_ABSORB_SPECIAL")

function ATTACKS_GRASS_ABSORB_SPECIAL()
    local restore = math.floor(Attacks_DamageDealt / 2)
    if restore <= 0 then
        restore = 1
    end
    Attacks_AddBattleStep("GainHP", Attacks_TargetString .. "|" .. tostring(restore))
    Attacks_AddBattleStep("Message", Attacks_PrimaryTargetName .. " had its~energy drained!")
end