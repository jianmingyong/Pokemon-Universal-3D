SetAttackBaseDamage(169, 0)
SetAttackMaxPP(169, 10)
SetAttackCategory(169, 2)
SetAttackContestCategory(169, 1)
SetAttackAttackCategory(169, 1)
SetAttackType(169, 6)
SetAttackPriority(169, 0)
SetAttackAccuracy(169, -1)
SetAttackSpecialAttackDelegate(169, "ATTACKS_BUG_SPIDER_WEB_SPECIAL")

function ATTACKS_BUG_SPIDER_WEB_SPECIAL()
    result = Attacks_TryAddVolitileStatus("target", "trapped")
    if result == true then
        Attacks_AddBattleStep("Message", Attacks_PrimaryTargetName .. " can no~longer escape!")
    elseif result == false then
        Attacks_AddBattleStep("Message", Attacks_PrimaryTargetName .. " is~already trapped!")
    end
end