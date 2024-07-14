--Made by Manmadedrummer for the Araxia Server

local WAYPOINTS = {
    { -13864.030, 3296.922, 60.913, 3.61104 },
    { -13882.977, 3331.793, 58.643, 3.40104 },
    { -13961.476, 3331.752, 58.095, 3.12867 },
    { -14020.381, 3330.363, 58.999, 1.59455 },
    { -14022.205, 3359.255, 58.854, 1.04429 }
}

local NPC_ID = 101999 -- ID of Betsy, the cow
local QUEST_ID = 90024 -- ID of the escort quest
local BANDIT_ID = 101106 -- ID of the bandit
local BOSS_ID = 101107 -- ID of the bandit boss

local npcWaypoints = {}

local function MoveToNextWaypoint(creature, wpIndex)
    local waypoint = WAYPOINTS[wpIndex]
    creature:MoveTo(wpIndex, waypoint[1], waypoint[2], waypoint[3], waypoint[4])
end

local function OnReachWaypoint(event, creature, type, id)
    local guid = creature:GetGUIDLow()
    local wpIndex = npcWaypoints[guid]

    if wpIndex == 1 then
        creature:RemoveEvents()
        creature:SendUnitSay("Moo!! Moo!!", 0)

        -- Spawn the bandits and make them attack Betsy
        local bandit1 = creature:SpawnCreature(BANDIT_ID, WAYPOINTS[1][1] + 2, WAYPOINTS[1][2] + 2, WAYPOINTS[1][3], WAYPOINTS[1][4], 5, 60000) -- Offset position
        local bandit2 = creature:SpawnCreature(BANDIT_ID, WAYPOINTS[1][1] - 2, WAYPOINTS[1][2] - 2, WAYPOINTS[1][3], WAYPOINTS[1][4], 5, 60000) -- Offset position

        if bandit1 then bandit1:AttackStart(creature) end
        if bandit2 then bandit2:AttackStart(creature) end

        -- Continue moving to the next waypoint after 5 seconds
        creature:RegisterEvent(function(event, delay, repeats)
            MoveToNextWaypoint(creature, 2)
            npcWaypoints[guid] = 2
        end, 5000, 1)

    elseif wpIndex == 2 then
        creature:RemoveEvents()
        -- Wait for 5 seconds before moving to the next waypoint
        creature:RegisterEvent(function(event, delay, repeats)
            MoveToNextWaypoint(creature, 3)
            npcWaypoints[guid] = 3
        end, 5000, 1)

    elseif wpIndex == 3 then
        creature:RemoveEvents()
        creature:SendUnitSay("Moo!!", 0)

        -- Spawn another bandit and make it attack Betsy
        local bandit = creature:SpawnCreature(BANDIT_ID, WAYPOINTS[3][1] + 2, WAYPOINTS[3][2] - 2, WAYPOINTS[3][3], WAYPOINTS[3][4], 5, 60000) -- Offset position
        if bandit then bandit:AttackStart(creature) end

        -- Wait for 10 seconds before moving to the next waypoint
        creature:RegisterEvent(function(event, delay, repeats)
            MoveToNextWaypoint(creature, 4)
            npcWaypoints[guid] = 4
        end, 10000, 1)

    elseif wpIndex == 4 then
        creature:RemoveEvents()
        creature:SendUnitSay("Moo!!", 0)

        -- Spawn the bandit boss and make it attack Betsy
        local boss = creature:SpawnCreature(BOSS_ID, WAYPOINTS[4][1] + 2, WAYPOINTS[4][2] + 2, WAYPOINTS[4][3], WAYPOINTS[4][4], 5, 60000) -- Offset position
        if boss then boss:AttackStart(creature) end

        -- Wait for 20 seconds before moving to the next waypoint
        creature:RegisterEvent(function(event, delay, repeats)
            MoveToNextWaypoint(creature, 5)
            npcWaypoints[guid] = 5
        end, 20000, 1)

    elseif wpIndex == 5 then
        creature:RemoveEvents()
        creature:SendUnitSay("Moooooooooooooooo", 0)
        npcWaypoints[guid] = nil
        
    else
        wpIndex = wpIndex + 1
        npcWaypoints[guid] = wpIndex
        MoveToNextWaypoint(creature, wpIndex)
    end
end

local function StartEscort(creature)
    local guid = creature:GetGUIDLow()
    npcWaypoints[guid] = 1
    MoveToNextWaypoint(creature, 1)
    creature:RegisterEvent(OnReachWaypoint, 1000, 0)
end

local function OnQuestAccept(event, player, creature, quest)
    if quest:GetId() == QUEST_ID then
        creature:SendUnitSay("Moo", 0)
        StartEscort(creature)
    end
end

RegisterCreatureEvent(NPC_ID, 31, OnQuestAccept)
RegisterCreatureEvent(NPC_ID, 6, OnReachWaypoint)
