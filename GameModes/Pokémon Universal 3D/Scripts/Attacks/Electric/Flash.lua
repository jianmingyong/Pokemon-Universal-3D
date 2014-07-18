SetAttackBaseDamage(148, 35)
SetAttackMaxPP(148, 20)
SetAttackCategory(148, 1)
SetAttackContestCategory(148, 2)
SetAttackAttackCategory(148, 2)
SetAttackType(148, 12)
SetAttackIsHMMove(148, true)
SetAttackPriority(148, 0)
SetAttackAccuracy(148, 255)
SetAttackSpecialAttackDelegate(148, "ATTACKS_ELECTRIC_FLASH_SPECIAL")
SetAttackHitAnimationDelegate(148, "ATTACKS_ELECTRIC_FLASH_HIT_ANIMATION")

function ATTACKS_ELECTRIC_FLASH_SPECIAL()
    local chance = math.random(0,100)
    if chance <= 15 then
        Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Accuracy|-1|148")
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_ELECTRIC_FLASH_HIT_ANIMATION()
    if Attacks_Store == "1" then
        AnimationSequenceBegin()
            DoStatChanceAnimation(-1, 0.0)
        AnimationSequenceEnd()
        Attacks_SetStore("0")
    end
end