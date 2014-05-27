SetAttackBaseDamage(132,10)
SetAttackMaxPP(132,35)
SetAttackCategory(132,0)
SetAttackContestCategory(132,0)
SetAttackType(132,0)
SetAttackPriority(132,0)
SetAttackAccuracy(132,255)
SetAttackSpecialAttackDelegate(132, "ATTACKS_NORMAL_CONSTRICT_SPECIAL")
SetAttackHitAnimationDelegate(132, "ATTACKS_NORMAL_CONSTRICT_HIT_ANIMATION")

function ATTACKS_NORMAL_CONSTRICT_SPECIAL()
    if Attacks_TryStatChange(10, "target", "Speed", -1) == true then
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_NORMAL_CONSTRICT_HIT_ANIMATION()
    if Attacks_Store == "1" then
        AnimationSequenceBegin()
            DoStatChanceAnimation(-1, 0.0)
        AnimationSequenceEnd()
        Attacks_SetStore("0")
    end
end