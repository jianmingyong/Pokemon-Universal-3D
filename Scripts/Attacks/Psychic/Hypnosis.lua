SetAttackBaseDamage(95,0)
SetAttackMaxPP(95,20)
SetAttackCategory(95,2)
SetAttackAttackCategory(95,1)
SetAttackContestCategory(95,1)
SetAttackType(95,13)
SetAttackPriority(95,0)
SetAttackAccuracy(95,153)
SetAttackAttackCategory(138, 1)
SetAttackSpecialAttackDelegate(95, "ATTACKS_PSYCHIC_HYPNOSIS_SPECIAL")

function ATTACKS_PSYCHIC_HYPNOSIS_SPECIAL()
    Attacks_AddBattleStep("SpecialStatus", Attacks_TargetString .. "|asleep")
end