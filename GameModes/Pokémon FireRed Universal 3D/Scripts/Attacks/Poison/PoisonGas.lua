SetAttackBaseDamage(139,0)
SetAttackMaxPP(139,40)
SetAttackCategory(139,2)
SetAttackContestCategory(139,1)
SetAttackType(139,3)
SetAttackPriority(139,0)
SetAttackAccuracy(139,204)
SetAttackSpecialAttackDelegate(139, "ATTACKS_POISON_POISON_GAS_SPECIAL")

function ATTACKS_POISON_POISON_GAS_SPECIAL()
    Attacks_AddBattleStep("SpecialStatus", Attacks_GetTargetStringByAttackTarget("target") .. "|poisoned")
end