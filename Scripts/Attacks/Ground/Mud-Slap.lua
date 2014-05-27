SetAttackBaseDamage(189,20)
SetAttackMaxPP(189,10)
SetAttackCategory(189,1)
SetAttackContestCategory(189,4)
SetAttackType(189,4)
SetAttackPriority(189,0)
SetAttackAccuracy(189,255)
SetAttackAttackCategory(189,2)
SetAttackSpecialAttackDelegate(189, "ATTACKS_GROUND_MUD_SLAP_SPECIAL")
SetAttackHitAnimationDelegate(189, "ATTACKS_GROUND_MUD_SLAP_HIT_ANIMATION")

function ATTACKS_GROUND_MUD_SLAP_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Accuracy|-1|189")
end

function ATTACKS_GROUND_MUD_SLAP_HIT_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(-1, 0.0)
    AnimationSequenceEnd()
end