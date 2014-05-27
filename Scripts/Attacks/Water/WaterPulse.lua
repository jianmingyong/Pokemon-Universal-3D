SetAttackBaseDamage(352,60)
SetAttackMaxPP(352,20)
SetAttackCategory(352,1)
SetAttackContestCategory(352,2)
SetAttackType(352,10)
SetAttackPriority(352,0)
SetAttackAccuracy(352,255)
SetAttackSpecialAttackDelegate(352, "ATTACKS_WATER_WATER_PULSE_SPECIAL")

function ATTACKS_WATER_WATER_PULSE_SPECIAL()
    Attacks_TryToConfuse(20, "target")
end