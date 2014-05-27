SetAttackBaseDamage(131,20)
SetAttackMaxPP(131,15)
SetAttackCategory(131,0)
SetAttackContestCategory(131,3)
SetAttackType(131,0)
SetAttackPriority(131,0)
SetAttackAccuracy(131,255)
SetAttackHasHitEffect(131, false)
SetAttackPreAttackDelegate(131, "ATTACKS_NORMAL_SPIKE_CANNON_PRE_ATTACK")

function ATTACKS_NORMAL_SPIKE_CANNON_PRE_ATTACK()
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