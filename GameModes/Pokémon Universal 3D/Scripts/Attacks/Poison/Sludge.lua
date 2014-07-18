SetAttackBaseDamage(124,65)
SetAttackMaxPP(124,20)
SetAttackCategory(124,1)
SetAttackContestCategory(124,0)
SetAttackType(124,3)
SetAttackPriority(124,0)
SetAttackAccuracy(124,255)
SetAttackSpecialAttackDelegate(124, "ATTACKS_POISON_SLUDGE_SPECIAL")

function ATTACKS_POISON_SLUDGE_SPECIAL()
    Attacks_TryToPoison(30, "target")
end