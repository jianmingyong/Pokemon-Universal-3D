SetAttackBaseDamage(51,40)
SetAttackMaxPP(51,30)
SetAttackCategory(51,1)
SetAttackContestCategory(51,1)
SetAttackType(51,3)
SetAttackPriority(51,0)
SetAttackAccuracy(51,255)
SetAttackSpecialAttackDelegate(51, "ATTACKS_POISON_ACID_SPECIAL")
SetAttackHitAnimationDelegate(51, "ATTACKS_POISON_ACID_HIT_ANIMATION")

function ATTACKS_POISON_ACID_SPECIAL()
    if Attacks_TryStatChange(10, "target", "Defense", -1) == true then
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_POISON_ACID_HIT_ANIMATION()
    if Attacks_Store == "1" then
        AnimationSequenceBegin()
            DoStatChanceAnimation(-1, 0.0)
        AnimationSequenceEnd()
        Attacks_SetStore("0")
    end
end