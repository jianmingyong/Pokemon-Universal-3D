SetAttackBaseDamage(162,1)
SetAttackMaxPP(162,10)
SetAttackCategory(162,0)
SetAttackContestCategory(162,0)
SetAttackType(162,0)
SetAttackPriority(162,0)
SetAttackAccuracy(162,230)
SetAttackPreAttackDelegate(162, "ATTACKS_NORMAL_SUPER_FANG_PRE_ATTACK")

function ATTACKS_NORMAL_SUPER_FANG_PRE_ATTACK()
    Attacks_SetBaseDamage(math.floor(Attacks_PrimaryTargetHP / 2))
end