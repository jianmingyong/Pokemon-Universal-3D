SetAttackBaseDamage(85, 95)
SetAttackMaxPP(85, 15)
SetAttackCategory(85, 1)
SetAttackContestCategory(85, 3)
SetAttackAttackCategory(85, 2)
SetAttackType(85, 12)
SetAttackPriority(85, 0)
SetAttackAccuracy(85, 255)
SetAttackSpecialAttackDelegate(85, "ATTACKS_ELECTRIC_THUNDERBOLT_SPECIAL")

function ATTACKS_ELECTRIC_THUNDERBOLT_SPECIAL()
    Attacks_TryToParalyze(10, "target")
end