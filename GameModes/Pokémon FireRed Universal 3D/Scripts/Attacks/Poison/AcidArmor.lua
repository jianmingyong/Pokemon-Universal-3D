SetAttackBaseDamage(151,0)
SetAttackMaxPP(151,40)
SetAttackCategory(151,2)
SetAttackAttackCategory(151,1)
SetAttackContestCategory(151,0)
SetAttackType(151,3)
SetAttackPriority(151,0)
SetAttackAccuracy(151,-1)
SetAttackHasHitEffect(151, false)
--it took all my will not to spell it armour -draco
SetAttackSpecialAttackDelegate(151, "ATTACKS_POISON_ACID_ARMOR_SPECIAL")
SetAttackAttackingAnimationDelegate(151, "ATTACKS_POISON_ACID_ARMOR_ATTACKING_ANIMATION")

function ATTACKS_POISON_ACID_ARMOR_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_GetTargetStringByAttackTarget("user") .. "|Defense|2|151")
end

function ATTACKS_ROCK_ANCIENTPOWER_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(2, 0.0)
    AnimationSequenceEnd()
end