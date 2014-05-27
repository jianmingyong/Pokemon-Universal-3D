SetAttackBaseDamage(149,1)
SetAttackMaxPP(149,15)
SetAttackCategory(149,1)
SetAttackContestCategory(149,1)
SetAttackType(149,13)
SetAttackPriority(149,0)
SetAttackAccuracy(149,204)
SetAttackPreAttackDelegate(149, "ATTACKS_PSYCHIC_PSYWAVE_PRE_ATTACK")

function ATTACKS_PSYCHIC_PSYWAVE_PRE_ATTACK()
    local power = math.floor((math.random(1,10) + 5) * (Attacks_MyLevel / 10))
    Attacks_SetBaseDamage(power)
end