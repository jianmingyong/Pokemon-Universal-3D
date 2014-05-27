SetAttackBaseDamage(9, 75)
SetAttackMaxPP(9, 15)
SetAttackCategory(9, 0)
SetAttackContestCategory(9, 3)
SetAttackAttackCategory(9, 2)
SetAttackType(9, 12)
SetAttackPriority(9, 0)
SetAttackAccuracy(9, 255)
SetAttackSpecialAttackDelegate(9, "ATTACKS_ELECTRIC_THUNDER_PUNCH_SPECIAL")

function ATTACKS_ELECTRIC_THUNDER_PUNCH_SPECIAL()
    Attacks_TryToParalyze(10, "target")
end