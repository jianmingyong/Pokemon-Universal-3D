SetAttackBaseDamage(53,95)
SetAttackMaxPP(53,15)
SetAttackCategory(53,1)
SetAttackContestCategory(53,2)
SetAttackType(53,9)
SetAttackPriority(53,0)
SetAttackAccuracy(53,255)
SetAttackAttackingAnimationDelegate(53, "ATTACKS_FIRE_EMBER_ATTACKING_ANIMATION")
SetAttackHitAnimationDelegate(53, "ATTACKS_FIRE_EMBER_HIT_ANIMATION")
SetAttackSpecialAttackDelegate(53, "ATTACKS_FIRE_FLAMETHROWER_SPECIAL")

function ATTACKS_FIRE_FLAMETHROWER_SPECIAL()
    Attacks_TryToBurn(10, "target")
end