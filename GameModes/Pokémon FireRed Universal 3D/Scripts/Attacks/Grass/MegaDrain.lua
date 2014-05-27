SetAttackBaseDamage(72,40)
SetAttackMaxPP(72,15)
SetAttackCategory(72,1)
SetAttackContestCategory(72,1)
SetAttackType(72,11)
SetAttackPriority(72,0)
SetAttackAccuracy(72,255)
SetAttackSpecialAttackDelegate(72, "ATTACKS_GRASS_MEGA_DRAIN_SPECIAL")

function ATTACKS_GRASS_MEGA_DRAIN_SPECIAL()
    local restore = math.floor(Attacks_DamageDealt / 2)
    if restore <= 0 then
        restore = 1
    end
    Attacks_AddBattleStep("GainHP", Attacks_TargetString .. "|" .. tostring(restore))
    Attacks_AddBattleStep("Message", Attacks_PrimaryTargetName .. " had its~energy drained!")
end