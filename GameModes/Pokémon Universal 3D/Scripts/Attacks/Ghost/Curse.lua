SetAttackBaseDamage(174,0)
SetAttackMaxPP(174,10)
SetAttackCategory(174,2)
SetAttackContestCategory(174,0)
SetAttackType(174,7)
SetAttackPriority(174,0)
SetAttackAccuracy(174,-1)
SetAttackAttackCategory(174,1)
SetAttackSpecialAttackDelegate(174, "ATTACKS_GHOST_CURSE_SPECIAL")
SetAttackAttackingAnimationDelegate(174, "ATTACKS_GHOST_CURSE_ATTACKING_ANIMATION")
SetAttackHitAnimationDelegate(174, "ATTACKS_GHOST_CURSE_HIT_ANIMATION")

function ATTACKS_GHOST_CURSE_SPECIAL()
    if Attacks_MyType1 == 7 or Attacks_MyType2 == 7 then
        local recoil = math.floor(Attacks_MyMaxHP / 2)
        Attacks_AddBattleStep("DrainHP", Attacks_TargetString .. "|" .. tostring(recoil))
        Attacks_AddBattleStep("Message", Attacks_MyName .. " cut their own HP~and laid a curse on~" .. Attacks_PrimaryTargetName .. ".")
        Attacks_TryAddVolitileStatus("target", "curse")
        Attacks_SetStore("1")
    else
        local T = Attacks_TargetString
        if Attacks_TargetString == "1" then
            T = "0"    
        elseif Attacks_TargetString == "0" then
            T = "1"
        end
        Attacks_AddBattleStep("ChangeStat", T .. "|Speed|-1|448")
        Attacks_AddBattleStep("ChangeStat", T .. "|Attack|1|448")
        Attacks_AddBattleStep("ChangeStat", T .. "|Defense|1|448")
        Attacks_SetStore("0")
    end
end

function ATTACKS_GHOST_CURSE_ATTACKING_ANIMATION()
    AnimationSequenceBegin()
        if Attacks_Store == "1" then
            --ghost
        else
            --everyone else
            DoStatChanceAnimation(-1, 0.0)
            DoStatChanceAnimation(2, 7.0)
        end
    AnimationSequenceEnd()
end

function ATTACKS_GHOST_CURSE_HIT_ANIMATION()
end