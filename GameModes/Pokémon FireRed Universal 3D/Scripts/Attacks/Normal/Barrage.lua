SetAttackBaseDamage(140,15)
SetAttackMaxPP(140,20)
SetAttackCategory(140,0)
SetAttackContestCategory(140,0)
SetAttackType(140,0)
SetAttackPriority(140,0)
SetAttackAccuracy(140,217)
SetAttackHasHitEffect(140, false)
SetAttackPreAttackDelegate(140, "ATTACKS_NORMAL_BARRAGE_PRE_ATTACK")

function ATTACKS_NORMAL_BARRAGE_PRE_ATTACK()
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