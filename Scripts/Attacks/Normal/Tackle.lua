SetAttackBaseDamage(33,50)
SetAttackMaxPP(33,35)
SetAttackCategory(33,0)
SetAttackContestCategory(33,0)
SetAttackType(33,0)
SetAttackPriority(33,0)
SetAttackAccuracy(33,255)
SetAttackHasAttackEffect(33, false)
SetAttackHitAnimationDelegate(33, "ATTACKS_NORMAL_TACKLE_HIT_ANIMATION")
 
function ATTACKS_NORMAL_TACKLE_HIT_ANIMATION()
    AnimationSequenceBegin()
    AttacksSpawnOpacityAnimation(0.1, 0.0, 0.0, "Textures\\Battle\\Physical\\Tackle", 1.0, 1.0, 1.0, 0.04, false, 0.0, 0.5, 0.0)
    local i = 0
    local spawncount = math.random(5, 10)
    for i = 0, spawncount, 1 do
        local YDest = 0.0
        if math.random(0, 3) == 0 then
            YDest = math.random(10, 20) / 10
        end
        local ZDest = math.random(20, 40) / 10 - 2.0
      AttacksSpawnMovingAnimation(0.1,0.0,0.0,"Textures\\Battle\\Physical\\Particle", 1.0, 1.0, 1.0, 0.1, YDest, ZDest, 0.05, false, false, 0.6, 0.0)
    end
    AnimationSequenceEnd()
end