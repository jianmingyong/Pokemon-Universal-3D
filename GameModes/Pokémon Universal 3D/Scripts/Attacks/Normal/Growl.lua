SetAttackBaseDamage(45,0)
SetAttackMaxPP(45,40)
SetAttackCategory(45,2)
SetAttackAttackCategory(45,1)
SetAttackContestCategory(45,4)
SetAttackType(45,0)
SetAttackPriority(45,0)
SetAttackAccuracy(45,255)
SetAttackSpecialAttackDelegate(45, "ATTACKS_NORMAL_GROWL_SPECIAL")
SetAttackHitAnimationDelegate(45, "ATTACKS_NORMAL_GROWL_HIT_ANIMATION")
SetAttackAttackingAnimationDelegate(45, "ATTACKS_NORMAL_GROWL_ATTACKING_ANIMATION")

function ATTACKS_NORMAL_GROWL_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Attack|-1|1")
end

function ATTACKS_NORMAL_GROWL_HIT_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(-1, 0.0)
    AnimationSequenceEnd()
end

function ATTACKS_NORMAL_GROWL_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        local T = "Textures\\Battle\\Other\\RedCircle"
        for i = 0, 3, 1 do
            AttacksSpawnSizeAnimation((i + 1) / 10, 0.0, 0.0, T, 0.2, 0.2, 0.2, true, 0.7, 0.7, 0.7, 0.01, i * 3.0, 0.0)
        end       
    AnimationSequenceEnd()
end