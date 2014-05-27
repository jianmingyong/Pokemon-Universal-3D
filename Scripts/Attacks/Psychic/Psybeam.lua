SetAttackBaseDamage(60,65)
SetAttackMaxPP(60,20)
SetAttackCategory(60,1)
SetAttackContestCategory(60,2)
SetAttackType(60,13)
SetAttackPriority(60,0)
SetAttackAccuracy(60,255)
SetAttackSpecialAttackDelegate(60, "ATTACKS_PSYCHIC_PSYBEAM_SPECIAL")

function ATTACKS_PSYCHIC_PSYBEAM_SPECIAL()
    Attacks_TryToConfuse(10, "target")
end