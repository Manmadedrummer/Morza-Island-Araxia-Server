--Betsy Escort Made by Manmadedrummer for the Araxia Server

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

local function MoveToNextWaypoint(eventId, delay, repeats, creature)
    local guid = creature:GetGUIDLow()
    local wpIndex = npcWaypoints[guid]

    if not wpIndex then
        wpIndex = 1
        npcWaypoints[guid] = wpIndex
    end

    local waypoint = WAYPOINTS[wpIndex]
    if waypoint then
        creature:MoveTo(wpIndex, waypoint[1], waypoint[2], waypoint[3], waypoint[4])
    else
        npcWaypoints[guid] = nil
    end
end

local function OnReachWaypoint(eventId, delay, repeats, creature)
    local guid = creature:GetGUIDLow()
    local wpIndex = npcWaypoints[guid]

    if wpIndex == 1 then
        creature:RemoveEvents()
        creature:SendUnitSay("Moo!! Moo!!", 0)
        local bandit1 = creature:SpawnCreature(BANDIT_ID, WAYPOINTS[1][1] + 2, WAYPOINTS[1][2] + 2, WAYPOINTS[1][3], WAYPOINTS[1][4], 5, 60000)
        local bandit2 = creature:SpawnCreature(BANDIT_ID, WAYPOINTS[1][1] - 2, WAYPOINTS[1][2] - 2, WAYPOINTS[1][3], WAYPOINTS[1][4], 5, 60000)
        if bandit1 then 
            bandit1:SendUnitYell("Get the cow!", 0)
            bandit1:AttackStart(creature) 
        end
        if bandit2 then 
            bandit2:SendUnitYell("There she is!", 0)
            bandit2:AttackStart(creature) 
        end

        creature:RegisterEvent(function(eventId, delay, repeats, c)
            npcWaypoints[guid] = 2
            MoveToNextWaypoint(eventId, delay, repeats, c)
        end, 5000, 1)

    elseif wpIndex == 2 then
        creature:RemoveEvents()
        creature:RegisterEvent(function(eventId, delay, repeats, c)
            npcWaypoints[guid] = 3
            MoveToNextWaypoint(eventId, delay, repeats, c)
        end, 5000, 1)

    elseif wpIndex == 3 then
        creature:RemoveEvents()
        creature:SendUnitSay("Moo!!", 0)
        local bandit = creature:SpawnCreature(BANDIT_ID, WAYPOINTS[3][1] + 2, WAYPOINTS[3][2] + 2, WAYPOINTS[3][3], WAYPOINTS[3][4], 5, 60000)
        if bandit then 
            bandit:SendUnitYell("You made an udder mistake.", 0)
            bandit:AttackStart(creature) 
        end

        creature:RegisterEvent(function(eventId, delay, repeats, c)
            npcWaypoints[guid] = 4
            MoveToNextWaypoint(eventId, delay, repeats, c)
        end, 10000, 1)

    elseif wpIndex == 4 then
        creature:RemoveEvents()
        creature:SendUnitSay("Moo!!", 0)
        local boss = creature:SpawnCreature(BOSS_ID, WAYPOINTS[4][1] + 2, WAYPOINTS[4][2] + 2, WAYPOINTS[4][3], WAYPOINTS[4][4], 5, 60000)
        if boss then 
            boss:SendUnitYell("Foolish cow, you're mine!", 0)
            boss:AttackStart(creature) 
        end

        creature:RegisterEvent(function(eventId, delay, repeats, c)
            npcWaypoints[guid] = 5
            MoveToNextWaypoint(eventId, delay, repeats, c)
        end, 20000, 1)

    elseif wpIndex == 5 then
        creature:RemoveEvents()
        creature:SendUnitSay("Moooooooooooooooo", 0)
        npcWaypoints[guid] = nil
    else
        wpIndex = wpIndex + 1
        npcWaypoints[guid] = wpIndex
        MoveToNextWaypoint(nil, nil, nil, creature)
    end
end

local function HandleWaypoint(eventId, creature, type, id)
    OnReachWaypoint(nil, nil, nil, creature)
end

local function StartEscort(creature)
    local guid = creature:GetGUIDLow()
    npcWaypoints[guid] = 1
    MoveToNextWaypoint(nil, nil, nil, creature)
    creature:RegisterEvent(OnReachWaypoint, 1000, 0)
end

local function OnQuestAccept(event, player, creature, quest)
    if quest:GetId() == QUEST_ID then
        creature:SendUnitSay("Moo ma moo", 0)
        StartEscort(creature)
    end
end

RegisterCreatureEvent(NPC_ID, 31, OnQuestAccept)
RegisterCreatureEvent(NPC_ID, 6, HandleWaypoint)
