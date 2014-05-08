SetAttackBaseDamage(78,0)
SetAttackMaxPP(78,30)
SetAttackCategory(78,2)
SetAttackAttackCategory(78,1)
SetAttackContestCategory(78,1)
SetAttackType(78,11)
SetAttackPriority(78,0)
SetAttackAccuracy(78,191)
SetAttackSpecialAttackDelegate(78, "ATTACKS_GRASS_STUN_SPORE_SPECIAL")

function ATTACKS_GRASS_STUN_SPORE_SPECIAL()
    Attacks_AddBattleStep("SpecialStatus", Attacks_TargetString .. "|paralyzed")
end