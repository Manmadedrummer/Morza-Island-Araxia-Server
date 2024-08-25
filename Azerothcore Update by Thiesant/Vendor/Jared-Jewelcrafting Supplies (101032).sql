--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101032);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101032, 0, 0, 0, 0, 0, 'Jared', 'Jewelcrafting Supplies', '', 0, 75, 75, 2, 35, 128, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 9767);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101032);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101032, 0, 28904, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101032);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000092, 101032, 0, 0, 5000, 0, 0, 1, 1, 0, -13711.4, 3057.99, 8.79678, 2.95702, 300, 0, 0, 10635, 0, 0, 128, 0, 0, '', NULL);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101032);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101032, 0, 20815, 0, 0, 0, 0),
(101032, 0, 20824, 0, 0, 0, 0),
(101032, 0, 41576, 0, 0, 2429, 0),
(101032, 0, 41577, 0, 0, 2429, 0),
(101032, 0, 41578, 0, 0, 2429, 0),
(101032, 0, 41579, 0, 0, 2429, 0),
(101032, 0, 41580, 0, 0, 2429, 0),
(101032, 0, 41581, 0, 0, 2429, 0),
(101032, 0, 41582, 0, 0, 2429, 0),
(101032, 0, 41686, 0, 0, 2429, 0),
(101032, 0, 41687, 0, 0, 2429, 0),
(101032, 0, 41688, 0, 0, 2429, 0),
(101032, 0, 41689, 0, 0, 2429, 0),
(101032, 0, 41690, 0, 0, 2429, 0),
(101032, 0, 41692, 0, 0, 2429, 0),
(101032, 0, 41693, 0, 0, 2429, 0),
(101032, 0, 41694, 0, 0, 2429, 0),
(101032, 0, 41696, 0, 0, 2429, 0),
(101032, 0, 41697, 0, 0, 2429, 0),
(101032, 0, 41698, 0, 0, 2429, 0),
(101032, 0, 41699, 0, 0, 2429, 0),
(101032, 0, 41701, 0, 0, 2429, 0),
(101032, 0, 41702, 0, 0, 2429, 0),
(101032, 0, 41703, 0, 0, 2429, 0),
(101032, 0, 41704, 0, 0, 2430, 0),
(101032, 0, 41705, 0, 0, 2430, 0),
(101032, 0, 41706, 0, 0, 2430, 0),
(101032, 0, 41707, 0, 0, 2430, 0),
(101032, 0, 41708, 0, 0, 2430, 0),
(101032, 0, 41709, 0, 0, 2430, 0),
(101032, 0, 41710, 0, 0, 2430, 0),
(101032, 0, 41711, 0, 0, 2430, 0),
(101032, 0, 41719, 0, 0, 2429, 0),
(101032, 0, 41747, 0, 0, 2429, 0),
(101032, 0, 42138, 0, 0, 2429, 0),
(101032, 0, 42225, 0, 0, 2433, 0),
(101032, 0, 42298, 0, 0, 2434, 0),
(101032, 0, 42299, 0, 0, 2434, 0),
(101032, 0, 42300, 0, 0, 2434, 0),
(101032, 0, 42301, 0, 0, 2434, 0),
(101032, 0, 42302, 0, 0, 2434, 0),
(101032, 0, 42303, 0, 0, 2434, 0),
(101032, 0, 42304, 0, 0, 2434, 0),
(101032, 0, 42305, 0, 0, 2434, 0),
(101032, 0, 42306, 0, 0, 2434, 0),
(101032, 0, 42307, 0, 0, 2434, 0),
(101032, 0, 42308, 0, 0, 2434, 0),
(101032, 0, 42309, 0, 0, 2434, 0),
(101032, 0, 42310, 0, 0, 2434, 0),
(101032, 0, 42311, 0, 0, 2434, 0),
(101032, 0, 42312, 0, 0, 2434, 0),
(101032, 0, 42313, 0, 0, 2434, 0),
(101032, 0, 42314, 0, 0, 2434, 0),
(101032, 0, 42315, 0, 0, 2434, 0),
(101032, 0, 42648, 0, 0, 2558, 0),
(101032, 0, 42649, 0, 0, 2558, 0),
(101032, 0, 42650, 0, 0, 2558, 0),
(101032, 0, 42651, 0, 0, 2558, 0),
(101032, 0, 42652, 0, 0, 2558, 0),
(101032, 0, 42653, 0, 0, 2558, 0),
(101032, 0, 43317, 0, 0, 2436, 0),
(101032, 0, 43318, 0, 0, 2436, 0),
(101032, 0, 43319, 0, 0, 2436, 0),
(101032, 0, 43320, 0, 0, 2436, 0),
(101032, 0, 43485, 0, 0, 2436, 0),
(101032, 0, 43497, 0, 0, 2436, 0),
(101032, 0, 43597, 0, 0, 2558, 0);
