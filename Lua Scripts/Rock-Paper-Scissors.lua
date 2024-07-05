--Script made and edited by Manmadedrummer for Araxia Server

local GOSSIP_EVENT_ON_HELLO = 1
local GOSSIP_EVENT_ON_SELECT = 2
local NPC_ID = 800795
local price = 100 -- in gold. Minimum 1 gold.

function On_Gossip(event, player, creature)
    if player:GetCoinage() >= (price * 10000) then
        player:SendBroadcastMessage("It costs " .. price .. " gold to play.")
        player:GossipMenuAddItem(0, "|TInterface\\icons\\inv_stone_10:25|t |cff0000ffI choose Rock|r", 0, 1, false)
        player:GossipMenuAddItem(0, "|TInterface\\icons\\inv_misc_note_06:25|t |cffcc0033I choose Paper|r", 0, 2, false)
        player:GossipMenuAddItem(0, "|TInterface\\icons\\ability_dualwield:25|t |cff009900I choose Scissors|r", 0, 3, false)
        player:GossipMenuAddItem(0, "|cffff0000Goodbye|r", 0, 4, false)
        player:GossipSendMenu(1, creature)
    else
        player:SendBroadcastMessage("You need " .. price .. " |cffffcc00gold|r to play.")
    end
end

function On_Select(event, player, creature, sender, intid, code)
    if intid == 0 then
        On_Gossip(event, player, creature)
        return
    elseif intid == 4 then
        player:GossipComplete()
        return
    else
        player:ModifyMoney(-(price * 10000))
        player:SendBroadcastMessage("Paid " .. price .. " gold")

        local m = math.random(1, 3)
        if intid == 1 then
            if m == 1 then
                player:SendBroadcastMessage("|cffffcc00It's a tie!|r")
            elseif m == 2 then
                player:SendBroadcastMessage("|cffff0000You lost! Pay up!|r")
            elseif m == 3 then
                player:SendBroadcastMessage("|cffffcc00You won! Don't get cocky, try again.|r")
                player:SendBroadcastMessage("|cff800080Gained " .. (price * 2) .. " gold|r")
                player:ModifyMoney((price * 10000) * 2)
            end
        elseif intid == 2 then
            if m == 1 then
                player:SendBroadcastMessage("|cffffcc00You won! I let you win.|r")
                player:SendBroadcastMessage("|cff800080Gained " .. (price * 2) .. " gold|r")
                player:ModifyMoney((price * 10000) * 2)
            elseif m == 2 then
                player:SendBroadcastMessage("|cffff0000You lost! What a noob.|r")
            elseif m == 3 then
                player:SendBroadcastMessage("|cffff0000You lost! Better luck next time rookie!|r")
            end
        elseif intid == 3 then
            if m == 1 then
                player:SendBroadcastMessage("|cffff0000You lost! I'm the best in Azeroth!|r")
            elseif m == 2 then
                player:SendBroadcastMessage("|cffffcc00You won!|r")
                player:SendBroadcastMessage("|cff800080Gained " .. (price * 2) .. " gold|r")
                player:ModifyMoney((price * 10000) * 2)
            elseif m == 3 then
                player:SendBroadcastMessage("|cffffcc00It's a tie! Both chose Scissors!|r")
            end
        end
        player:GossipComplete()
    end
end

RegisterCreatureGossipEvent(NPC_ID, GOSSIP_EVENT_ON_HELLO, On_Gossip)
RegisterCreatureGossipEvent(NPC_ID, GOSSIP_EVENT_ON_SELECT, On_Select)