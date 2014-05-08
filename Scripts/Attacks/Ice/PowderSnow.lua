SetAttackBaseDamage(181,40)
SetAttackMaxPP(181,25)
SetAttackCategory(181,1)
SetAttackContestCategory(181,2)
SetAttackType(181,14)
SetAttackPriority(181,0)
SetAttackAccuracy(181,255)
SetAttackSpecialAttackDelegate(181, "ATTACKS_ICE_POWDER_SNOW_SPECIAL")

function ATTACKS_ICE_POWDER_SNOW_SPECIAL()
    Attacks_TryToFreeze(10, "target")
end