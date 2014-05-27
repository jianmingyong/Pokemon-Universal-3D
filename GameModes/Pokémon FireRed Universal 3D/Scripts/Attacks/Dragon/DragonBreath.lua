SetAttackBaseDamage(225, 60)
SetAttackMaxPP(225, 20)
SetAttackCategory(225, 1)
SetAttackContestCategory(225, 3)
SetAttackAttackCategory(225, 2)
SetAttackType(225, 15)
SetAttackPriority(225, 0)
SetAttackAccuracy(225, 255)
SetAttackSpecialAttackDelegate(225, "ATTACKS_DRAGON_DRAGON_BREATH_SPECIAL")

function ATTACKS_DRAGON_DRAGON_BREATH_SPECIAL()
    local chance = math.random(0, 100)
    if chance <= 30 then
        Attacks_AddBattleStep("SpecialStatus", Attacks_TargetString .. "|paralyzed")
    end
end