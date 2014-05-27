SetAttackBaseDamage(74,0)
SetAttackMaxPP(74,40)
SetAttackCategory(74,2)
SetAttackAttackCategory(74,1)
SetAttackContestCategory(74,2)
SetAttackType(74,0)
SetAttackPriority(74,0)
SetAttackAccuracy(74,-1)
SetAttackSpecialAttackDelegate(74, "ATTACKS_NORMAL_GROWTH_SPECIAL")
SetAttackAttackingAnimationDelegate(74, "ATTACKS_NORMAL_GROWTH_ATTACKING_ANIMATION")

function ATTACKS_NORMAL_GROWTH_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_GetTargetStringByAttackTarget("user") .. "|SpAttack|1|1")
end

function ATTACKS_NORMAL_GROWTH_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(1, 0.0)
    AnimationSequenceEnd()
end