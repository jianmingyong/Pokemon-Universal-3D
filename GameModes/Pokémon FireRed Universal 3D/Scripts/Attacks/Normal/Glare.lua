SetAttackBaseDamage(137,0)
SetAttackMaxPP(137,30)
SetAttackCategory(137,2)
SetAttackAttackCategory(137,1)
SetAttackContestCategory(137,0)
SetAttackType(137,0)
SetAttackPriority(137,0)
SetAttackAccuracy(137,230)
SetAttackSpecialAttackDelegate(137, "ATTACKS_NORMAL_GLARE_SPECIAL")

function ATTACKS_NORMAL_GLARE_SPECIAL()
    Attacks_AddBattleStep("SpecialStatus", Attacks_TargetString .. "|paralyzed")
end