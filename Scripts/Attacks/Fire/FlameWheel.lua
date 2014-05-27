SetAttackBaseDamage(172,60)
SetAttackMaxPP(172,25)
SetAttackCategory(172,0)
SetAttackContestCategory(172,2)
SetAttackType(172,9)
SetAttackPriority(172,0)
SetAttackAccuracy(172,255)
SetAttackAttackingAnimationDelegate(172, "ATTACKS_FIRE_EMBER_ATTACKING_ANIMATION")
SetAttackHitAnimationDelegate(172, "ATTACKS_FIRE_EMBER_HIT_ANIMATION")
SetAttackSpecialAttackDelegate(172, "ATTACKS_FIRE_FLAME_WHEEL_SPECIAL")

function ATTACKS_FIRE_FLAME_WHEEL_SPECIAL()
    Attacks_TryToBurn(10, "target")
end