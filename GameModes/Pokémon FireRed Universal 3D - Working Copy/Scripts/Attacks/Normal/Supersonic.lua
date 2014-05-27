SetAttackBaseDamage(48,0)
SetAttackMaxPP(48,20)
SetAttackCategory(48,2)
SetAttackContestCategory(48,1)
SetAttackType(48,0)
SetAttackPriority(48,0)
SetAttackAccuracy(48,140)
SetAttackAttackCategory(48,1)
SetAttackSpecialAttackDelegate(48, "ATTACKS_NORMAL_SUPERSONIC_SPECIAL")

function ATTACKS_NORMAL_SUPERSONIC_SPECIAL()
    Attacks_AddBattleStep("SetVolatileStatus", Attacks_TargetString .. "|Confusion")
end