SetAttackBaseDamage(101,1)
SetAttackMaxPP(101,15)
SetAttackCategory(101,1)
SetAttackContestCategory(101,1)
SetAttackType(101,7)
SetAttackPriority(101,0)
SetAttackAccuracy(101,255)
SetAttackPreAttackDelegate(101, "ATTACKS_GHOST_NIGHT_SHADE_PRE_ATTACK")

function ATTACKS_GHOST_NIGHT_SHADE_PRE_ATTACK()
    Attacks_SetAbsoluteDamage(Attacks_MyLevel)
end