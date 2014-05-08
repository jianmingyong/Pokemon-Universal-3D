SetAttackBaseDamage(175,1)
SetAttackMaxPP(175,15)
SetAttackCategory(175,0)
SetAttackContestCategory(175,4)
SetAttackType(175,0)
SetAttackPriority(175,0)
SetAttackAccuracy(175,255)
SetAttackPreAttackDelegate(175, "ATTACKS_NORMAL_FLAIL_PRE_ATTACK")

function ATTACKS_NORMAL_FLAIL_PRE_ATTACK()
    local healthdiffpercentage = (Attacks_MyHP / Attacks_MyMaxHP) * 100
    if healthdiffpercentage  < 5.0 then
        Attacks_SetBaseDamage(200)
    elseif healthdiffpercentage  >= 5 and healthdiffpercentage  < 11 then
        Attacks_SetBaseDamage(150)
    elseif healthdiffpercentage  >= 11 and healthdiffpercentage  < 21 then
        Attacks_SetBaseDamage(100)
    elseif healthdiffpercentage  >= 21 and healthdiffpercentage  < 36 then
        Attacks_SetBaseDamage(80)
    elseif healthdiffpercentage  >= 36 and healthdiffpercentage  < 71 then
        Attacks_SetBaseDamage(40)
    else
        Attacks_SetBaseDamage(20)
    end
end