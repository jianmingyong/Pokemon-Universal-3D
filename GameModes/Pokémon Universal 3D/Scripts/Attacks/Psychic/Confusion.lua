SetAttackBaseDamage(93,50)
SetAttackMaxPP(93,25)
SetAttackCategory(93,1)
SetAttackContestCategory(93,1)
SetAttackType(93,13)
SetAttackPriority(93,0)
SetAttackAccuracy(93,255)
SetAttackSpecialAttackDelegate(93, "ATTACKS_PSYCHIC_CONFUSION_SPECIAL")

function ATTACKS_PSYCHIC_CONFUSION_SPECIAL()
    Attacks_TryToConfuse(10, "target")
end