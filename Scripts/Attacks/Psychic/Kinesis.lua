SetAttackBaseDamage(134,0)
SetAttackMaxPP(134,15)
SetAttackCategory(134,2)
SetAttackContestCategory(134,1)
SetAttackType(134,13)
SetAttackPriority(134,0)
SetAttackAccuracy(134,204)
SetAttackSpecialAttackDelegate(134, "ATTACKS_PSYCHIC_KINESIS_SPECIAL")
SetAttackHitAnimationDelegate(134, "ATTACKS_PSYCHIC_KINESIS_HIT_ANIMATION")

function ATTACKS_PSYCHIC_KINESIS_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Accuracy|-1|189")
end

function ATTACKS_PSYCHIC_KINESIS_HIT_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(-1, 0.0)
    AnimationSequenceEnd()
end