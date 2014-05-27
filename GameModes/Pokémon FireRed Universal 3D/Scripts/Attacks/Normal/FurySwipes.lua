SetAttackBaseDamage(154,18)
SetAttackMaxPP(154,15)
SetAttackCategory(154,0)
SetAttackContestCategory(154,0)
SetAttackType(154,0)
SetAttackPriority(154,0)
SetAttackAccuracy(154,204)
SetAttackHasHitEffect(154, false)
SetAttackPreAttackDelegate(154, "ATTACKS_NORMAL_FURY_SWIPES_PRE_ATTACK")

function ATTACKS_NORMAL_FURY_SWIPES_PRE_ATTACK()
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