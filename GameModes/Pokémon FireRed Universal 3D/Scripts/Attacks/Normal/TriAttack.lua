SetAttackBaseDamage(161,80)
SetAttackMaxPP(161,10)
SetAttackCategory(161,1)
SetAttackContestCategory(161,2)
SetAttackType(161,0)
SetAttackPriority(161,0)
SetAttackAccuracy(161,255)
SetAttackAttackCategory(161,2)
SetAttackSpecialAttackDelegate(161, "ATTACKS_NORMAL_TRI_ATTACK_SPECIAL")

function ATTACKS_NORMAL_TRI_ATTACK_SPECIAL()
    local chance = math.random(0,100)
    if chance <= 7 then
        Attacks_AddBattleStep("SpecialStatus", Attacks_TargetString .. "|paralyzed")
    elseif chance > 7 and chance <= 14 then
        Attacks_AddBattleStep("SpecialStatus", Attacks_TargetString .. "|frozen")
    elseif chance > 14 and chance <= 21 then
        Attacks_AddBattleStep("SpecialStatus", Attacks_TargetString .. "|burned")
    end
end