--Made by Manmadedrummer for Araxia Server

local NPC_ID = 101024  -- NPC ID set to 101024

local LOCATIONS = {
    {name = "Agora", map = 5000, x = -13737.322, y = 3060.239, z = 2.770},
    {name = "Bank & Training Hall", map = 5000, x = -13751.920, y = 3228.538, z = 4.712},
    {name = "Bar", map = 5000, x = -13706.938, y = 2978.838, z = 8.769},
    {name = "Castle", map = 5000, x = -13800.209, y = 2949.239, z = 6.128},
    {name = "Church", map = 5000, x = -14037.585, y = 3226.379, z = 123.510},
    {name = "Concert Hall", map = 5000, x = -13621.142, y = 3090.055, z = -0.202},
    {name = "Docks", map = 5000, x = -13623.525, y = 3041.326, z = 1.504},
    {name = "Farmer Fred's", map = 5000, x = -14035.105, y = 3352.161, z = 62.646},
    {name = "Gambling Hall", map = 5000, x = -13808.391, y = 2918.021, z = 0.836},
    {name = "Lighthouse", map = 5000, x = -13539.465, y = 2874.475, z = 2.819},
    {name = "Mage Tower", map = 5000, x = -13920.570, y = 2975.518, z = 6.772},
    {name = "Mines", map = 5000, x = -13864.226, y = 3205.525, z = 18.428},
    {name = "Stables", map = 5000, x = -13865.548, y = 3304.074, z = 59.989}
}

local CLASS_TRAINERS = {
    {name = "Death Knight Trainer", map = 5000, x = -13734.9, y = 3217.75, z = 12.0077},
    {name = "Druid Trainer", map = 5000, x = -13931.3, y = 29997.44, z = 31.8383},
    {name = "Hunter Trainer", map = 5000, x = -13756.9, y = 3222.87, z = 12.4636},
    {name = "Mage Trainer", map = 5000, x = -13931.4, y = 2982.42, z = 32.3439},
    {name = "Paladin Trainer", map = 5000, x = -13760.7, y = 3229.24, z = 12.6305},
    {name = "Priest Trainer", map = 5000, x = -14071.8, y = 3221.53, z = 124.87},
    {name = "Rogue Trainer", map = 5000, x = -13748.6, y = 3220.64, z = 1.49432},
    {name = "Shaman Trainer", map = 5000, x = -13910.1, y = 2974.18, z = 32.424},
    {name = "Warlock Trainer", map = 5000, x = -14071.8, y = 3221.53, z = 124.87},
    {name = "Warrior Trainer", map = 5000, x = -13742.8, y = 32220.47, z = 12.1809}
}

local PROFESSION_TRAINERS = {
    {name = "Alchemy Trainer", map = 5000, x = -13911.7, y = 3000.34, z = 13.3026},
    {name = "Blacksmith Trainer", map = 5000, x = -13868.7, y = 3083.7, z = 7.23484},
    {name = "Cooking Trainer", map = 5000, x = -13733.6, y = 3235.91, z = 12.1908},
    {name = "Enchanting Trainer", map = 5000, x = -13904, y = 2983.02, z = 26.3111},
    {name = "Engineering Trainer", map = 5000, x = -13722.9, y = 3247.6, z = 12.1919},
    {name = "Fishing Trainer", map = 5000, x = -13616.8, y = 3036.7, z = 1.50411},
    {name = "First Aid Trainer", map = 5000, x = -13720.9, y = 3224.05, z = 11.785},
    {name = "Herbalism Trainer", map = 5000, x = 16231.1, y = 16294.3, z = 13.1757},
    {name = "Inscription Trainer", map = 5000, x = -13921.8, y = 3005.33, z = 31.4838},
    {name = "Jewelcrafting Trainer", map = 5000, x = -13924.1, y = 2986.94, z = 6.41856},
    {name = "Leatherworking Trainer", map = 5000, x = -13725.7, y = 3250.1, z = 12.2815},
    {name = "Mining Trainer", map = 5000, x = -13727.3, y = 3227.22, z = 11.9473},
    {name = "Skinning Trainer", map = 5000, x = -13733.3, y = 3225.38, z = 14.1048},
    {name = "Tailoring Trainer", map = 5000, x = -13735.5, y = 3228.27, z = 14.1877}
}

