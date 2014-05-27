SetAttackBaseDamage(59,120)
SetAttackMaxPP(59,5)
SetAttackCategory(59,1)
SetAttackContestCategory(59,2)
SetAttackAttackCategory(59, 2)
SetAttackType(59,14)
SetAttackPriority(59,0)
SetAttackAccuracy(59,178)
SetAttackSpecialAttackDelegate(59, "ATTACKS_ICE_BLIZZARD_SPECIAL")

function ATTACKS_ICE_BLIZZARD_SPECIAL()
    Attacks_TryToFreeze(10, "target")
end