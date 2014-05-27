SetAttackBaseDamage(239, 40)
SetAttackMaxPP(239, 20)
SetAttackCategory(239, 1)
SetAttackContestCategory(239, 3)
SetAttackAttackCategory(239, 2)
SetAttackType(239, 15)
SetAttackPriority(239, 0)
SetAttackAccuracy(239, 255)
SetAttackSpecialAttackDelegate(239, "ATTACKS_DRAGON_TWISTER_SPECIAL")

function ATTACKS_DRAGON_TWISTER_SPECIAL()
    local chance =  math.random(0, 100)
    if chance <= 20 then
        Attacks_TryAddVolitileStatus("target", "flinch")
    end
end