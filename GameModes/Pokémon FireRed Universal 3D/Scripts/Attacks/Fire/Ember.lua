SetAttackBaseDamage(52,40)
SetAttackMaxPP(52,25)
SetAttackCategory(52,1)
SetAttackAttackCategory(52,2)
SetAttackContestCategory(52,2)
SetAttackType(52,9)
SetAttackPriority(52,0)
SetAttackAccuracy(52,255)
SetAttackAttackingAnimationDelegate(52, "ATTACKS_FIRE_EMBER_ATTACKING_ANIMATION")
SetAttackHitAnimationDelegate(52, "ATTACKS_FIRE_EMBER_HIT_ANIMATION")
SetAttackSpecialAttackDelegate(52, "ATTACKS_FIRE_EMBER_SPECIAL")

function ATTACKS_FIRE_EMBER_SPECIAL()
    Attacks_TryToBurn(30, "target")
end

function ATTACKS_FIRE_EMBER_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        AttacksSpawnMovingAnimation(0.0,0.0,0.0,"Textures\\Battle\\Fire\\EmberBall", 0.2, 0.2, 0.2, 4.0, 0.0, 0.0, 0.036, false, true, 0.0, 0.0)
        for i = 0, 12, 1 do
            AttacksSpawnOpacityAnimation(i * 0.2, 0.0, 0.0, "Textures\\Battle\\Fire\\Fire", 0.2, 0.2, 0.2, 0.01, false, 0.0, i * 0.6, 0.0)
        end
    AnimationSequenceEnd()
end

function ATTACKS_FIRE_EMBER_HIT_ANIMATION()
    AnimationSequenceBegin()
        AttacksSpawnMovingAnimation(2.4,0.0,0.0,"Textures\\Battle\\Fire\\EmberBall", 0.2, 0.2, 0.2, 0.0, 0.0, 0.0, 0.036, false, true, 0.0, 0.0)
        for i = 0, 12, 1 do
            AttacksSpawnOpacityAnimation(i * 0.2, 0.0, 0.0, "Textures\\Battle\\Fire\\Fire", 0.2, 0.2, 0.2, 0.01, false, 0.0, 7.2 - (i * 0.6), 0.0)
        end
        AttacksSpawnOpacityAnimation(0.1, 0.0, 0.0, "Textures\\Battle\\Fire\\Fire", 1.0, 1.0, 1.0, 0.01, false, 0.0, 7.2, 1.0)
    AnimationSequenceEnd()
end