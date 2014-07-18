SetAttackBaseDamage(160,0)
SetAttackMaxPP(160,30)
SetAttackCategory(160,2)
SetAttackContestCategory(160,2)
SetAttackType(160,0)
SetAttackPriority(160,0)
SetAttackAccuracy(160,-1)
SetAttackHasHitEffect(160, false)
SetAttackAttackCategory(160, 1)
SetAttackSpecialAttackDelegate(160, "ATTACKS_NORMAL_CONVERSION_SPECIAL")

function ATTACKS_NORMAL_CONVERSION_SPECIAL()
    local possibletypes = {}
    local attacktype = Attacks_GetTargetMoveTypeByIndex("user", 0)
    if attacktype ~= Attacks_GetTypeIndexByName("blank") then
        table.insert(possibletypes, attacktype)
    end
    attacktype = Attacks_GetTargetMoveTypeByIndex("user", 1)
    if attacktype ~= Attacks_GetTypeIndexByName("blank") then
        table.insert(possibletypes, attacktype)
    end
    attacktype = Attacks_GetTargetMoveTypeByIndex("user", 2)
    if attacktype ~= Attacks_GetTypeIndexByName("blank") then
        table.insert(possibletypes, attacktype)
    end
    attacktype = Attacks_GetTargetMoveTypeByIndex("user", 3)
    if attacktype ~= Attacks_GetTypeIndexByName("blank") then
        table.insert(possibletypes, attacktype)
    end
    if #possibletypes > 1 then
        local choice = math.random(1, 4)
            Attacks_AddBattleStep("Message", Attacks_MyName .. " transformed~into the " .. Attacks_GetTypeNameByIndex(possibletypes[choice]) .. " type!")
            Attacks_SetTargetTypes("user", possibletypes[choice], Attacks_GetTypeIndexByName("blank"))
    end
end