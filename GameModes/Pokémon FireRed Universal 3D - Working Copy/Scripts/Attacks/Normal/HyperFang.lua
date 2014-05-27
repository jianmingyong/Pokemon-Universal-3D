SetAttackBaseDamage(158,80)
SetAttackMaxPP(158,15)
SetAttackCategory(158,0)
SetAttackAttackCategory(158,1)
SetAttackContestCategory(158,3)
SetAttackType(158,0)
SetAttackPriority(158,0)
SetAttackAccuracy(158,230)
SetAttackSpecialAttackDelegate(158, "ATTACKS_NORMAL_HYPER_FANG_SPECIAL")

function ATTACKS_NORMAL_HYPER_FANG_SPECIAL()
    Attacks_TryToFlinch(10, "target")
end