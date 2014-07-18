SetAttackBaseDamage(84, 40)
SetAttackMaxPP(84, 30)
SetAttackCategory(84, Attacks_GetCategoryIndexByName("special"))
SetAttackContestCategory(84, Attacks_GetContestCategoryIndexByName("cool"))
SetAttackAttackCategory(84, Attacks_GetAttackCategoryIndexByName("specialdamage"))
SetAttackType(84, Attacks_GetTypeIndexByName("electric"))
SetAttackPriority(84, 0)
SetAttackAccuracy(84, 255)
SetAttackSpecialAttackDelegate(84, "ATTACKS_ELECTRIC_THUNDER_SHOCK_SPECIAL")

function ATTACKS_ELECTRIC_THUNDER_SHOCK_SPECIAL()
    Attacks_TryToParalyze(10, "target")
end