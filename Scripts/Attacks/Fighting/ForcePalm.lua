SetAttackBaseDamage(395,60)
SetAttackMaxPP(395,10)
SetAttackCategory(395,0)
SetAttackContestCategory(395,3)
SetAttackType(395,1)
SetAttackPriority(395,0)
SetAttackAccuracy(395,255)
SetAttackHasAttackEffect(395,false)
SetAttackSpecialAttackDelegate(395, "ATTACKS_FIGHTING_FORCE_PALM_SPECIAL")
SetAttackHitAnimationDelegate(395, "ATTACKS_FIGHTING_FORCE_PALM_HIT_ANIMATION")

function ATTACKS_FIGHTING_FORCE_PALM_SPECIAL()
    Attacks_TryToParalyze(30, "target")
end

function ATTACKS_FIGHTING_FORCE_PALM_HIT_ANIMATION()
    AnimationSequenceBegin()
        AttacksSpawnMovingAnimation(1.0,0.0,0.0,"Textures\\Battle\\Fighting\\forcepalmhand", 0.2, 0.2, 0.2, 0.1, 0.0, 0.0, 0.18, false, false, 0.0, 1.0)
        AttacksSpawnMovingAnimation(0.1,0.0,0.0,"Textures\\Battle\\Fighting\\forcepalmhand", 0.3, 0.3, 0.3, 0.1, 0.0, 1.0, 0.1, false, false, 1.6, 0.0)
        AttacksSpawnMovingAnimation(0.1,0.0,0.0,"Textures\\Battle\\Fighting\\forcepalmhandfading", 0.3, 0.3, 0.3, 0.1, 0.0, 1.0, 0.07, false, false, 1.6, 0.0)
        AttacksSpawnMovingAnimation(0.1,0.0,0.0,"Textures\\Battle\\Fighting\\forcepalmhandfaded", 0.3, 0.3, 0.3, 0.1, 0.0, 1.0, 0.04, false, false, 1.6, 0.0)
        AttacksSpawnOpacityAnimation(0.1, 0.0, 0.0, "Textures\\Battle\\Fighting\\forcepalmimpact", 0.5, 0.5, 0.5, 0.008, false, 0.0, 1.6, 1.0)
        local ydest = 0.0
        local zdest = 0.0
        local chance = 0
        for i = 0,56, 1 do
            ydest = math.random()
            zdest = math.random()
            chance = math.random(0,100)
            if chance <= 50 then
                ydest = ydest - (ydest * 2)                        
            end
            chance = math.random(0,100)
            if chance <= 50 then
                zdest = zdest - (zdest * 2)
            end
            AttacksSpawnMovingAnimation(0.1,0.0,0.0,"Textures\\Battle\\Fighting\\forcepalmparticle", 0.2, 0.2, 0.2, 0.1, ydest, zdest, 0.01, false, true, 1.6, 0.5)    
        end
    AnimationSequenceEnd()
end