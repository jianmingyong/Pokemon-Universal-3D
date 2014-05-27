SetAttackBaseDamage(222,1)
SetAttackMaxPP(222,30)
SetAttackCategory(222,0)
SetAttackCategory(222,1)
SetAttackContestCategory(222,0)
SetAttackType(222,4)
SetAttackPriority(222,0)
SetAttackAccuracy(222,255)
SetAttackPreAttackDelegate(222, "ATTACKS_GROUND_MAGNITUDE_PRE_ATTACK")
SetAttackSpecialAttackDelegate(222, "ATTACKS_GROUND_MAGNITUDE_SPECIAL")

function ATTACKS_GROUND_MAGNITUDE_PRE_ATTACK()
    local chance = math.random(0,100)
    if chance < 5 then
        Attacks_SetBaseDamage(10)
        Attacks_SetStore("4")
    elseif chance >= 5 and chance < 15 then
        Attacks_SetBaseDamage(30)
        Attacks_SetStore("5")
    elseif chance >= 15 and chance < 35 then
        Attacks_SetBaseDamage(50)
        Attacks_SetStore("6")
    elseif chance >= 35 and chance < 65 then
        Attacks_SetBaseDamage(70)
        Attacks_SetStore("7")
    elseif chance >= 65 and chance < 85 then
        Attacks_SetBaseDamage(90)
        Attacks_SetStore("8")
    elseif chance >= 85 and chance < 95 then
        Attacks_SetBaseDamage(110)
        Attacks_SetStore("9")
    else
        Attacks_SetBaseDamage(150)
        Attacks_SetStore("10")
    end
end

function ATTACKS_GROUND_MAGNITUDE_SPECIAL()
    Attacks_AddBattleStep("Message", "Magnitude " .. Attacks_Store .. "!")
end