SetAttackBaseDamage(96,0)
SetAttackMaxPP(96,40)
SetAttackCategory(96,2)
SetAttackContestCategory(96,2)
SetAttackType(96,13)
SetAttackPriority(96,0)
SetAttackAccuracy(96,-1)
SetAttackHasHitEffect(96, false)
SetAttackAttackCategory(96, 1)
SetAttackSpecialAttackDelegate(96, "ATTACKS_PSYCHIC_MEDITATE_SPECIAL")
SetAttackAttackingAnimationDelegate(96, "ATTACKS_PSYCHIC_MEDITATE_ATTACKING_ANIMATION")

function ATTACKS_PSYCHIC_AGILITY_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_GetTargetStringByAttackTarget("user") .. "|Attack|1|1")
end

function ATTACKS_PSYCHIC_AGILITY_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(1, 0.0)
    AnimationSequenceEnd()
end