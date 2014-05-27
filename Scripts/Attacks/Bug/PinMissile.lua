SetAttackBaseDamage(42, 14)
SetAttackMaxPP(42, 20)
SetAttackCategory(42, 0)
SetAttackContestCategory(42, 3)
SetAttackAttackCategory(42, 0)
SetAttackType(42, 6)
SetAttackPriority(42, 0)
SetAttackHasHitEffect(42, false)
SetAttackPreAttackDelegate(42, "ATTACKS_BUG_PIN_MISSILE_PRE_ATTACK")
SetAttackAccuracy(42, 216)

function ATTACKS_BUG_PIN_MISSILE_PRE_ATTACK()
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