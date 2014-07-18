SetAttackBaseDamage(4,18)
SetAttackMaxPP(4,15)
SetAttackCategory(4,0)
SetAttackContestCategory(4,0)
SetAttackType(4,0)
SetAttackPriority(4,0)
SetAttackAccuracy(4,217)
SetAttackHasHitEffect(4, false)
SetAttackPreAttackDelegate(4, "ATTACKS_NORMAL_COMET_PUNCH_PRE_ATTACK")

function ATTACKS_NORMAL_COMET_PUNCH_PRE_ATTACK()
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