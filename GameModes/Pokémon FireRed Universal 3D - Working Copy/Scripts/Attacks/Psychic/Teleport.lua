SetAttackBaseDamage(100,0)
SetAttackMaxPP(100,20)
SetAttackCategory(100,2)
SetAttackContestCategory(100,3)
SetAttackType(100,13)
SetAttackPriority(100,0)
SetAttackAccuracy(100,-1)
SetAttackHasHitEffect(100, false)
SetAttackAttackCategory(100, 1)
SetAttackPreAttackDelegate(100, "ATTACKS_PSYCHIC_TELEPORT_PRE_ATTACK")
SetAttackSpecialAttackDelegate(100, "ATTACKS_PSYCHIC_TELEPORT_SPECIAL")
--SetAttackAttackingAnimationDelegate(100, "ATTACKS_PSYCHIC_TELEPORT_ATTACKING_ANIMATION")

function ATTACKS_PSYCHIC_TELEPORT_PRE_ATTACK()
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

function ATTACKS_PSYCHIC_TELEPORT_SPECIAL()
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

--for later, add attacking animation of pokemon teleporting
--function ATTACKS_PSYCHIC_TELEPORT_ATTACKING_ANIMATION()
--    if Attacks_Store == "0" then
--    elseif Attacks_Store == "1" then
--    elseif Attacks_Store == "2" then
--    end
--end