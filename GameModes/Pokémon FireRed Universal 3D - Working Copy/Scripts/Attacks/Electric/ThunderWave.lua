SetAttackBaseDamage(86, 0)
SetAttackMaxPP(86, 20)
SetAttackCategory(86, Attacks_GetCategoryIndexByName("status"))
SetAttackContestCategory(86, Attacks_GetContestCategoryIndexByName("cool"))
SetAttackAttackCategory(86,1)
SetAttackType(86, Attacks_GetTypeIndexByName("electric"))
SetAttackPriority(86, 0)
SetAttackAccuracy(86, 255)
SetAttackSpecialAttackDelegate(86, "ATTACKS_ELECTRIC_THUNDER_WAVE_SPECIAL")

function ATTACKS_ELECTRIC_THUNDER_WAVE_SPECIAL()
    Attacks_AddBattleStep("SpecialStatus", Attacks_TargetString .. "|paralyzed")
end