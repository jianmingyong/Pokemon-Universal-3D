SetAttackBaseDamage(44, 60)
SetAttackMaxPP(44, 25)
SetAttackCategory(44, 0)
SetAttackContestCategory(44, 0)
SetAttackAttackCategory(44, 2)
SetAttackType(44, 16)
SetAttackPriority(44, 0)
SetAttackAccuracy(44,255)
SetAttackSpecialAttackDelegate(44, "ATTACKS_DARK_BITE_SPECIAL")

function ATTACKS_DARK_BITE_SPECIAL()
    Attacks_TryToFlinch(30, "target")
end