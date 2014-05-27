SetAttackBaseDamage(208,0)
SetAttackMaxPP(208,10)
SetAttackCategory(208,2)
SetAttackAttackCategory(208,1)
SetAttackIsHealingMove(208, true)
SetAttackContestCategory(208,4)
SetAttackType(208,0)
SetAttackPriority(208,0)
SetAttackHasHitEffect(208, false)
SetAttackAccuracy(208,-1)
SetAttackSpecialAttackDelegate(208, "ATTACKS_NORMAL_MILK_DRINK_SPECIAL")

function ATTACKS_NORMAL_MILK_DRINK_SPECIAL()
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