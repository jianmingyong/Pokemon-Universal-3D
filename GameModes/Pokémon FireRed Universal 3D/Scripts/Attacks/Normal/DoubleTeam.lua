SetAttackBaseDamage(104,0)
SetAttackMaxPP(104,15)
SetAttackCategory(104,2)
SetAttackContestCategory(104,3)
SetAttackType(104,0)
SetAttackPriority(104,0)
SetAttackAccuracy(104,-1)
SetAttackHasHitEffect(104, false)
SetAttackAttackCategory(104, 1)
SetAttackSpecialAttackDelegate(104, "ATTACKS_NORMAL_DOUBLE_TEAM_SPECIAL")
SetAttackAttackingAnimationDelegate(104, "ATTACKS_NORMAL_DOUBLE_TEAM_ATTACKING_ANIMATION")

function ATTACKS_NORMAL_DOUBLE_TEAM_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_GetTargetStringByAttackTarget("user") .. "|Evasion|1|1")
end

function ATTACKS_NORMAL_DOUBLE_TEAM_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(1, 0.0)
    AnimationSequenceEnd()
end