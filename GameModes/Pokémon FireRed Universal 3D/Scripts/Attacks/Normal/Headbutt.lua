SetAttackBaseDamage(29,70)
SetAttackMaxPP(29,15)
SetAttackCategory(29,0)
SetAttackAttackCategory(29,2)
SetAttackContestCategory(29,0)
SetAttackType(29,0)
SetAttackPriority(29,0)
SetAttackAccuracy(29,255)
SetAttackSpecialAttackDelegate(29, "ATTACKS_NORMAL_HEADBUTT_SPECIAL")

function ATTACKS_NORMAL_HEADBUTT_SPECIAL()
    Attacks_TryToFlinch(30, "target")
end