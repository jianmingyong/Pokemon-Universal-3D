SetAttackBaseDamage(18,0)
SetAttackMaxPP(18,20)
SetAttackCategory(18,2)
SetAttackContestCategory(18,1)
SetAttackType(18,0)
SetAttackPriority(18,-6)
SetAttackAccuracy(18,255)
SetAttackHasHitEffect(100, false)
SetAttackAttackCategory(100, 1)
SetAttackPreAttackDelegate(100, "ATTACKS_NORMAL_WHIRLWIND_PRE_ATTACK")
SetAttackSpecialAttackDelegate(100, "ATTACKS_NORMAL_WHIRLWIND_SPECIAL")

function ATTACKS_NORMAL_WHIRLWIND_PRE_ATTACK()
    if Attacks_IsTrainerBattle == false then
        if Attacks_TargetString == "0" then
            Attacks_SetStore("1")
        elseif Attacks_TargetString == "1" then
            Attacks_SetStore("2")
        end
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_NORMAL_WHIRLWIND_SPECIAL()
     if Attacks_Store == "0" then
        Attacks_AddBattleStep("Message", "But it failed...")
    elseif Attacks_Store == "1" then
        Attacks_AddBattleStep("Message", "The wild " .. Attacks_MyName .. "~fled from battle.")
        Attacks_AddBattleStep("EndBattle", "")
    elseif Attacks_Store == "2" then
        Attacks_AddBattleStep("Message", Attacks_MyName .. "~fled from battle.")
        Attacks_AddBattleStep("EndBattle", "")
    end
end