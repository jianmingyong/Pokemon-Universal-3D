SetAttackBaseDamage(23,65)
SetAttackMaxPP(23,20)
SetAttackCategory(23,0)
SetAttackContestCategory(23,0)
SetAttackType(23,0)
SetAttackPriority(23,0)
SetAttackAccuracy(23,255)
SetAttackSpecialAttackDelegate(23,"ATTACKS_NORMAL_STOMP_SPECIAL")
SetAttackPreAttackDelegate(23,"ATTACKS_NORMAL_STOMP_PRE_ATTACK")

function ATTACKS_NORMAL_STOMP_PRE_ATTACK()
    if Attacks_GetTargetAffectedByVolitileStatus("target", "minimize") == true then
        Attacks_SetBaseDamage(130)
    else
        Attacks_SetBaseDamage(65)
    end
end

function ATTACKS_NORMAL_STOMP_SPECIAL()
    Attacks_TryToFlinch(30, "target")
end