SetAttackBaseDamage(97,0)
SetAttackMaxPP(97,30)
SetAttackCategory(97,2)
SetAttackContestCategory(97,3)
SetAttackType(97,13)
SetAttackPriority(97,0)
SetAttackAccuracy(97,-1)
SetAttackHasHitEffect(97, false)
SetAttackAttackCategory(97, 1)
SetAttackSpecialAttackDelegate(97, "ATTACKS_PSYCHIC_AGILITY_SPECIAL")
SetAttackAttackingAnimationDelegate(97, "ATTACKS_PSYCHIC_AGILITY_ATTACKING_ANIMATION")

function ATTACKS_PSYCHIC_AGILITY_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_GetTargetStringByAttackTarget("user") .. "|Speed|2|97")
end

function ATTACKS_PSYCHIC_AGILITY_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(2, 0.0)
    AnimationSequenceEnd()
end