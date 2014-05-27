SetAttackBaseDamage(436,80)
SetAttackMaxPP(436,15)
SetAttackCategory(436,1)
SetAttackContestCategory(436,0)
SetAttackType(436,9)
SetAttackPriority(436,0)
SetAttackAccuracy(436,255)
SetAttackAttackingAnimationDelegate(436, "ATTACKS_FIRE_EMBER_ATTACKING_ANIMATION")
SetAttackHitAnimationDelegate(436, "ATTACKS_FIRE_EMBER_HIT_ANIMATION")
SetAttackSpecialAttackDelegate(436, "ATTACKS_FIRE_LAVA_PLUME_SPECIAL")

function ATTACKS_FIRE_LAVA_PLUME_SPECIAL()
    Attacks_TryToBurn(30, "target")
end