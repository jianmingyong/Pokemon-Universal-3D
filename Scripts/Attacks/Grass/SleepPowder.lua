SetAttackBaseDamage(79,0)
SetAttackMaxPP(79,15)
SetAttackCategory(79,2)
SetAttackContestCategory(79,1)
SetAttackType(79,11)
SetAttackPriority(79,0)
SetAttackAccuracy(79,191)
SetAttackAttackCategory(79, 1)
SetAttackSpecialAttackDelegate(79, "ATTACKS_GRASS_SLEEP_POWDER_SPECIAL")

function ATTACKS_GRASS_SLEEP_POWDER_SPECIAL()
    Attacks_AddBattleStep("SpecialStatus", Attacks_TargetString .. "|asleep")
end