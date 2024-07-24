--Jesus Npc Created by: Slade1000 Modified by Manmadedrummer for Araxia Server


local NPC_ID = 101110
local item1 = 159  -- Refreshing Spring Water ID
local amount1 = 1
local item_B = 4595  -- Junglevine Wine ID
local amount_B = 1

local function jesusGossipOnTalk(event, player, creature)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "|TInterface\\icons\\inv_drink_07:25|t Turn Water Into Wine.", 0, 1)
    player:GossipSendMenu(1, creature)
end

local function jesusGossipOnSelect(event, player, creature, sender, intid, code, menu_id)
    if intid == 1 then
        if player:GetItemCount(item1) >= amount1 then
            player:RemoveItem(item1, amount1)
            player:AddItem(item_B, amount_B)
            player:SendBroadcastMessage("May the Gods Bless You")
        else
            player:SendBroadcastMessage("You don't have enough water.")
        end
    end
    player:GossipComplete()
end

RegisterCreatureGossipEvent(NPC_ID, 1, jesusGossipOnTalk)
RegisterCreatureGossipEvent(NPC_ID, 2, jesusGossipOnSelect)