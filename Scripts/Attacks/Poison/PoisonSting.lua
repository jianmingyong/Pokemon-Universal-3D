SetAttackBaseDamage(40,15)
SetAttackMaxPP(40,35)
SetAttackCategory(40,0)
SetAttackContestCategory(40,1)
SetAttackType(40,3)
SetAttackPriority(40,0)
SetAttackAccuracy(40,255)
SetAttackAttackCategory(40,2)
SetAttackSpecialAttackDelegate(40, "ATTACKS_POISON_POISON_STING_SPECIAL")

function ATTACKS_POISON_POISON_STING_SPECIAL()
    Attacks_TryToPoison(30, "target")
end