SetAttackBaseDamage(108,0)
SetAttackMaxPP(108,20)
SetAttackCategory(108,2)
SetAttackContestCategory(108,1)
SetAttackType(108,0)
SetAttackPriority(108,0)
SetAttackAccuracy(108,255)
SetAttackAttackCategory(108,1)
SetAttackSpecialAttackDelegate(108, "ATTACKS_NORMAL_SMOKE_SCREEN_SPECIAL")
SetAttackHitAnimationDelegate(108, "ATTACKS_NORMAL_SMOKE_SCREEN_HIT_ANIMATION")

function ATTACKS_NORMAL_SMOKE_SCREEN_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Accuracy|-1|1")
end

function ATTACKS_NORMAL_SMOKE_SCREEN_HIT_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(-1, 0.0)
    AnimationSequenceEnd()
end