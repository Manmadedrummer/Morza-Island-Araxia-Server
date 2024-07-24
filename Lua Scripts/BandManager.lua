--Made by manmadedrummer for Araxia Server

local NPC_ID = 101078

function OnGossipHello(event, player, object)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "The Elite Tauren chieftan are stayin in Morza Island and rocking it out. There is a 'Song Requester' upstairs if there is any particular song you would like to hear.", 0, 1)
    player:GossipSendMenu(1, object)
end

function OnGossipSelect(event, player, object, sender, intid, code)
    player:GossipComplete()
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)
