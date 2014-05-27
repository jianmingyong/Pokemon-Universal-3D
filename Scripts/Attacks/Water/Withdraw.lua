SetAttackBaseDamage(110,0)
SetAttackMaxPP(110,40)
SetAttackCategory(110,2)
SetAttackContestCategory(110,4)
SetAttackType(110,10)
SetAttackPriority(110,0)
SetAttackAccuracy(110,-1)
SetAttackSpecialAttackDelegate(110, "ATTACKS_WATER_WITHDRAW_SPECIAL")
SetAttackAttackingAnimationDelegate(110, "ATTACKS_WATER_WITHDRAW_ATTACKING_ANIMATION")

function ATTACKS_WATER_WITHDRAW_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_GetTargetStringByAttackTarget("user") .. "|Defense|1|110")
end

function ATTACKS_WATER_WITHDRAW_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(1, 0.0)
    AnimationSequenceEnd()
end