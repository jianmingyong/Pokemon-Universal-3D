SetAttackBaseDamage(116,0)
SetAttackMaxPP(116,30)
SetAttackCategory(116,2)
SetAttackContestCategory(116,3)
SetAttackType(116,0)
SetAttackPriority(116,0)
SetAttackAccuracy(116,-1)
SetAttackHasHitEffect(116, false)
SetAttackAttackCategory(116, 1)
SetAttackSpecialAttackDelegate(116, "ATTACKS_NORMAL_FOCUS_ENERGY_SPECIAL")
SetAttackAttackingAnimationDelegate(116, "ATTACKS_NORMAL_FOCUS_ENERGY_ATTACKING_ANIMATION")

function ATTACKS_NORMAL_FOCUS_ENERGY_SPECIAL()
    Attacks_TryAddVolitileStatus("user", "focused")
end

function ATTACKS_NORMAL_FOCUS_ENERGY_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(2, 0.0)
    AnimationSequenceEnd()
end