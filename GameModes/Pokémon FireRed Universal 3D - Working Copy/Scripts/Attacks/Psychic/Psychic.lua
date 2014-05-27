SetAttackBaseDamage(94,90)
SetAttackMaxPP(94,10)
SetAttackCategory(94,1)
SetAttackContestCategory(94,1)
SetAttackType(94,13)
SetAttackPriority(94,0)
SetAttackAccuracy(94,255)
SetAttackSpecialAttackDelegate(94, "ATTACKS_PSYCHIC_PSYCHIC_SPECIAL")
SetAttackHitAnimationDelegate(94, "ATTACKS_PSYCHIC_PSYCHIC_HIT_ANIMATION")

function ATTACKS_PSYCHIC_PSYCHIC_SPECIAL()
    if Attacks_TryStatChange(10, "target", "SpDefense", -1) == true then
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_PSYCHIC_PSYCHIC_HIT_ANIMATION()
    if Attacks_Store == "1" then
        AnimationSequenceBegin()
            DoStatChanceAnimation(-1, 0.0)
        AnimationSequenceEnd()
        Attacks_SetStore("0")
    end
end