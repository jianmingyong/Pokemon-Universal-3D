SetAttackBaseDamage(3,15)
SetAttackMaxPP(3,10)
SetAttackCategory(3,0)
SetAttackContestCategory(3,0)
SetAttackAttackCategory(210,0)
SetAttackType(3,0)
SetAttackPriority(3,0)
SetAttackAccuracy(3,217)
SetAttackHasHitEffect(3, false)
SetAttackPreAttackDelegate(3, "ATTACKS_NORMAL_DOUBLE_SLAP_PRE_ATTACK")

function ATTACKS_NORMAL_DOUBLE_SLAP_PRE_ATTACK()
    local chance = math.random(0, 1000.0) / 10
    local times = 0
    if chance <= 37.5 then
        times = 2
    elseif chance > 37.5 and chance <= 75.0 then
        times = 3
    elseif chance > 75.0 and chance <= 87.5 then
        times = 4
    elseif chance > 87.5 then
        times = 5
    end
    Attacks_SetTimesToAttack(times)
end