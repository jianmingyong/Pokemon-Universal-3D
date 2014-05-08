SetAttackBaseDamage(123,20)
SetAttackMaxPP(123,20)
SetAttackCategory(123,1)
SetAttackContestCategory(123,0)
SetAttackType(123,3)
SetAttackPriority(123,0)
SetAttackAccuracy(123,178)
SetAttackSpecialAttackDelegate(123, "ATTACKS_POISON_SMOG_SPECIAL")

function ATTACKS_POISON_SMOG_SPECIAL()
    Attacks_TryToPoison(40, "target")
end