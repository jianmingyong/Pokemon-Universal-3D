SetAttackBaseDamage(107,0)
SetAttackMaxPP(107,20)
SetAttackCategory(107,2)
SetAttackContestCategory(107,4)
SetAttackType(107,0)
SetAttackPriority(107,0)
SetAttackAccuracy(107,-1)
SetAttackSpecialAttackDelegate(107, "ATTACKS_NORMAL_MINIMIZE_SPECIAL")
SetAttackAttackingAnimationDelegate(107, "ATTACKS_NORMAL_MINIMIZE_ATTACKING_ANIMATION")
SetAttackHasHitEffect(107, false)

function ATTACKS_NORMAL_MINIMIZE_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_GetTargetStringByAttackTarget("user") .. "|Evasion|2|1")
end

function ATTACKS_NORMAL_MINIMIZE_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(2, 0.0)
    AnimationSequenceEnd()
end