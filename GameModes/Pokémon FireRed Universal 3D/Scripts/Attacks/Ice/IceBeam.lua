SetAttackBaseDamage(58,95)
SetAttackMaxPP(58,10)
SetAttackCategory(58,1)
SetAttackContestCategory(58,2)
SetAttackType(58,14)
SetAttackPriority(58,0)
SetAttackAccuracy(58,255)
SetAttackSpecialAttackDelegate(58, "ATTACKS_ICE_ICE_BEAM_SPECIAL")

function ATTACKS_ICE_ICE_BEAM_SPECIAL()
    Attacks_TryToFreeze(10, "target")
end