SetAttackBaseDamage(135,0)
SetAttackMaxPP(135,10)
SetAttackCategory(135,2)
SetAttackContestCategory(135,2)
SetAttackType(135,0)
SetAttackPriority(135,0)
SetAttackAccuracy(135,-1)
SetAttackAttackCategory(135,1)
SetAttackIsHealingMove(135, true)
SetAttackHasHitEffect(135, false)
SetAttackSpecialAttackDelegate(135, "ATTACKS_NORMAL_SOFTBOILED_SPECIAL")

function ATTACKS_NORMAL_SOFTBOILED_SPECIAL()
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