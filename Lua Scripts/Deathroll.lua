-- Script made by Sir. Wiggles

local NPC_ID = 800798
local MIN_BET = 1
local MAX_BET = 1000
local GOSSIP_TEXT = "Want to play Deathroll? Click here to enter your bet amount!"

local activeGames = {}

local function OnGossipHello(event, player, object)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, GOSSIP_TEXT, 0, 1, true)
    player:GossipSendMenu(1, object)
end

local function StartDeathrollGame(player, npc, betCopper)
    player:GossipComplete()
    local betGold = betCopper / 10000
    npc:SendUnitSay("Alright, " .. player:GetName() .. "! Let's roll for " .. betGold .. " gold!", 0)
    npc:SendUnitSay("I'll go first. Remember, if either of us rolls a 1, they lose!", 0)
    
    local npcRoll = math.random(1, 100)
    npc:SendUnitSay("I rolled a " .. npcRoll .. "! Your turn, type #roll to make your move!", 0)
    
    activeGames[player:GetGUIDLow()] = {
        betCopper = betCopper,
        lastRoll = npcRoll,
        turn = 1
    }
end

local function OnGossipSelect(event, player, object, sender, intid, code)
    if intid == 1 then
        local betGold = tonumber(code)
        
        if not betGold or betGold < MIN_BET or betGold > MAX_BET then
            player:SendBroadcastMessage("Invalid bet amount. Please enter a number between " .. MIN_BET .. " and " .. MAX_BET .. " gold.")
            OnGossipHello(event, player, object)
            return
        end

        local betCopper = betGold * 10000
        
        if player:GetCoinage() < betCopper then
            player:SendBroadcastMessage("You don't have enough gold for this bet.")
            OnGossipHello(event, player, object)
            return
        end

        player:ModifyMoney(-betCopper)
        StartDeathrollGame(player, object, betCopper)
    end
end

local function OnChatMessage(event, player, msg, Type, lang)
    if msg:lower() == "#roll" then
        local playerGUID = player:GetGUIDLow()
        local game = activeGames[playerGUID]
        
        if not game then
            player:SendBroadcastMessage("No active Deathroll game found.")
            return false
        end
        
        if game.turn ~= 1 then
            player:SendBroadcastMessage("It's not your turn to roll.")
            return false
        end
        
        local roll = math.random(1, game.lastRoll)
        
        local npc = player:GetNearestCreature(5, NPC_ID)
        if not npc then
            player:SendBroadcastMessage("Can't find the Deathroll NPC nearby.")
            return false
        end
        
        player:Say("I rolled a " .. roll .. "!", 0)
        
        if roll == 1 then
            npc:SendUnitSay("You rolled a 1! You lose!", 0)
            player:SendBroadcastMessage("You lost the Deathroll game!")
            player:SendBroadcastMessage("You lost " .. (game.betCopper / 10000) .. " gold.")
            activeGames[playerGUID] = nil
        else
            npc:SendUnitSay("You rolled a " .. roll .. ". My turn!", 0)
            local npcRoll = math.random(1, roll)
            
            if npcRoll == 1 then
                npc:SendUnitSay("I rolled a 1! You win!", 0)
                player:ModifyMoney(game.betCopper * 2)
                player:SendBroadcastMessage("You won " .. (game.betCopper / 10000) .. " gold in the Deathroll game!")
                activeGames[playerGUID] = nil
            else
                npc:SendUnitSay("I rolled a " .. npcRoll .. ". Your turn! Type #roll to make your move!", 0)
                game.lastRoll = npcRoll
                game.turn = 1
            end
        end
        
        return false
    end
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)
RegisterPlayerEvent(18, OnChatMessage)