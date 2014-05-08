SetAttackBaseDamage(43,0)
SetAttackMaxPP(43,30)
SetAttackCategory(43,2)
SetAttackContestCategory(43,3)
SetAttackType(43,0)
SetAttackPriority(43,0)
SetAttackAccuracy(43,255)
SetAttackAttackCategory(43,1)
SetAttackSpecialAttackDelegate(43, "ATTACKS_NORMAL_LEER_SPECIAL")
SetAttackHitAnimationDelegate(43, "ATTACKS_NORMAL_LEER_HIT_ANIMATION")

function ATTACKS_NORMAL_LEER_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Defense|-1|1")
end

function ATTACKS_NORMAL_LEER_HIT_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(-1, 0.0)
    AnimationSequenceEnd()
end