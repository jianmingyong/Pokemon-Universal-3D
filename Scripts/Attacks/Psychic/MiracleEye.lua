SetAttackBaseDamage(357,0)
SetAttackMaxPP(357,40)
SetAttackCategory(357,2)
SetAttackContestCategory(357,4)
SetAttackType(357,13)
SetAttackPriority(357,0)
SetAttackAccuracy(357,-1)
SetAttackAttackCategory(357,1)
SetAttackSpecialAttackDelegate(357, "ATTACKS_PSYCHIC_MIRACLE_EYE_SPECIAL")

function ATTACKS_PSYCHIC_MIRACLE_EYE_SPECIAL()
    Attacks_TryAddVolitileStatus("target", "identifydark")
end