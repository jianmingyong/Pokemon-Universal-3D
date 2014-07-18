SetAttackBaseDamage(316,0)
SetAttackMaxPP(316,40)
SetAttackCategory(316,2)
SetAttackContestCategory(316,1)
SetAttackType(316,0)
SetAttackPriority(316,0)
SetAttackAccuracy(316,-1)
SetAttackAttackCategory(316,1)
SetAttackSpecialAttackDelegate(316, "ATTACKS_NORMAL_ODOR_SLEUTH_SPECIAL")

function ATTACKS_NORMAL_ODOR_SLEUTH_SPECIAL()
    Attacks_TryAddVolitileStatus("target", "identify")
end