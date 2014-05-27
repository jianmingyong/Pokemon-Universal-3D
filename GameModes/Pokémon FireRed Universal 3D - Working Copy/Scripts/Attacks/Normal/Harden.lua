SetAttackBaseDamage(106,0)
SetAttackMaxPP(106,30)
SetAttackCategory(106,2)
SetAttackAttackCategory(106,1)
SetAttackContestCategory(106,0)
SetAttackType(106,0)
SetAttackPriority(106,0)
SetAttackAccuracy(106,-1)
SetAttackSpecialAttackDelegate(106, "ATTACKS_NORMAL_HARDEN_SPECIAL")
SetAttackAttackingAnimationDelegate(106, "ATTACKS_NORMAL_HARDEN_ATTACKING_ANIMATION")

function ATTACKS_NORMAL_HARDEN_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_GetTargetStringByAttackTarget("user") .. "|Defense|1|1")
end

function ATTACKS_NORMAL_HARDEN_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(1, 0.0)
    AnimationSequenceEnd()
end