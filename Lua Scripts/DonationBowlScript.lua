local DonationBowlScript = {}

local GOLD_25 = 25 * 10000    -- 25 gold in copper
local GOLD_50 = 50 * 10000    -- 50 gold in copper
local GOLD_100 = 100 * 10000  -- 100 gold in copper

function DonationBowlScript.OnHello(event, player, object)
    player:GossipMenuAddItem(0, "Donate 25 gold", GOLD_25, 1, nil, "Donate 25 gold and receive Lordaeron's Blessing.")
    player:GossipMenuAddItem(0, "Donate 50 gold", GOLD_50, 2, nil, "Donate 50 gold and receive Spirit of Zandalar.")
    player:GossipMenuAddItem(0, "Donate 100 gold", GOLD_100, 3, nil, "Donate 100 gold and receive Warchief's Blessing.")
    player:GossipSendMenu(1, object, 1000100)
end

function DonationBowlScript.OnSelect(event, player, object, sender, intid, code, menu_id)
    local copperCost = 0
    local buffSpellID = 0

    if intid == 3 then
        copperCost = GOLD_100
        buffSpellID = 16609  -- Spell ID for the 100 gold buff
    elseif intid == 2 then
        copperCost = GOLD_50
        buffSpellID = 24425  -- Spell ID for the 50 gold buff
    elseif intid == 1 then
        copperCost = GOLD_25
        buffSpellID = 30238  -- Spell ID for the 25 gold buff
    else
        player:SendNotification("Invalid selection.")
        player:GossipComplete()
        return
    end

    local currentMoney = player:GetCoinage()
    if currentMoney >= copperCost then
        player:ModifyMoney(-copperCost)
        
        -- Apply the buff
        player:AddAura(buffSpellID, player)
        
        player:SendNotification("You have donated " .. (copperCost / 10000) .. " gold and received a blessing in return!")
        
    else
        player:SendNotification("You don't have enough gold to donate.")
    end

    player:GossipComplete()
end

RegisterGameObjectGossipEvent(1000100, 1, DonationBowlScript.OnHello)
RegisterGameObjectGossipEvent(1000100, 2, DonationBowlScript.OnSelect)