SetAttackBaseDamage(188,90)
SetAttackMaxPP(188,10)
SetAttackCategory(188,1)
SetAttackContestCategory(188,0)
SetAttackType(188,3)
SetAttackPriority(188,0)
SetAttackAccuracy(188,255)
SetAttackSpecialAttackDelegate(188, "ATTACKS_POISON_SLUDGE_BOMB_SPECIAL")

function ATTACKS_POISON_SLUDGE_BOMB_SPECIAL()
    Attacks_TryToPoison(30, "target")
end