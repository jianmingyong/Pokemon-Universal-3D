SetAttackBaseDamage(179,1)
SetAttackMaxPP(179,15)
SetAttackCategory(179,0)
SetAttackContestCategory(179,3)
SetAttackType(179,1)
SetAttackPriority(179,0)
SetAttackAccuracy(179,255)
SetAttackPreAttackDelegate(179, "ATTACKS_FIGHTING_REVERSAL_PRE_ATTACK")

function ATTACKS_FIGHTING_REVERSAL_PRE_ATTACK()
    local healthdiffpercentage = (Attacks_MyHP / Attacks_PrimaryTargetHP) * 100
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