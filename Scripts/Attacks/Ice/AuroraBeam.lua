SetAttackBaseDamage(62,65)
SetAttackMaxPP(62,20)
SetAttackCategory(62,1)
SetAttackContestCategory(62,2)
SetAttackType(62,14)
SetAttackPriority(62,0)
SetAttackAccuracy(62,255)
SetAttackSpecialAttackDelegate(62, "ATTACKS_ICE_AURORA_BEAM_SPECIAL")
SetAttackHitAnimationDelegate(62, "ATTACKS_ICE_AURORA_BEAM_HIT_ANIMATION")

function ATTACKS_ICE_AURORA_BEAM_SPECIAL()
    local chance = math.random(0,100)
    if chance <= 10 then
        Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Attack|-1|62")
        Attacks_SetStore("1")
    else
        Attacks_SetStore("0")
    end
end

function ATTACKS_ICE_AURORA_BEAM_HIT_ANIMATION()
    if Attacks_Store == "1" then
        AnimationSequenceBegin()
            DoStatChanceAnimation(-1, 0.0)
        AnimationSequenceEnd()
        Attacks_SetStore("0")
    end
end