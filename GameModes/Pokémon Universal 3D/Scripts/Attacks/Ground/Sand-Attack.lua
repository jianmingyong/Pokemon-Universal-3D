SetAttackBaseDamage(28,0)
SetAttackMaxPP(28,15)
SetAttackCategory(28,2)
SetAttackContestCategory(28,4)
SetAttackType(28,4)
SetAttackPriority(28,0)
SetAttackAccuracy(28,255)
SetAttackAttackCategory(397,1)
SetAttackSpecialAttackDelegate(28, "ATTACKS_GROUND_SAND_ATTACK_SPECIAL")
SetAttackHitAnimationDelegate(28, "ATTACKS_GROUND_SAND_ATTACK_HIT_ANIMATION")

function ATTACKS_GROUND_SAND_ATTACK_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Accuracy|-1|189")
end

function ATTACKS_GROUND_SAND_ATTACK_HIT_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(-1, 0.0)
    AnimationSequenceEnd()
end