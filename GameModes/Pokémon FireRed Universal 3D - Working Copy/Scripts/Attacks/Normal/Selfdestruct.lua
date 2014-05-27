SetAttackBaseDamage(120,200)
SetAttackMaxPP(120,5)
SetAttackCategory(120,0)
SetAttackContestCategory(120,2)
SetAttackType(120,0)
SetAttackPriority(120,0)
SetAttackAccuracy(120,255)
SetAttackAttackCategory(120,1)
SetAttackSpecialAttackDelegate(120, "ATTACKS_NORMAL_SELF_DESTRUCT_SPECIAL")

function ATTACKS_NORMAL_SELF_DESTRUCT_SPECIAL()
    Attacks_AddBattleStep("DrainHP", Attacks_TargetString .. "|" .. tostring(Attacks_MyHP))
end