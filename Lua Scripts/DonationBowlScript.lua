-- Created by Manmadedrummer for the Araxia Server

local DonationBowlScript = {}

local GOLD_25 = 25 * 10000
local GOLD_50 = 50 * 10000
local GOLD_75 = 75 * 10000
local GOLD_150 = 150 * 10000

local ICON_SIZE = 15
local WARCHIEFS_BLESSING_ICON = "|TInterface\\icons\\spell_arcane_teleportorgrimmar:" .. ICON_SIZE .. "|t "
local SPIRIT_OF_ZANDALAR_ICON = "|TInterface\\icons\\ability_creature_poison_05:" .. ICON_SIZE .. "|t "
local LORDAERONS_BLESSING_ICON = "|TInterface\\icons\\spell_holy_prayerofspirit:" .. ICON_SIZE .. "|t "
local GIFT_OF_THE_WILD_ICON = "|TInterface\\icons\\spell_nature_giftofthewild:" .. ICON_SIZE .. "|t "

function DonationBowlScript.OnHello(event, player, object)
    player:GossipMenuAddItem(0, "Donate 25 gold, " .. LORDAERONS_BLESSING_ICON .. "Lordaeron's Blessing.", GOLD_25, 1, nil, "Donate 25 gold and receive Lordaeron's Blessing.")
    player:GossipMenuAddItem(0, "Donate 50 gold, " .. SPIRIT_OF_ZANDALAR_ICON .. "|cff00FF00Spirit of Zandalar|r", GOLD_50, 2, nil, "Donate 50 gold and receive Spirit of Zandalar.")
    player:GossipMenuAddItem(0, "Donate 75 gold, " .. GIFT_OF_THE_WILD_ICON .. "|cffFFD700Gift of the Wild|r", GOLD_75, 3, nil, "Donate 75 gold and receive Gift of the Wild.")
    player:GossipMenuAddItem(0, "Donate 150 gold, " .. WARCHIEFS_BLESSING_ICON .. "|cffFF00FFWarchief's Blessing|r.", GOLD_150, 4, nil, "Donate 150 gold and receive Warchief's Blessing.")
    player:GossipSendMenu(1, object, 1000100)
end

function DonationBowlScript.OnSelect(event, player, object, sender, intid, code, menu_id)
    local copperCost = 0
    local buffSpellID = 0

    if intid == 4 then
        copperCost = GOLD_150
        buffSpellID = 16609  -- Warchief's Blessing Spell ID
    elseif intid == 3 then
        copperCost = GOLD_75
        buffSpellID = 48470  -- Gift of the Wild Spell ID
    elseif intid == 2 then
        copperCost = GOLD_50
        buffSpellID = 24425  -- Spirit of Zandalar Spell ID
    elseif intid == 1 then
        copperCost = GOLD_25
        buffSpellID = 30238  -- Lordaeron's Blessing Spell ID
    else
        player:SendNotification("Invalid selection.")
        player:GossipComplete()
        return
    end

    local currentMoney = player:GetCoinage()
    if currentMoney >= copperCost then
        player:ModifyMoney(-copperCost)
    
        player:AddAura(buffSpellID, player)
        
        player:SendNotification("You have donated " .. (copperCost / 10000) .. " gold and received a blessing in return!")
        
    else
        player:SendNotification("You don't have enough gold to donate.")
    end

    player:GossipComplete()
end

RegisterGameObjectGossipEvent(1000100, 1, DonationBowlScript.OnHello)
RegisterGameObjectGossipEvent(1000100, 2, DonationBowlScript.OnSelect)
