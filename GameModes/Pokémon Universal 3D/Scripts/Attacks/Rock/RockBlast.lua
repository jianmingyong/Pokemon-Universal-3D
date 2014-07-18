SetAttackBaseDamage(350,25)
SetAttackMaxPP(350,10)
SetAttackCategory(350,0)
SetAttackContestCategory(350,0)
SetAttackType(350,5)
SetAttackPriority(350,0)
SetAttackAccuracy(350,230)
SetAttackPreAttackDelegate(350, "ATTACKS_ROCK_ROCK_BLAST_PRE_ATTACK")

function ATTACKS_ROCK_ROCK_BLAST_PRE_ATTACK()
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