SetAttackBaseDamage(211,70)
SetAttackMaxPP(211,25)
SetAttackCategory(211,0)
SetAttackContestCategory(211,3)
SetAttackType(211,8)
SetAttackPriority(211,0)
SetAttackAccuracy(211,230)
SetAttackSpecialAttackDelegate(211, "ATTACKS_STEEL_STEEL_WING_SPECIAL")
SetAttackAttackingAnimationDelegate(211, "ATTACKS_STEEL_STEEL_WING_ATTACKING_ANIMATION")

function ATTACKS_STEEL_STEEL_WING_SPECIAL()
    local chance = math.random(0, 100)
    if chance <= 10 then
        local T = Attacks_TargetString
        if Attacks_TargetString == "1" then
            T = "0"    
        elseif Attacks_TargetString == "0" then
            T = "1"
        end
        Attacks_AddBattleStep("ChangeStat", T .. "|Defense|1|211")
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_STEEL_STEEL_WING_ATTACKING_ANIMATION()
    if Attacks_Store == "1" then
        AnimationSequenceBegin()
            DoStatChanceAnimation(1, 0.0)
        AnimationSequenceEnd()
        Attacks_SetStore("0")
    end
end