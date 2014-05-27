SetAttackBaseDamage(142,0)
SetAttackMaxPP(142,10)
SetAttackCategory(142,2)
SetAttackContestCategory(142,2)
SetAttackType(142,0)
SetAttackPriority(142,0)
SetAttackAccuracy(142,191)
SetAttackAttackCategory(142,1)
SetAttackSpecialAttackDelegate(142, "ATTACKS_NORMAL_LOVELY_KISS_SPECIAL")

function ATTACKS_NORMAL_LOVELY_KISS_SPECIAL()
    Attacks_AddBattleStep("SpecialStatus", Attacks_TargetString .. "|asleep")
end