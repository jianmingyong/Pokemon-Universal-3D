SetAttackBaseDamage(103,0)
SetAttackMaxPP(103,40)
SetAttackCategory(103,2)
SetAttackContestCategory(103,1)
SetAttackType(103,0)
SetAttackPriority(103,0)
SetAttackAccuracy(103,217)
SetAttackAttackCategory(103,1)
SetAttackSpecialAttackDelegate(103, "ATTACKS_NORMAL_SCREECH_SPECIAL")
SetAttackHitAnimationDelegate(103, "ATTACKS_NORMAL_SCREECH_HIT_ANIMATION")

function ATTACKS_NORMAL_SCREECH_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Defense|-2|1")
end

function ATTACKS_NORMAL_SCREECH_HIT_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(-2, 0.0)
    AnimationSequenceEnd()
end