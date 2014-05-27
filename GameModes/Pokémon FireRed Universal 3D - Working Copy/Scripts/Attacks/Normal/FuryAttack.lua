SetAttackBaseDamage(31,15)
SetAttackMaxPP(31,20)
SetAttackCategory(31,0)
SetAttackContestCategory(31,3)
SetAttackType(31,0)
SetAttackPriority(31,0)
SetAttackAccuracy(31,217)
SetAttackHasHitEffect(31, false)
SetAttackPreAttackDelegate(31, "ATTACKS_NORMAL_FURY_ATTACK_PRE_ATTACK")

function ATTACKS_NORMAL_FURY_ATTACK_PRE_ATTACK()
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