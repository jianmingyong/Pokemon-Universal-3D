SetAttackBaseDamage(146,70)
SetAttackMaxPP(146,10)
SetAttackCategory(146,0)
SetAttackContestCategory(146,3)
SetAttackType(146,0)
SetAttackPriority(146,0)
SetAttackAccuracy(146,255)
SetAttackSpecialAttackDelegate(146, "ATTACKS_NORMAL_DIZZY_PUNCH_SPECIAL")

function ATTACKS_NORMAL_DIZZY_PUNCH_SPECIAL()
    Attacks_TryAddVolitileStatus("target", "confusion")
end