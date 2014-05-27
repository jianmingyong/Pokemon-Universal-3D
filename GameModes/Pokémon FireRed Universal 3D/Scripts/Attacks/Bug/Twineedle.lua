SetAttackBaseDamage(41, 25)
SetAttackMaxPP(41, 20)
SetAttackCategory(41, 0)
SetAttackContestCategory(41, 3)
SetAttackAttackCategory(41, 2)
SetAttackType(41, 6)
SetAttackPriority(41, 0)
SetAttackAccuracy(41,255)
SetAttackTimesToAttack(41,2)
SetAttackSpecialAttackDelegate(41, "ATTACKS_BUG_TWINEEDLE_SPECIAL")

function ATTACKS_BUG_TWINEEDLE_SPECIAL()
    local result = math.random(0,100)
    if result <= 20 then
        Attacks_AddBattleStep("SpecialStatus", Attacks_TargetString .. "|poisoned")
    end
end