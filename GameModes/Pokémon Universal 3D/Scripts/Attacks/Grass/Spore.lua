SetAttackBaseDamage(147,0)
SetAttackMaxPP(147,15)
SetAttackCategory(147,2)
SetAttackContestCategory(147,2)
SetAttackType(147,11)
SetAttackPriority(147,0)
SetAttackAccuracy(147,255)
SetAttackSpecialAttackDelegate(147, "ATTACKS_GRASS_SPORE_SPECIAL")

function ATTACKS_GRASS_SPORE_SPECIAL()
    Attacks_AddBattleStep("SpecialStatus", Attacks_TargetString .. "|asleep")
end