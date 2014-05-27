SetAttackBaseDamage(138,100)
SetAttackMaxPP(138,15)
SetAttackCategory(138,1)
SetAttackContestCategory(138,1)
SetAttackType(138,13)
SetAttackPriority(138,0)
SetAttackAccuracy(138,255)
SetAttackAttackCategory(138, 2)
SetAttackSpecialAttackDelegate(138, "ATTACKS_PSYCHIC_DREAM_EATER_SPECIAL")
SetAttackPreAttackDelegate(138, "ATTACKS_PSYCHIC_DREAM_EATER_PRE_ATTACK")

function ATTACKS_PSYCHIC_DREAM_EATER_PRE_ATTACK()
    -- we set the absolute damage and store to tell the battle and special how this check turned out
    if Attacks_GetTargetStatusEffect("target") ~= "asleep" then
        Attacks_SetStore("0")
        -- make it do no damage but still attack, so special attack can trigger
        Attacks_SetAbsoluteDamage(0)
    else
        -- if absolute damage is set to -1 it goes back to calculating based on type, STAB, crit, power etc
        Attacks_SetAbsoluteDamage(-1)
        Attacks_SetStore("1")
    end
end

function ATTACKS_PSYCHIC_DREAM_EATER_SPECIAL()
    if Attacks_Store == "1" then
        --the target was asleep, drain
        local restore = math.floor(Attacks_DamageDealt / 2)
        if restore <= 0 then
            restore = 1
        end
        Attacks_AddBattleStep("GainHP", Attacks_TargetString .. "|" .. tostring(restore))
        Attacks_AddBattleStep("Message", Attacks_PrimaryTargetName .. " dream was eaten!")
    else
        --the target is awake, do nothing. it also would not have done damage
        Attacks_AddBattleStep("Message", "But it failed...")
    end
end