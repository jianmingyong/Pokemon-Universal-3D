SetAttackBaseDamage(562, 120)
SetAttackMaxPP(562, 5)
SetAttackCategory(562, 1)
SetAttackContestCategory(562, 2)
SetAttackType(562,18)
SetAttackPriority(562, 0)
SetAttackAccuracy(562,204)
SetAttackSpecialAttackDelegate(562, "ATTACKS_FAIRY_MOONBLAST_SPECIAL")
SetAttackHitAnimationDelegate(562, "ATTACKS_FAIRY_MOONBLAST_HIT_ANIMATION")

function ATTACKS_FAIRY_MOONBLAST_SPECIAL()
    Attacks_AddBattleStep("ChangeStat", Attacks_TargetString .. "|Attack|-1|1")
end

function ATTACKS_FAIRY_MOONBLAST_HIT_ANIMATION()
    AnimationSequenceBegin()
        DoStatChanceAnimation(-1, 0.0)
    AnimationSequenceEnd()
end