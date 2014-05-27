SetAttackBaseDamage(87, 120)
SetAttackMaxPP(87, 10)
SetAttackCategory(87, Attacks_GetCategoryIndexByName("special"))
SetAttackContestCategory(87, Attacks_GetContestCategoryIndexByName("cool"))
SetAttackAttackCategory(87, Attacks_GetAttackCategoryIndexByName("specialdamage"))
SetAttackType(87, Attacks_GetTypeIndexByName("electric"))
SetAttackPriority(87, 0)
SetAttackAccuracy(87, 178)
SetAttackSpecialAttackDelegate(87, "ATTACKS_ELECTRIC_THUNDER_SPECIAL")

function ATTACKS_ELECTRIC_THUNDER_SPECIAL()
    Attacks_TryToParalyze(10, "target")
end