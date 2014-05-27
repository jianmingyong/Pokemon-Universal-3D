SetAttackBaseDamage(111,0)
SetAttackMaxPP(111,40)
SetAttackCategory(111,2)
SetAttackContestCategory(111,4)
SetAttackType(111,0)
SetAttackPriority(111,0)
SetAttackAccuracy(111,-1)
SetAttackHasHitEffect(111, false)
SetAttackAttackCategory(111, 1)
SetAttackSpecialAttackDelegate(111, "ATTACKS_NORMAL_DEFENSE_CURL_SPECIAL")
SetAttackAttackingAnimationDelegate(111, "ATTACKS_NORMAL_DEFENSE_CURL_ATTACKING_ANIMATION")

function ATTACKS_NORMAL_DEFENSE_CURL_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_GetTargetStringByAttackTarget("user") .. "|Defense|1|1")
    Attacks_TryAddVolitileStatus("user", "defensecurl")
end

function ATTACKS_NORMAL_DEFENSE_CURL_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(1, 0.0)
    AnimationSequenceEnd()
end