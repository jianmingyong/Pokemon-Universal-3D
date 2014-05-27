SetAttackBaseDamage(159,0)
SetAttackMaxPP(159,30)
SetAttackCategory(159,2)
SetAttackContestCategory(159,4)
SetAttackType(159,0)
SetAttackPriority(159,0)
SetAttackAccuracy(159,-1)
SetAttackAttackCategory(159,1)
SetAttackSpecialAttackDelegate(159, "ATTACKS_NORMAL_SHARPEN_SPECIAL")
SetAttackAttackingAnimationDelegate(159, "ATTACKS_NORMAL_SHARPEN_ATTACKING_ANIMATION")

function ATTACKS_NORMAL_SHARPEN_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_GetTargetStringByAttackTarget("user") .. "|Attack|1|1")
end

function ATTACKS_NORMAL_SHARPEN_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(1, 0.0)
    AnimationSequenceEnd()
end