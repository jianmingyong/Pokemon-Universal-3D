SetAttackBaseDamage(153,250)
SetAttackMaxPP(153,5)
SetAttackCategory(153,0)
SetAttackContestCategory(153,2)
SetAttackType(153,0)
SetAttackPriority(153,0)
SetAttackAccuracy(153,255)
SetAttackAttackCategory(153,1)
SetAttackSpecialAttackDelegate(153, "ATTACKS_NORMAL_EXPLOSION_SPECIAL")

function ATTACKS_NORMAL_EXPLOSION_SPECIAL()
    Attacks_AddBattleStep("DrainHP", Attacks_TargetString .. "|" .. tostring(Attacks_MyHP))
end