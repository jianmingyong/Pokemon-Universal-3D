SetAttackBaseDamage(109,0)
SetAttackMaxPP(109,10)
SetAttackCategory(109,2)
SetAttackAttackCategory(109,1)
SetAttackContestCategory(109,1)
SetAttackType(109,7)
SetAttackPriority(109,0)
SetAttackAccuracy(109,255)
SetAttackSpecialAttackDelegate(109, "ATTACKS_GHOST_CONFUSE_RAY_SPECIAL")

function ATTACKS_GHOST_CONFUSE_RAY_SPECIAL()
    Attacks_TryAddVolitileStatus("target", "confusion")
end