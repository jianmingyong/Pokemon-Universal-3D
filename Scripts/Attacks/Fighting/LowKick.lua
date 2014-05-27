SetAttackBaseDamage(67, 0)
SetAttackMaxPP(67, 20)
SetAttackCategory(67, Attacks_GetCategoryIndexByName("physical"))
SetAttackContestCategory(67, Attacks_GetContestCategoryIndexByName("tough"))
SetAttackAttackCategory(67, Attacks_GetAttackCategoryIndexByName("damage"))
SetAttackType(67, Attacks_GetTypeIndexByName("fighting"))
SetAttackPriority(67, 0)
SetAttackAccuracy(67,255)
SetAttackPreAttackDelegate(67, "ATTACKS_FIGHTING_LOW_KICK_PRE_ATTACK")

function ATTACKS_FIGHTING_LOW_KICK_PRE_ATTACK()
    if Attacks_PrimaryTargetWeight  < 10.0 then
        Attacks_SetBaseDamage(20)
    elseif Attacks_PrimaryTargetWeight  >= 10.0 and Attacks_PrimaryTargetWeight  < 25.0 then
        Attacks_SetBaseDamage(40)
    elseif Attacks_PrimaryTargetWeight  >= 25.0 and Attacks_PrimaryTargetWeight  < 50.0 then
        Attacks_SetBaseDamage(60)
    elseif Attacks_PrimaryTargetWeight  >= 50.0 and Attacks_PrimaryTargetWeight  < 100.0 then
        Attacks_SetBaseDamage(80)
    elseif Attacks_PrimaryTargetWeight  >= 100.0 and Attacks_PrimaryTargetWeight  < 200.0 then
        Attacks_SetBaseDamage(100)
    else
        Attacks_SetBaseDamage(120)
    end
end