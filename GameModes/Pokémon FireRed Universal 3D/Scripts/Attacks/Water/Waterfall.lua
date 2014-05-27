SetAttackBaseDamage(127,80)
SetAttackMaxPP(127,15)
SetAttackCategory(127,0)
SetAttackContestCategory(127,0)
SetAttackType(127,10)
SetAttackPriority(127,0)
SetAttackAccuracy(127,255)
SetAttackSpecialAttackDelegate(127, "ATTACKS_WATER_WATERFALL_SPECIAL")

function ATTACKS_WATER_WATERFALL_SPECIAL()
    Attacks_TryToFlinch(20, "target")
end