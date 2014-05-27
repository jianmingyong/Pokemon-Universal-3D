SetAttackBaseDamage(231,100)
SetAttackMaxPP(231,15)
SetAttackCategory(231,0)
SetAttackContestCategory(231,3)
SetAttackType(231,8)
SetAttackPriority(231,0)
SetAttackAccuracy(231,191)
SetAttackSpecialAttackDelegate(231, "ATTACKS_STEEL_IRON_TAIL_SPECIAL")
SetAttackHitAnimationDelegate(231, "ATTACKS_STEEL_IRON_TAIL_HIT_ANIMATION")

function ATTACKS_STEEL_IRON_TAIL_SPECIAL()
    local chance = math.random(0, 100)
    if chance <= 10 then
        Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Defense|-1|231")
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_STEEL_IRON_TAIL_HIT_ANIMATION()
    if Attacks_Store == "1" then
        AnimationSequenceBegin()
            DoStatChanceAnimation(-1, 0.0)
        AnimationSequenceEnd()
        Attacks_SetStore("0")
    end
end