SetAttackBaseDamage(235,0)
SetAttackMaxPP(235,5)
SetAttackCategory(235,2)
SetAttackAttackCategory(235,1)
SetAttackContestCategory(235,1)
SetAttackType(235,11)
SetAttackPriority(235,0)
SetAttackAccuracy(235,-1)
SetAttackSpecialAttackDelegate(235, "ATTACKS_GRASS_SYNTHESIS_SPECIAL")

function ATTACKS_GRASS_SYNTHESIS_SPECIAL()
    local restore = math.floor(Attacks_MyMaxHP * (3 / 4))
    local quarter = math.floor(Attacks_MyMaxHP * (1 / 4))
    if Attacks_MyMaxHP == Attacks_MyHP then
        Attacks_AddBattleStep("Message", "But it failed!")
    else
        if Attacks_EnvironmentWeather == 1 or Attacks_EnvironmentWeather == 2 or Attacks_EnvironmentWeather == 3 then
            restore = restore - quarter
        end
        if Attacks_EnvironmentType == 0 and Attacks_EnvironmentDayPhase == 0 then
            restore = restore - quarter
        end
        if Attacks_EnvironmentType == 2 or Attacks_EnvironmentType == 3 or Attacks_EnvironmentType == 4 then
            restore = restore - quarter
        end
        Attacks_AddBattleStep("GainHP", Attacks_TargetString .. "|" .. tostring(restore))
        Attacks_AddBattleStep("Message", Attacks_MyName .. "'s~HP was restored.")
    end
end