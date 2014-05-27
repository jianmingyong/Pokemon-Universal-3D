SetAttackBaseDamage(126,120)
SetAttackMaxPP(126,5)
SetAttackCategory(126,1)
SetAttackContestCategory(126,2)
SetAttackType(126,9)
SetAttackPriority(126,0)
SetAttackAccuracy(126,217)
SetAttackAttackingAnimationDelegate(126, "ATTACKS_FIRE_EMBER_ATTACKING_ANIMATION")
SetAttackHitAnimationDelegate(126, "ATTACKS_FIRE_EMBER_HIT_ANIMATION")
SetAttackSpecialAttackDelegate(126, "ATTACKS_FIRE_FIRE_BLAST_SPECIAL")

function ATTACKS_FIRE_FIRE_BLAST_SPECIAL()
    Attacks_TryToBurn(30, "target")
end