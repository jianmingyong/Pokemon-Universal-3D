SetAttackBaseDamage(36,90)
SetAttackMaxPP(36,20)
SetAttackCategory(36,0)
SetAttackContestCategory(36,0)
SetAttackType(36,0)
SetAttackPriority(36,0)
SetAttackAccuracy(36,217)
SetAttackSpecialAttackDelegate(36, "ATTACKS_NORMAL_TAKE_DOWN_SPECIAL")

function ATTACKS_NORMAL_TAKE_DOWN_SPECIAL()
    local recoil = math.ceil((Attacks_DamageDealt * 25) / 100)
    Attacks_AddBattleStep("DrainHP", Attacks_TargetString .. "|" .. tostring(recoil))
    Attacks_AddBattleStep("Message", Attacks_MyName .. " is damaged~by recoil!")
end