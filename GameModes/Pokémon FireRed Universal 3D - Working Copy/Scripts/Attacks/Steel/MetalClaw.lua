SetAttackBaseDamage(232,50)
SetAttackMaxPP(232,35)
SetAttackCategory(232,0)
SetAttackContestCategory(232,3)
SetAttackType(232,8)
SetAttackPriority(232,0)
SetAttackAccuracy(232,242)
SetAttackAttackCategory(232,2)
SetAttackSpecialAttackDelegate(211, "ATTACKS_STEEL_METAL_CLAW_SPECIAL")
SetAttackAttackingAnimationDelegate(211, "ATTACKS_STEEL_METAL_CLAW_ATTACKING_ANIMATION")

function ATTACKS_STEEL_METAL_CLAW_SPECIAL()
    local chance = math.random(0, 100)
    if chance <= 10 then
        local T = Attacks_TargetString
        if Attacks_TargetString == "1" then
            T = "0"    
        elseif Attacks_TargetString == "0" then
            T = "1"
        end
        Attacks_AddBattleStep("ChangeStat", T .. "|Attack|1|211")
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_STEEL_METAL_CLAW_ATTACKING_ANIMATION()
    if Attacks_Store == "1" then
        AnimationSequenceBegin()
            DoStatChanceAnimation(1, 0.0)
        AnimationSequenceEnd()
        Attacks_SetStore("0")
    end
end