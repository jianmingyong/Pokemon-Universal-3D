SetAttackBaseDamage(133,0)
SetAttackMaxPP(133,20)
SetAttackCategory(133,2)
SetAttackContestCategory(133,4)
SetAttackType(133,13)
SetAttackPriority(133,0)
SetAttackAccuracy(133,-1)
SetAttackSpecialAttackDelegate(133, "ATTACKS_PSYCHIC_AMNESIA_SPECIAL")
SetAttackAttackingAnimationDelegate(133, "ATTACKS_PSYCHIC_AMNESIA_ATTACKING_ANIMATION")

function ATTACKS_PSYCHIC_AMNESIA_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_GetTargetStringByAttackTarget("user") .. "|SpDefense|2|133")
end

function ATTACKS_PSYCHIC_AMNESIA_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(2, 0.0)
    AnimationSequenceEnd()
end