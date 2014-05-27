SetAttackBaseDamage(184,0)
SetAttackMaxPP(184,10)
SetAttackCategory(184,2)
SetAttackContestCategory(184,0)
SetAttackType(184,0)
SetAttackPriority(184,0)
SetAttackAccuracy(184,255)
SetAttackAttackCategory(184,1)
SetAttackSpecialAttackDelegate(184, "ATTACKS_NORMAL_SCARY_FACE_SPECIAL")
SetAttackHitAnimationDelegate(184, "ATTACKS_NORMAL_SCARY_FACE_HIT_ANIMATION")

function ATTACKS_NORMAL_SCARY_FACE_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Speed|-2|1")
end

function ATTACKS_NORMAL_SCARY_FACE_HIT_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(-2, 0.0)
    AnimationSequenceEnd()
end