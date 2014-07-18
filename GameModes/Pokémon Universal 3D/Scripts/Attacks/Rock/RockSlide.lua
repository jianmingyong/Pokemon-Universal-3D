SetAttackBaseDamage(157,75)
SetAttackMaxPP(157,10)
SetAttackCategory(157,0)
SetAttackContestCategory(157,0)
SetAttackType(157,5)
SetAttackPriority(157,0)
SetAttackAccuracy(157,230)
SetAttackSpecialAttackDelegate(157, "ATTACKS_ROCK_ROCK_SLIDE_SPECIAL")
SetAttackAttackingAnimationDelegate(157, "ATTACKS_ROCK_ROCK_SLIDE_ATTACKING_ANIMATION")
SetAttackHitAnimationDelegate(157, "ATTACKS_ROCK_ROCK_SLIDE_HIT_ANIMATION")

function ATTACKS_ROCK_ROCK_SLIDE_SPECIAL()
    if Attacks_TryToFlinch(30, "target") == true then
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_ROCK_ROCK_SLIDE_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        AttacksSpawnMovingAnimation(0.5,-0.3,0.3,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 2.0, 2.5, 0.0, 0.04, false, true, 0.0, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.0,0.3,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 2.0, 2.5, 0.0, 0.035, false, true, 0.1, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.0,-0.3,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 2.0, 2.5, 0.0, 0.03, false, true, 0.2, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.3,0.3,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 2.0, 2.5, 0.0, 0.025, false, true, 0.3, 0.0)
        AttacksSpawnMovingAnimation(0.5,-0.3,0.0,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 2.0, 2.5, 0.0, 0.03, false, true, 0.4, 0.0)
        AttacksSpawnMovingAnimation(0.5,-0.3,0.3,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 2.0, 2.5, 0.0, 0.04, false, true, 0.4, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.0,0.3,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 2.0, 2.5, 0.0, 0.035, false, true, 0.3, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.0,-0.3,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 2.0, 2.5, 0.0, 0.03, false, true, 0.2, 0.0)
        AttacksSpawnMovingAnimation(0.5,0.3,0.3,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 2.0, 2.5, 0.0, 0.025, false, true, 0.1, 0.0)
        AttacksSpawnMovingAnimation(0.5,-0.3,0.0,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 2.0, 2.5, 0.0, 0.03, false, true, 0.0, 0.0)
    AnimationSequenceEnd()
end

function ATTACKS_ROCK_ROCK_SLIDE_HIT_ANIMATION()
    AnimationSequenceBegin()
        AttacksSpawnMovingAnimation(0.5,2.5,0.7,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 0.1, 0.0, 0.1, 0.04, false, true, 0.0, 0.0)
        AttacksSpawnMovingAnimation(0.3,2.5,0.5,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 0.1, 0.0, 0.5, 0.035, false, true, 0.1, 0.0)
        AttacksSpawnMovingAnimation(0.5,2.5,-0.3,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 0.1, 0.0, 0.8, 0.03, false, true, 0.2, 0.0)
        AttacksSpawnMovingAnimation(0.3,2.5,0.7,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 0.1, 0.0, 0.6, 0.025, false, true, 0.3, 0.0)
        AttacksSpawnMovingAnimation(0.5,2.5,0.5,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 0.1, 0.0, -0.2, 0.03, false, true, 0.4, 0.0)
        AttacksSpawnMovingAnimation(0.1,2.5,0.3,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 0.1, 0.0, -0.5, 0.04, false, true, 0.4, 0.0)
        AttacksSpawnMovingAnimation(0.5,2.5,-0.1,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 0.1, 0.0, 0.2, 0.035, false, true, 0.3, 0.0)
        AttacksSpawnMovingAnimation(0.1,2.5,-0.5,"Textures\\Routes,144,48,16,16", 0.2, 0.2, 0.2, 0.1, 0.0, -0.8, 0.03, false, true, 0.2, 0.0)
        
    AnimationSequenceEnd()
end