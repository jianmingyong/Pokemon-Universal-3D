SetAttackBaseDamage(205,30)
SetAttackMaxPP(205,20)
SetAttackCategory(205,0)
SetAttackContestCategory(205,0)
SetAttackType(205,5)
SetAttackPriority(205,0)
SetAttackAccuracy(205,230)
SetAttackAttackCategory(205,2)
SetAttackSpecialAttackDelegate(205, "ATTACKS_ROCK_ROLLOUT_SPECIAL")
SetAttackPreAttackDelegate(205, "ATTACKS_ROCK_ROLLOUT_PRE_ATTACK")
SetAttackMissedDelegate(205, "ATTACKS_ROCK_ROLLOUT_MISSED")
SetAttackOnUserSwitchDelegate(205, "ATTACKS_ROCK_ROLLOUT_USER_SWITCHED")

function ATTACKS_ROCK_ROLLOUT_PRE_ATTACK()
    local powermultiplier = 1    
    if Attacks_GetTargetAffectedByVolitileStatus("user", "defensecurl") == true then
        powermultiplier = 2
    end
        
    if Attacks_Store == "0" then
        Attacks_SetBaseDamage(30 * powermultiplier)
    elseif Attacks_Store == "1" then
        Attacks_SetBaseDamage(60 * powermultiplier)
    elseif Attacks_Store == "2" then
        Attacks_SetBaseDamage(120 * powermultiplier)
    elseif Attacks_Store == "3" then
        Attacks_SetBaseDamage(240 * powermultiplier)
    elseif Attacks_Store == "4" then
        Attacks_SetBaseDamage(480 * powermultiplier)
    else
        Attacks_SetBaseDamage(30 * powermultiplier)
        Attacks_SetStore("0")
    end
end

function ATTACKS_ROCK_ROLLOUT_SPECIAL()
    if Attacks_Store == "0" then
        Attacks_SetStore("1")
        Attacks_TryAddVolitileStatus("user", "rollout")
    elseif Attacks_Store == "1" then
        Attacks_SetStore("2")
        Attacks_TryAddVolitileStatus("user", "rollout")
    elseif Attacks_Store == "2" then
        Attacks_SetStore("3")
        Attacks_TryAddVolitileStatus("user", "rollout")
    elseif Attacks_Store == "3" then
        Attacks_SetStore("4")
        Attacks_TryAddVolitileStatus("user", "rollout")
    elseif Attacks_Store == "4" then
        Attacks_TryRemoveVolitileStatus("user", "rollout")
        Attacks_SetStore("0")
    end     
end

function ATTACKS_ROCK_ROLLOUT_MISSED()
    Attacks_TryRemoveVolitileStatus("user", "rollout")
    Attacks_SetStore("0")
    Attacks_SetBaseDamage(30)
end

function ATTACKS_ROCK_ROLLOUT_USER_SWITCHED()
    Attacks_TryRemoveVolitileStatus("user", "rollout")
    Attacks_SetStore("0")
    Attacks_SetBaseDamage(30)
end