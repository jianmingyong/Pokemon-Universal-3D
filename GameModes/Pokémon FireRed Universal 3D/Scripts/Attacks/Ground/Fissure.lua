SetAttackBaseDamage(90,1)
SetAttackMaxPP(90,5)
SetAttackCategory(90,0)
SetAttackContestCategory(90,0)
SetAttackType(90,4)
SetAttackPriority(90,0)
SetAttackAccuracy(90,76)
SetAttackPreAttackDelegate(90, "ATTACKS_GROUND_FISSURE_PRE_ATTACK")
SetAttackSpecialAttackDelegate(90, "ATTACKS_GROUND_FISSURE_SPECIAL")

function ATTACKS_GROUND_FISSURE_PRE_ATTACK()
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

function ATTACKS_GROUND_FISSURE_SPECIAL()
    local T = Attacks_TargetString
    if Attacks_TargetString == "1" then
        T = "0"    
    elseif Attacks_TargetString == "0" then
        T = "1"
    end
    Attacks_AddBattleStep("DrainHP", T .. "|" .. tostring(Attacks_PrimaryTargetHP))
    Attacks_AddBattleStep("Message", "It's a one-hit KO!")
end