SetAttackBaseDamage(246,60)
SetAttackMaxPP(246,5)
SetAttackCategory(246,1)
SetAttackContestCategory(246,0)
SetAttackType(246,5)
SetAttackPriority(246,0)
SetAttackAccuracy(246,255)
SetAttackSpecialAttackDelegate(246, "ATTACKS_ROCK_ANCIENTPOWER_SPECIAL")
SetAttackAttackingAnimationDelegate(246, "ATTACKS_ROCK_ANCIENTPOWER_ATTACKING_ANIMATION")

function ATTACKS_ROCK_ANCIENTPOWER_SPECIAL()
    local chance = math.random(0, 100)
    if chance <= 10 then
        local T = Attacks_TargetString
        if Attacks_TargetString == "1" then
            T = "0"    
        elseif Attacks_TargetString == "0" then
            T = "1"
        end
        Attacks_AddBattleStep("ChangeStat", T .. "|Attack|1|246")
        Attacks_AddBattleStep("ChangeStat", T .. "|Defense|1|246")
        Attacks_AddBattleStep("ChangeStat", T .. "|SpAttack|1|246")
        Attacks_AddBattleStep("ChangeStat", T .. "|SpDefense|1|246")
        Attacks_AddBattleStep("ChangeStat", T .. "|Speed|1|246")
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_ROCK_ANCIENTPOWER_ATTACKING_ANIMATION()
    if Attacks_Store == "1" then
        AnimationSequenceBegin()
            DoStatChanceAnimation(5, 0.0)
        AnimationSequenceEnd()
        Attacks_SetStore("0")
    end
end