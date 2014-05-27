SetAttackBaseDamage(105,0)
SetAttackMaxPP(105,10)
SetAttackCategory(105,2)
SetAttackContestCategory(105,1)
SetAttackType(105,0)
SetAttackPriority(105,0)
SetAttackAccuracy(105,-1)
SetAttackAttackCategory(105,1)
SetAttackIsHealingMove(105, true)
SetAttackHasHitEffect(105, false)
SetAttackSpecialAttackDelegate(105, "ATTACKS_NORMAL_RECOVER_SPECIAL")

function ATTACKS_NORMAL_RECOVER_SPECIAL()
    local restore = math.floor(Attacks_MyMaxHP / 2)
    if Attacks_MyMaxHP == Attacks_MyHP then
        Attacks_AddBattleStep("Message", "But it failed!")
    else
        if restore < 1 then
            restore = 1
        end
        Attacks_AddBattleStep("GainHP", Attacks_TargetString .. "|" .. tostring(restore))
        Attacks_AddBattleStep("Message", Attacks_MyName .. "'s~HP was restored.")
    end
end