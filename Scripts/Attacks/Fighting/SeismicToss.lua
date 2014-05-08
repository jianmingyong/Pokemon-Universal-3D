SetAttackBaseDamage(69,1)
SetAttackMaxPP(69,20)
SetAttackCategory(69,0)
SetAttackContestCategory(69,0)
SetAttackType(69,1)
SetAttackPriority(69,0)
SetAttackAccuracy(69,255)
SetAttackPreAttackDelegate(69, "ATTACKS_FIGHTING_SEISMIC_TOSS_PRE_ATTACK")

function ATTACKS_FIGHTING_SEISMIC_TOSS_PRE_ATTACK()
    Attacks_SetAbsoluteDamage(Attacks_MyLevel)
end