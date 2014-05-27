SetAttackBaseDamage(12,1)
SetAttackMaxPP(12,5)
SetAttackCategory(12,0)
SetAttackAttackCategory(12,1)
SetAttackContestCategory(12,3)
SetAttackType(12,0)
SetAttackPriority(12,0)
SetAttackAccuracy(12,76)
SetAttackPreAttackDelegate(12, "ATTACKS_NORMAL_GUILLOTINE_PRE_ATTACK")
SetAttackSpecialAttackDelegate(12, "ATTACKS_NORMAL_GUILLOTINE_SPECIAL")

function ATTACKS_NORMAL_GUILLOTINE_PRE_ATTACK()
    if Attacks_MyLevel >= Attacks_PrimaryTargetLevel then
        local acc = math.floor((Attacks_MyLevel - Attacks_PrimaryTargetLevel) + 30)
        local chance = math.random(0,100)
        if chance <= acc then
            Attacks_SetAccuracy(-1)
        else
            Attacks_SetAccuracy(0)
        end
    else
        Attacks_SetAccuracy(0)
    end
end

function ATTACKS_NORMAL_GUILLOTINE_SPECIAL()
    local T = Attacks_TargetString
    if Attacks_TargetString == "1" then
        T = "0"    
    elseif Attacks_TargetString == "0" then
        T = "1"
    end
    Attacks_AddBattleStep("DrainHP", T .. "|" .. tostring(Attacks_PrimaryTargetHP))
    Attacks_AddBattleStep("Message", "It's a one-hit KO!")
end