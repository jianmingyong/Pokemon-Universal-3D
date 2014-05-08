SetAttackBaseDamage(122,20)
SetAttackMaxPP(122,30)
SetAttackCategory(122,0)
SetAttackContestCategory(122,0)
SetAttackType(122,7)
SetAttackPriority(122,0)
SetAttackAccuracy(122,255)
SetAttackSpecialAttackDelegate(122, "ATTACKS_GHOST_LICK_SPECIAL")

function ATTACKS_GHOST_LICK_SPECIAL()
    Attacks_TryToParalyze(30, "target")
end