SetAttackBaseDamage(46,0)
SetAttackMaxPP(46,20)
SetAttackCategory(46,2)
SetAttackContestCategory(46,3)
SetAttackType(46,0)
SetAttackPriority(46,-6)
SetAttackAccuracy(46,255)
SetAttackHasHitEffect(46, false)
SetAttackAttackCategory(46, 1)
SetAttackPreAttackDelegate(46, "ATTACKS_NORMAL_ROAR_PRE_ATTACK")
SetAttackSpecialAttackDelegate(46, "ATTACKS_NORMAL_ROAR_SPECIAL")
--SetAttackAttackingAnimationDelegate(100, "ATTACKS_PSYCHIC_TELEPORT_ATTACKING_ANIMATION")

function ATTACKS_NORMAL_ROAR_PRE_ATTACK()
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

function ATTACKS_NORMAL_ROAR_SPECIAL()
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