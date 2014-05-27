SetAttackBaseDamage(125,65)
SetAttackMaxPP(125,20)
SetAttackCategory(125,0)
SetAttackContestCategory(125,0)
SetAttackType(125,4)
SetAttackPriority(125,0)
SetAttackAccuracy(125,217)
SetAttackSpecialAttackDelegate(125, "ATTACKS_GROUND_BONE_CLUB_SPECIAL")

function ATTACKS_GROUND_BONE_CLUB_SPECIAL()
    Attacks_TryToFlinch(10, "target")
end