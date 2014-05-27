SetAttackBaseDamage(150,0)
SetAttackMaxPP(150,40)
SetAttackCategory(150,2)
SetAttackAttackCategory(150,1)
SetAttackContestCategory(150,4)
SetAttackType(150,0)
SetAttackPriority(150,0)
SetAttackAccuracy(150,-1)
SetAttackSpecialAttackDelegate(150, "ATTACKS_NORMAL_SPLASH_SPECIAL")

function ATTACKS_NORMAL_SPLASH_SPECIAL()
    Attacks_AddBattleStep("Message", "But nothing happened!")
end