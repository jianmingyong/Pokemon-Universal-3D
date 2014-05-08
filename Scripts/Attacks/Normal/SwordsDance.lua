SetAttackBaseDamage(14,0)
SetAttackMaxPP(14,30)
SetAttackCategory(14,2)
SetAttackContestCategory(14,2)
SetAttackType(14,0)
SetAttackPriority(14,0)
SetAttackAccuracy(14,-1)
SetAttackAttackCategory(14,1)
SetAttackSpecialAttackDelegate(14, "ATTACKS_NORMAL_SWORDS_DANCE_SPECIAL")
SetAttackAttackingAnimationDelegate(14, "ATTACKS_NORMAL_SWORDS_DANCE_ATTACKING_ANIMATION")

function ATTACKS_NORMAL_SWORDS_DANCE_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_GetTargetStringByAttackTarget("user") .. "|Attack|2|1")
end

function ATTACKS_NORMAL_SWORDS_DANCE_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(2, 0.0)
    AnimationSequenceEnd()
end