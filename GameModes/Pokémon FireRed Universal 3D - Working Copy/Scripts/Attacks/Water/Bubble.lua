SetAttackBaseDamage(145,20)
SetAttackMaxPP(145,30)
SetAttackCategory(145,1)
SetAttackContestCategory(145,4)
SetAttackType(145,10)
SetAttackPriority(145,0)
SetAttackAccuracy(145,255)
SetAttackSpecialAttackDelegate(145, "ATTACKS_WATER_BUBBLE_SPECIAL")
SetAttackHitAnimationDelegate(145, "ATTACKS_WATER_BUBBLE_HIT_ANIMATION")
SetAttackAttackingAnimationDelegate(145, "ATTACKS_WATER_BUBBLE_ATTACKING_ANIMATION")

function ATTACKS_WATER_BUBBLE_SPECIAL()
    if Attacks_TryStatChange(10, "target", "Speed", -1) == true then
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_WATER_BUBBLE_HIT_ANIMATION()
        AnimationSequenceBegin()
        if Attacks_Store == "1" then
            DoStatChanceAnimation(-1, 0.0)
        end
        AttacksSpawnMovingAnimation(3.0,-0.3,0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, 0.3, 0.0, 0.04, false, true, 0.0, 0.0)
        AttacksSpawnMovingAnimation(3.0,0.0,0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, 0.0, 0.3, 0.035, false, true, 0.1, 0.0)
        AttacksSpawnMovingAnimation(3.0,0.0,-0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, -0.3, -0.5, 0.03, false, true, 0.2, 0.0)
        AttacksSpawnMovingAnimation(3.0,0.3,0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, 0.5, 0.1, 0.025, false, true, 0.3, 0.0)
        AttacksSpawnMovingAnimation(3.0,-0.3,0.0,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, -0.5, -0.3, 0.03, false, true, 0.4, 0.0)
        AttacksSpawnMovingAnimation(3.0,-0.3,0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, 0.1, 0.6, 0.04, false, true, 0.4, 0.0)
        AttacksSpawnMovingAnimation(3.0,0.0,0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, -0.1, -0.4, 0.035, false, true, 0.3, 0.0)
        AttacksSpawnMovingAnimation(3.0,0.0,-0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, 0.6, -0.2, 0.03, false, true, 0.2, 0.0)
        AttacksSpawnMovingAnimation(3.0,0.3,0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, 0.4, 0.4, 0.025, false, true, 0.1, 0.0)
        AttacksSpawnMovingAnimation(3.0,-0.3,0.0,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, -0.4, 0.3, 0.03, false, true, 0.0, 0.0)
        AttacksSpawnOpacityAnimation(0.1, 0.0, 0.0, "Textures\\Battle\\Water\\bubble", 1.0, 1.0, 1.0, 0.005, false, 0.0, 3.5, 0.0)
        AnimationSequenceEnd()
        Attacks_SetStore("0")
end

function ATTACKS_WATER_BUBBLE_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        AttacksSpawnMovingAnimation(0.5,-0.3,0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, 0.3, 0.0, 0.04, false, true, 0.0, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.0,0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, 0.0, 0.3, 0.035, false, true, 0.1, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.0,-0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, -0.3, -0.5, 0.03, false, true, 0.2, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.3,0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, 0.5, 0.1, 0.025, false, true, 0.3, 0.0)
        AttacksSpawnMovingAnimation(0.5,-0.3,0.0,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, -0.5, -0.3, 0.03, false, true, 0.4, 0.0)
        AttacksSpawnMovingAnimation(0.5,-0.3,0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, 0.1, 0.6, 0.04, false, true, 0.4, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.0,0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, -0.1, -0.4, 0.035, false, true, 0.3, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.0,-0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, 0.6, -0.2, 0.03, false, true, 0.2, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.3,0.3,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, 0.4, 0.4, 0.025, false, true, 0.1, 0.0)
        AttacksSpawnMovingAnimation(0.5,-0.3,0.0,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, -0.4, 0.3, 0.03, false, true, 0.0, 0.0)
    AnimationSequenceEnd()
end