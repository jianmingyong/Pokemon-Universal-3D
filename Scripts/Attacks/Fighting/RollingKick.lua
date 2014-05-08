SetAttackBaseDamage(27,60)
SetAttackMaxPP(27,15)
SetAttackCategory(27,0)
SetAttackContestCategory(27,3)
SetAttackType(27,1)
SetAttackPriority(27,0)
SetAttackAccuracy(27,217)
SetAttackSpecialAttackDelegate(27, "ATTACKS_FIGHTING_ROLLING_KICK_SPECIAL")

function ATTACKS_FIGHTING_ROLLING_KICK_SPECIAL()
    local chance = math.random(0, 100)
    if chance <= 30 then
        Attacks_TryAddVolitileStatus("target", "flinch")
    end
end