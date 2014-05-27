SetAttackBaseDamage(7,75)
SetAttackMaxPP(7,15)
SetAttackCategory(7,0)
SetAttackContestCategory(7,2)
SetAttackType(7,9)
SetAttackPriority(7,0)
SetAttackAccuracy(7,255)
SetAttackAttackingAnimationDelegate(7, "ATTACKS_FIRE_FIRE_PUNCH_ATTACKING_ANIMATION")
SetAttackHitAnimationDelegate(7, "ATTACKS_FIRE_FIRE_PUNCH_HIT_ANIMATION")
SetAttackSpecialAttackDelegate(7, "ATTACKS_FIRE_FIRE_PUNCH_SPECIAL")

function ATTACKS_FIRE_FIRE_PUNCH_SPECIAL()
    Attacks_TryToBurn(10, "target")
end

function ATTACKS_FIRE_FIRE_PUNCH_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        local T = ""
        local randy = 0.0
        local randz = 0.0
        local randtime = 0.0
        for i = 0, 20, 1 do
            if i < 10 then
                T = "Textures\\Battle\\Fire\\Fire"    
            else
                T = "Textures\\Battle\\Fire\\Hand"
            end
            randy = (math.random(0,10) / 10) - 0.5
            randz = (math.random(0,10) / 10) - 0.5
            randtime = math.random(0,100) / 10
            AttacksSpawnMovingAnimation(0.0,randy,randz, T, 1.0, 1.0, 1.0, 4.0, randy, randz, 0.1, false, false, randtime, 0.0)
        end
    AnimationSequenceEnd()
end

function ATTACKS_FIRE_FIRE_PUNCH_HIT_ANIMATION()
    AnimationSequenceBegin()
        local T = ""
        local randy = 0.0
        local randz = 0.0
        local randtime = 0.0
        for i = 0, 20, 1 do
            if i < 10 then
                T = "Textures\\Battle\\Fire\\Fire"    
            else
                T = "Textures\\Battle\\Fire\\Hand"
            end
            randy = (math.random(0,10) / 10) - 0.5
            randz = (math.random(0,10) / 10) - 0.5
            randtime = math.random(0,100) / 10
            AttacksSpawnMovingAnimation(4.0,randy,randz, T, 1.0, 1.0, 1.0, 1.0, randy, randz, 0.1, false, false, randtime, 0.0)
        end
    AnimationSequenceEnd()
end