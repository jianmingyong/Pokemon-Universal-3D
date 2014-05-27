SetAttackBaseDamage(38,120)
SetAttackMaxPP(38,15)
SetAttackCategory(38,0)
SetAttackContestCategory(38,0)
SetAttackType(38,0)
SetAttackPriority(38,0)
SetAttackAccuracy(38,255)
SetAttackSpecialAttackDelegate(38, "ATTACKS_NORMAL_DOUBLE_EDGE_SPECIAL")

function ATTACKS_NORMAL_DOUBLE_EDGE_SPECIAL()
    local recoil = math.ceil((Attacks_DamageDealt * 25) / 100)
    Attacks_AddBattleStep("DrainHP", Attacks_TargetString .. "|" .. tostring(recoil))
    Attacks_AddBattleStep("Message", Attacks_MyName .. " is damaged~by recoil!")
end