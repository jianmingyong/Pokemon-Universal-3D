SetAttackBaseDamage(81, 0)
SetAttackMaxPP(81, 40)
SetAttackCategory(81, 2)
SetAttackContestCategory(81, 1)
SetAttackAttackCategory(81, 1)
SetAttackType(81, 6)
SetAttackPriority(81, 0)
SetAttackAccuracy(81, 242)
SetAttackSpecialAttackDelegate(81, "ATTACKS_BUG_STRING_SHOT_SPECIAL")
SetAttackHitAnimationDelegate(81, "ATTACKS_BUG_STRING_SHOT_HIT_ANIMATION")

function ATTACKS_BUG_STRING_SHOT_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Speed|-1|81")
end

function ATTACKS_BUG_STRING_SHOT_HIT_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(-1, 0.0)
    AnimationSequenceEnd()
end