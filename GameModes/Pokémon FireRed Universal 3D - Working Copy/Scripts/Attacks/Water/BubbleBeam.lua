SetAttackBaseDamage(61,65)
SetAttackMaxPP(61,20)
SetAttackCategory(61,1)
SetAttackContestCategory(61,2)
SetAttackType(61,10)
SetAttackPriority(61,0)
SetAttackAccuracy(61,255)
SetAttackSpecialAttackDelegate(61, "ATTACKS_WATER_BUBBLE_BEAM_SPECIAL")
SetAttackHitAnimationDelegate(61, "ATTACKS_WATER_BUBBLE_BEAM_HIT_ANIMATION")
SetAttackAttackingAnimationDelegate(61, "ATTACKS_WATER_BUBBLE_BEAM_ATTACKING_ANIMATION")

function ATTACKS_WATER_BUBBLE_BEAM_SPECIAL()
    if Attacks_TryStatChange(10, "target", "Speed", -1) == true then
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_WATER_BUBBLE_BEAM_HIT_ANIMATION()
        AnimationSequenceBegin()
        if Attacks_Store == "1" then
            DoStatChanceAnimation(-1, 0.0)
        end
        AttacksSpawnMovingAnimation(3.0,-0.03,0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, 0.03, 0.0, 0.04, false, true, 0.0, 0.0)
        AttacksSpawnMovingAnimation(3.0,0.0,0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, 0.0, 0.03, 0.035, false, true, 0.1, 0.0)
        AttacksSpawnMovingAnimation(3.0,0.0,-0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, -0.03, -0.05, 0.03, false, true, 0.2, 0.0)
        AttacksSpawnMovingAnimation(3.0,0.03,0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, 0.05, 0.01, 0.025, false, true, 0.3, 0.0)
        AttacksSpawnMovingAnimation(3.0,-0.03,0.0,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, -0.05, -0.03, 0.03, false, true, 0.4, 0.0)
        AttacksSpawnMovingAnimation(3.0,-0.03,0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, 0.01, 0.06, 0.04, false, true, 0.4, 0.0)
        AttacksSpawnMovingAnimation(3.0,0.0,0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, -0.01, -0.04, 0.035, false, true, 0.3, 0.0)
        AttacksSpawnMovingAnimation(3.0,0.0,-0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, 0.06, -0.02, 0.03, false, true, 0.2, 0.0)
        AttacksSpawnMovingAnimation(3.0,0.03,0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, 0.04, 0.04, 0.025, false, true, 0.1, 0.0)
        AttacksSpawnMovingAnimation(3.0,-0.03,0.0,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 0.1, -0.04, 0.03, 0.03, false, true, 0.0, 0.0)
        AttacksSpawnOpacityAnimation(0.1, 0.0, 0.0, "Textures\\Battle\\Water\\bubble", 1.0, 1.0, 1.0, 0.005, false, 0.0, 3.5, 0.0)
        AnimationSequenceEnd()
        Attacks_SetStore("0")
end

function ATTACKS_WATER_BUBBLE_BEAM_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        AttacksSpawnMovingAnimation(0.5,-0.03,0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, 0.01, 0.0, 0.04, false, true, 0.0, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.0,0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, 0.05, 0.03, 0.035, false, true, 0.1, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.0,-0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, -0.01, -0.05, 0.03, false, true, 0.2, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.03,0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, 0.05, 0.01, 0.025, false, true, 0.3, 0.0)
        AttacksSpawnMovingAnimation(0.5,-0.03,0.0,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, -0.05, -0.03, 0.03, false, true, 0.4, 0.0)
        AttacksSpawnMovingAnimation(0.5,-0.03,0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, 0.1, 0.06, 0.04, false, true, 0.4, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.0,0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, -0.1, -0.04, 0.035, false, true, 0.3, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.0,-0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, 0.06, -0.02, 0.03, false, true, 0.2, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.03,0.03,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, 0.04, 0.04, 0.025, false, true, 0.1, 0.0)
        AttacksSpawnMovingAnimation(0.5,-0.03,0.0,"Textures\\Battle\\Water\\bubble", 0.2, 0.2, 0.2, 4.0, -0.04, 0.03, 0.03, false, true, 0.0, 0.0)
    AnimationSequenceEnd()
end