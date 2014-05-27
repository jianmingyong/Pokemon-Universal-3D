SetAttackBaseDamage(399,80)
SetAttackMaxPP(399,15)
SetAttackCategory(399,1)
SetAttackAttackCategory(399,2)
SetAttackContestCategory(399,3)
SetAttackType(399,16)
SetAttackPriority(399,0)
SetAttackAccuracy(399,255)
SetAttackSpecialAttackDelegate(399,"ATTACKS_DARK_DARK_PULSE_SPECIAL")

function ATTACKS_DARK_DARK_PULSE_SPECIAL()
    Attacks_TryToFlinch(20, "target")
end