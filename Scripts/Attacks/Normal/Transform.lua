SetAttackBaseDamage(144,0)
SetAttackMaxPP(144,10)
SetAttackCategory(144,2)
SetAttackAttackCategory(144,1)
SetAttackContestCategory(144,1)
SetAttackType(144,0)
SetAttackPriority(144,0)
SetAttackAccuracy(144,-1)
SetAttackHasHitEffect(144, false)
SetAttackSpecialAttackDelegate(144, "ATTACKS_NORMAL_TRANSFORM_SPECIAL")

function ATTACKS_NORMAL_TRANSFORM_SPECIAL()
    local T = Attacks_GetTargetAnimationName("target")
    Attacks_SetTargetAnimationName("user", T)
    Attacks_SetTargetStats("user", Attacks_GetTargetStatsByName("target", "attack"), Attacks_GetTargetStatsByName("target", "defense"), Attacks_GetTargetStatsByName("target", "spattack"), Attacks_GetTargetStatsByName("target", "spdefense"), Attacks_GetTargetStatsByName("target", "speed"))
    Attacks_SetTargetMoves("user", Attacks_GetTargetMovesByIndex("target", 0), Attacks_GetTargetMovesByIndex("target", 1), Attacks_GetTargetMovesByIndex("target", 2), Attacks_GetTargetMovesByIndex("target", 3))
    if Attacks_IsTrainerBattle == false then
        if Attacks_TargetString == "0" then
            Attacks_AddBattleStep("Message", Attacks_MyName .. " transformed~into the wild " .. T)
        else
            Attacks_AddBattleStep("Message", "The wild " .. Attacks_MyName .. " transformed~into your " .. T)
        end
    else
        if Attacks_TargetString == "0" then
            Attacks_AddBattleStep("Message", "The opponent's " .. Attacks_MyName .. " transformed~into your " .. T)
        else
            Attacks_AddBattleStep("Message", Attacks_MyName .. " transformed~into the opponent's " .. T)
        end
    end
end