SetAttackBaseDamage(178,0)
SetAttackMaxPP(178,40)
SetAttackCategory(178,2)
SetAttackContestCategory(178,2)
SetAttackType(178,11)
SetAttackPriority(178,0)
SetAttackAccuracy(178,255)
SetAttackSpecialAttackDelegate(178, "ATTACKS_GRASS_COTTON_SPORE_SPECIAL")
SetAttackHitAnimationDelegate(178, "ATTACKS_GRASS_COTTON_SPORE_HIT_ANIMATION")

function ATTACKS_GRASS_COTTON_SPORE_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Speed|-2|178")
end

function ATTACKS_GRASS_COTTON_SPORE_HIT_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(-2, 0.0)
    AnimationSequenceEnd()
end