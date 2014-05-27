SetAttackBaseDamage(47,0)
SetAttackMaxPP(47,15)
SetAttackCategory(47,2)
SetAttackContestCategory(47,4)
SetAttackType(47,0)
SetAttackPriority(47,0)
SetAttackAccuracy(47,140)
SetAttackAttackCategory(47,1)
SetAttackSpecialAttackDelegate(47, "ATTACKS_NORMAL_SING_SPECIAL")

function ATTACKS_NORMAL_SING_SPECIAL()
    Attacks_AddBattleStep("SpecialStatus", Attacks_TargetString .. "|asleep")
end