local OTHERS = {
    {name = "Armor Trainer", map = 5000, x = -13887.5, y = 3079.87, z = 5.62182},
    {name = "Barber", map = 5000, x = -13717.0, y = 3226.31, z = 11.7556},
    {name = "Locksmith", map = 5000, x = -13865.4, y = 3091.61, z = 7.18799},
    {name = "Pet Trainer", map = 5000, x = -13859.4, y = 3315.04, z = 59.3549},
    {name = "Stable Master", map = 5000, x = -13863.6, y = 3361.8, z = 58.0831},
    {name = "Weapon Trainer", map = 5000, x = -13820.5, y = 2965.13, z = 7.62697}
}

local function OnGossipHello(event, player, creature)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "Locations", 1, 1)
    player:GossipMenuAddItem(0, "Class Trainers", 1, 2)
    player:GossipMenuAddItem(0, "Profession Trainers", 1, 3)
    player:GossipMenuAddItem(0, "Other", 1, 4)
    player:GossipSendMenu(1, creature)
end

local function ShowLocationsMenu(player, creature)
    player:GossipClearMenu()
    for index, loc in ipairs(LOCATIONS) do
        player:GossipMenuAddItem(0, loc.name, 1, 100 + index)
    end
    player:GossipMenuAddItem(0, "Back", 1, 5)
    player:GossipSendMenu(1, creature)
end

local function ShowClassTrainersMenu(player, creature)
    player:GossipClearMenu()
    for index, trainer in ipairs(CLASS_TRAINERS) do
        player:GossipMenuAddItem(0, trainer.name, 1, 200 + index)
    end
    player:GossipMenuAddItem(0, "Back", 1, 5)
    player:GossipSendMenu(1, creature)
end

local function ShowProfessionTrainersMenu(player, creature)
    player:GossipClearMenu()
    for index, trainer in ipairs(PROFESSION_TRAINERS) do
        player:GossipMenuAddItem(0, trainer.name, 1, 300 + index)
    end
    player:GossipMenuAddItem(0, "Back", 1, 5)
    player:GossipSendMenu(1, creature)
end

local function ShowOthersMenu(player, creature)
    player:GossipClearMenu()
    for index, other in ipairs(OTHERS) do
        player:GossipMenuAddItem(0, other.name, 1, 400 + index)
    end
    player:GossipMenuAddItem(0, "Back", 1, 5)
    player:GossipSendMenu(1, creature)
end

local function OnGossipSelect(event, player, creature, sender, intid, code)
    if intid == 1 then
        ShowLocationsMenu(player, creature)
    elseif intid == 2 then
        ShowClassTrainersMenu(player, creature)
    elseif intid == 3 then
        ShowProfessionTrainersMenu(player, creature)
    elseif intid == 4 then
        ShowOthersMenu(player, creature)
    elseif intid == 5 then
        OnGossipHello(event, player, creature)
    else
        local loc = LOCATIONS[intid - 100]
        if loc then
            player:GossipComplete()
            player:SendBroadcastMessage("Setting a marker for " .. loc.name)
            player:GossipSendPOI(loc.x, loc.y, 7, 6, 0, loc.name)
        else
            local class_trainer = CLASS_TRAINERS[intid - 200]
            if class_trainer then
                player:GossipComplete()
                player:SendBroadcastMessage("Setting a marker for " .. class_trainer.name)
                player:GossipSendPOI(class_trainer.x, class_trainer.y, 7, 6, 0, class_trainer.name)
            else
                local profession_trainer = PROFESSION_TRAINERS[intid - 300]
                if profession_trainer then
                    player:GossipComplete()
                    player:SendBroadcastMessage("Setting a marker for " .. profession_trainer.name)
                    player:GossipSendPOI(profession_trainer.x, profession_trainer.y, 7, 6, 0, profession_trainer.name)
                else
                    local other = OTHERS[intid - 400]
                    if other then
                        player:GossipComplete()
                        player:SendBroadcastMessage("Setting a marker for " .. other.name)
                        player:GossipSendPOI(other.x, other.y, 7, 6, 0, other.name)
                    end
                end
            end
        end
    end
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)
