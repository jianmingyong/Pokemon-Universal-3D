SetAttackBaseDamage(77,0)
SetAttackMaxPP(77,35)
SetAttackCategory(77,2)
SetAttackAttackCategory(77,1)
SetAttackContestCategory(77,1)
SetAttackType(77,3)
SetAttackPriority(77,0)
SetAttackAccuracy(77,191)
SetAttackSpecialAttackDelegate(77, "ATTACKS_POISON_POISON_POWDER_SPECIAL")

function ATTACKS_POISON_POISON_POWDER_SPECIAL()
    Attacks_AddBattleStep("SpecialStatus", Attacks_GetTargetStringByAttackTarget("target") .. "|poisoned")
end