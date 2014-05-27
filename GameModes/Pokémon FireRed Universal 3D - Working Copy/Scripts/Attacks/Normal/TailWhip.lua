SetAttackBaseDamage(39,0)
SetAttackMaxPP(39,30)
SetAttackCategory(39,2)
SetAttackContestCategory(39,4)
SetAttackType(39,0)
SetAttackPriority(39,0)
SetAttackAccuracy(39,255)
SetAttackAttackCategory(39,1)
SetAttackSpecialAttackDelegate(39, "ATTACKS_NORMAL_TAIL_WHIP_SPECIAL")
SetAttackHitAnimationDelegate(39, "ATTACKS_NORMAL_TAIL_WHIP_HIT_ANIMATION")

function ATTACKS_NORMAL_TAIL_WHIP_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Defense|-1|1")
end

function ATTACKS_NORMAL_TAIL_WHIP_HIT_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(-1, 0.0)
    AnimationSequenceEnd()
end