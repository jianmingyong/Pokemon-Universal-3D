SetAttackBaseDamage(423,65)
SetAttackMaxPP(423,15)
SetAttackCategory(423,0)
SetAttackContestCategory(423,3)
SetAttackType(423,14)
SetAttackPriority(423,0)
SetAttackAccuracy(423,242)
SetAttackSpecialAttackDelegate(423, "ATTACKS_ICE_ICE_BEAM_SPECIAL")

function ATTACKS_ICE_ICE_BEAM_SPECIAL()
    Attacks_TryToFreeze(10, "target")
    Attacks_TryToFlinch(10, "target")
end