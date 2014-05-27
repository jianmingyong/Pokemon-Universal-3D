SetAttackBaseDamage(242, 80)
SetAttackMaxPP(242, 15)
SetAttackCategory(242, 0)
SetAttackContestCategory(242, 0)
SetAttackAttackCategory(242, 2)
SetAttackType(242, 16)
SetAttackPriority(242, 0)
SetAttackAccuracy(242,255)
SetAttackSpecialAttackDelegate(242, "ATTACKS_DARK_CRUNCH_SPECIAL")
SetAttackHitAnimationDelegate(242, "ATTACKS_DARK_CRUNCH_HIT_ANIMATION")

function ATTACKS_DARK_CRUNCH_SPECIAL()
    local chance = math.random(0, 100)
    if chance <= 20 then
        Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Defense|-1|242")
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_DARK_CRUNCH_HIT_ANIMATION()
    if Attacks_Store == "1" then
        AnimationSequenceBegin()
            DoStatChanceAnimation(-1, 0.0)
        AnimationSequenceEnd()
        Attacks_SetStore("0")
    end
end