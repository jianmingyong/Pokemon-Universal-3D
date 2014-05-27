SetAttackBaseDamage(488,50)
SetAttackMaxPP(488,20)
SetAttackCategory(488,0)
SetAttackContestCategory(488,0)
SetAttackType(488,9)
SetAttackPriority(488,0)
SetAttackAccuracy(488,255)
SetAttackSpecialAttackDelegate(488, "ATTACKS_FIRE_FLAME_CHARGE_SPECIAL")
SetAttackAttackingAnimationDelegate(488, "ATTACKS_FIRE_FLAME_CHARGE_ATTACKING_ANIMATION")
SetAttackHitAnimationDelegate(488, "ATTACKS_FIRE_FLAME_CHARGE_HIT_ANIMATION")

function ATTACKS_FIRE_FLAME_CHARGE_SPECIAL()
    local T = ""
    if Attacks_TargetString == "0" then
        T = "1"
    elseif Attacks_TargetString == "1"  then
        T = "0"
    end
    
    Attacks_AddBattleStep("ChangeStat", T .. "|Speed|1|448")
end

function ATTACKS_FIRE_FLAME_CHARGE_HIT_ANIMATION()
    AnimationSequenceBegin()
        Attacks_PlaceholderFireHitAnimation()
    AnimationSequenceEnd()
end

function ATTACKS_FIRE_FLAME_CHARGE_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(1, 0.0)
        Attacks_PlaceholderFireAttackAnimation()
    AnimationSequenceEnd()
end