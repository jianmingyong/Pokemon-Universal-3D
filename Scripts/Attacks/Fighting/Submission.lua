SetAttackBaseDamage(66,80)
SetAttackMaxPP(66,25)
SetAttackCategory(66,0)
SetAttackContestCategory(66,3)
SetAttackType(66,1)
SetAttackPriority(66,0)
SetAttackAccuracy(66,204)
SetAttackSpecialAttackDelegate(66, "ATTACKS_FIGHTING_SUBMISSION_SPECIAL")

function ATTACKS_FIGHTING_SUBMISSION_SPECIAL()
    local recoil = math.ceil((Attacks_DamageDealt * 25) / 100)
    Attacks_AddBattleStep("DrainHP", Attacks_TargetString .. "|" .. tostring(recoil))
    Attacks_AddBattleStep("Message", Attacks_MyName .. " is damaged~by recoil!")
end