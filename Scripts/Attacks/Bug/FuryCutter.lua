SetAttackBaseDamage(210, 20)
SetAttackMaxPP(210, 20)
SetAttackCategory(210, 0)
SetAttackContestCategory(210, 2)
SetAttackAttackCategory(210, 2)
SetAttackType(210, 6)
SetAttackPriority(210, 0)
SetAttackAccuracy(210, 242)
SetAttackSpecialAttackDelegate(210, "ATTACKS_BUG_FURY_CUTTER_SPECIAL")
SetAttackOnUserSwitchDelegate(210, "ATTACKS_BUG_FURY_CUTTER_USER_SWITCHED")
--called after attack
function ATTACKS_BUG_FURY_CUTTER_SPECIAL()
    if Attacks_Store == "" then
        Attacks_SetStore("1")
        Attacks_SetBaseDamage(40)
    elseif Attacks_Store == "0" then
        Attacks_SetStore("1")
        Attacks_SetBaseDamage(40)
    elseif Attacks_Store == "1" then
        Attacks_SetStore("2")
        Attacks_SetBaseDamage(80)
    elseif Attacks_Store == "2" then
        Attacks_SetStore("3")
        Attacks_SetBaseDamage(160)
    end
end

function ATTACKS_BUG_FURY_CUTTER_USER_SWITCHED()
    Attacks_SetStore("0")
    Attacks_SetBaseDamage(20)
end