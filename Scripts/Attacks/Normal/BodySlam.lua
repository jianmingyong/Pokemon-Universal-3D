SetAttackBaseDamage(34,85)
SetAttackMaxPP(34,15)
SetAttackCategory(34,0)
SetAttackContestCategory(34,0)
SetAttackType(34,0)
SetAttackPriority(34,0)
SetAttackAccuracy(34,255)
SetAttackSpecialAttackDelegate(34, "ATTACKS_NORMAL_BODY_SLAM_SPECIAL")

function ATTACKS_NORMAL_BODY_SLAM_SPECIAL()
    Attacks_TryToParalyze(15, "target")
end