-- Created by Manmadedrummer for the Araxia Server

local GameObjectEntry = 8675309

local songs = {
    { id = 1, name = "I AM MURLOC", soundID = 50000 },
    { id = 2, name = "Alliance Vs. Horde", soundID = 50001 },
    { id = 3, name = "Battle For Azeroth", soundID = 50002 },
    { id = 4, name = "Legion", soundID = 50003 },
    { id = 5, name = "Nightfall", soundID = 50004 },
    { id = 6, name = "Rogues Do It From Behind", soundID = 50005 },
    { id = 7, name = "Terran Up The Night", soundID = 50006 },
    { id = 8, name = "We Are The Horde", soundID = 50007 }
}

-- Cost of playing each song (10 gold in copper)
local songCost = 100000

function JukeboxOnGossipHello(event, player, object)
    player:GossipClearMenu() -- Clear any existing menu options

    for _, song in ipairs(songs) do
        player:GossipMenuAddItem(0, song.name .. " (Cost: 10 gold)", 0, song.id)
    end

    player:GossipSendMenu(1, object)
end

function JukeboxOnGossipSelect(event, player, object, sender, intid, code)
    local selectedSong = nil

    for _, song in ipairs(songs) do
        if intid == song.id then
            selectedSong = song
            break
        end
    end

    if selectedSong then
        if player:GetCoinage() >= songCost then
            player:ModifyMoney(-songCost) -- Deduct 10 gold from player
            player:PlayMusic(selectedSong.soundID)
            player:SendBroadcastMessage("You selected " .. selectedSong.name .. ". You spent 10 gold to play this song.")
        else
            player:SendBroadcastMessage("You don't have enough gold!")
        end
    end

    player:GossipComplete()
end

-- Register gossip events for the GameObject
RegisterGameObjectGossipEvent(GameObjectEntry, 1, JukeboxOnGossipHello)
RegisterGameObjectGossipEvent(GameObjectEntry, 2, JukeboxOnGossipSelect)
