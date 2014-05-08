SetAttackBaseDamage(8,75)
SetAttackMaxPP(8,15)
SetAttackCategory(8,0)
SetAttackContestCategory(8,2)
SetAttackType(8,14)
SetAttackPriority(8,0)
SetAttackAccuracy(8,255)
SetAttackSpecialAttackDelegate(8, "ATTACKS_ICE_ICE_PUNCH_SPECIAL")

function ATTACKS_ICE_ICE_PUNCH_SPECIAL()
    Attacks_TryToFreeze(10, "target")
end