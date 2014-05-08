SetAttackBaseDamage(190,65)
SetAttackMaxPP(190,10)
SetAttackCategory(190,1)
SetAttackAttackCategory(190,2)
SetAttackContestCategory(190,0)
SetAttackType(190,10)
SetAttackPriority(190,0)
SetAttackAccuracy(190,217)
SetAttackSpecialAttackDelegate(190, "ATTACKS_WATER_OCTAZOOKA_SPECIAL")
SetAttackHitAnimationDelegate(190,  "ATTACKS_WATER_OCTAZOOKA_HIT_ANIMATION")

function ATTACKS_WATER_OCTAZOOKA_SPECIAL()
    if Attacks_TryStatChange(50, "target", "Accuracy", -1) == true then
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_WATER_OCTAZOOKA_HIT_ANIMATION()
    AnimationSequenceBegin()
    if Attacks_Store == "1" then
        DoStatChanceAnimation(1, 0.0)
        Attacks_SetStore("0")
    end
    AnimationSequenceEnd()
end