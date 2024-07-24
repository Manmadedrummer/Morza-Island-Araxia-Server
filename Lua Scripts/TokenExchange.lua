local NPC_ID = 102000
local TOKEN_ID = 910001
local TOKEN_COST = 1000

local function OnGossipHello(event, player, creature)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "Buy Araxia Token for 1000 gold", 0, 1)
    player:GossipSendMenu(1, creature)
end

local function OnGossipSelect(event, player, creature, sender, intid, code, menu_id)
    if (intid == 1) then
        if (player:GetCoinage() >= TOKEN_COST * 10000) then
            player:ModifyMoney(-TOKEN_COST * 10000)
            player:AddItem(TOKEN_ID, 1)
            player:SendBroadcastMessage("You have purchased an Araxia Token.")
        else
            player:SendBroadcastMessage("You do not have enough gold.")
        end
        player:GossipComplete()
    end
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)
