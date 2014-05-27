SetAttackBaseDamage(193,0)
SetAttackMaxPP(193,40)
SetAttackCategory(193,2)
SetAttackContestCategory(193,1)
SetAttackType(193,0)
SetAttackPriority(193,0)
SetAttackAccuracy(193,-1)
SetAttackAttackCategory(193,1)
SetAttackSpecialAttackDelegate(193, "ATTACKS_NORMAL_FORESIGHT_SPECIAL")

function ATTACKS_NORMAL_FORESIGHT_SPECIAL()
    Attacks_TryAddVolitileStatus("target", "identify")
end