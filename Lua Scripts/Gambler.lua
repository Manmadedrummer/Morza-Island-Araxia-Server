-- Original Script from Global_WOW (https://global-wow.com/page/scripts/tbc/Gambler.lua) edited by Manmadedrummer for Araxia Server

local NPC_ID = 800797
local TOKEN_ID = 910001
local MENU_MAIN = 500555
local MENU_RULES = 500556

function Gambler_Gossip(event, player, creature)
    player:GossipClearMenu()
    player:GossipMenuAddItem(6, "You ready to gamble for some tokens, "..player:GetName().."?", 0, 1, true, "Insert amount of tokens you want to gamble!")
    player:GossipMenuAddItem(0, "Tell me the rules", 0, 3)
    player:GossipMenuAddItem(0, "Nevermind", 0, 2)
    player:GossipSendMenu(MENU_MAIN, creature)
end

function Gambler_ShowRules(event, player, creature)
    player:GossipClearMenu()
    player:GossipMenuAddItem(0, "If you win, you will receive 80% more tokens than you gambled. If you lose, you will lose all the tokens you gambled.", 0, 4)
    player:GossipSendMenu(MENU_RULES, creature)
end

function Gambler_Event(event, player, creature, sender, intid, code)
    local chance = math.random(1, 3)  -- Adjusted chance to 1 in 3 (33%)

    if intid == 1 then
        local tokens = tonumber(code)
        
        if not tokens then
            player:SendBroadcastMessage("|cFFFFFF9F"..creature:GetName().." says: You need to use numbers, not letters.")
            player:GossipComplete()
            return
        end
        
        if tokens <= 0 then
            player:SendBroadcastMessage("|cFFFFFF9F"..creature:GetName().." says: Please enter a valid number of tokens to gamble.")
            player:GossipComplete()
            return
        end
        
        if player:GetItemCount(TOKEN_ID) < tokens then
            player:SendBroadcastMessage("|cFFFFFF9F"..creature:GetName().." says: You do not have enough tokens!")
            player:GossipComplete()
            return
        end
        
        if chance == 1 then
            local wonTokens = math.ceil(tokens * 0.8)
            player:SendBroadcastMessage("|cFFFFFF9F"..creature:GetName().." says: Congratulations! You won "..wonTokens.." Tokens!")
            player:AddItem(TOKEN_ID, wonTokens)
        else
            player:SendBroadcastMessage("|cFFFFFF9F"..creature:GetName().." says: Too bad "..player:GetName()..", you lost "..tokens.." tokens. Better luck next time!")
            player:RemoveItem(TOKEN_ID, tokens)
        end
        
        player:GossipComplete()

    elseif intid == 3 then
        Gambler_ShowRules(event, player, creature)

    elseif intid == 4 then
        Gambler_Gossip(event, player, creature)

    elseif intid == 2 then
        player:SendBroadcastMessage("|cFFFFFF9F"..creature:GetName().." says: Maybe another time then.")
        player:GossipComplete()
    end
end

RegisterCreatureGossipEvent(NPC_ID, 1, Gambler_Gossip)
RegisterCreatureGossipEvent(NPC_ID, 2, Gambler_Event)
