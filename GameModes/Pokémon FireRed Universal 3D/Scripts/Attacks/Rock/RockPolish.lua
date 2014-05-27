SetAttackBaseDamage(397,0)
SetAttackMaxPP(397,20)
SetAttackCategory(397,2)
SetAttackContestCategory(397,0)
SetAttackType(397,5)
SetAttackPriority(397,0)
SetAttackAccuracy(397,-1)
SetAttackHasHitEffect(397, false)
SetAttackAttackCategory(397,1)
SetAttackSpecialAttackDelegate(397, "ATTACKS_ROCK_ROCK_POLISH_SPECIAL")
SetAttackAttackingAnimationDelegate(397, "ATTACKS_ROCK_ROCK_POLISH_ATTACKING_ANIMATION")

function ATTACKS_ROCK_ROCK_POLISH_SPECIAL()
    local T = ""
    if Attacks_TargetString == "0" then
        T = "1"
    elseif Attacks_TargetString == "1"  then
        T = "0"
    end
    
    Attacks_AddBattleStep("ChangeStat", T .. "|Speed|2|448")
end

function ATTACKS_ROCK_ROCK_POLISH_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(2, 0.0)
    AnimationSequenceEnd()
end