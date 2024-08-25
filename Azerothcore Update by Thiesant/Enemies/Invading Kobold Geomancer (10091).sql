--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101091);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101091, 0, 0, 0, 0, 0, 'Invading Kobold Geomancer', NULL, NULL, 0, 78, 80, 0, 26, 0, 1, 0.85714, 1, 1, 18, 1, 1, 0, 7, 2000, 2000, 1, 1, 8, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 476, 476, 0, 0, 0, 3, 13, 'SmartAI', 1, 1, 12, 10, 1, 1, 0, 100, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101091);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101091, 0, 163, 1, 1);

--Equipment
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101091);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101091, 1, 1907, 0, 0, 18019);

--Spells
DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 101091);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(101091, 0, 133, 12340),
(101091, 1, 12544, 12340);


--Smart AI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 101091;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 101091);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101091, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 1800000, 1800000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Invading Kobold Geomancer - Out of Combat - Cast \'Frost Armor\''),
(101091, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2300, 3900, 0, 0, 11, 20793, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Invading Kobold Geomancer - In Combat - Cast \'Fireball\'');


--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101091);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000527, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13895.1, 3235.55, 12.6483, 5.20955, 300, 0, 0, 46965, 84590, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000528, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13917, 3235.11, 14.0552, 0.20797, 300, 0, 0, 46965, 84590, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000529, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13914.5, 3262.1, 11.9143, 4.929, 300, 0, 0, 49354, 88140, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000532, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13930.5, 3258.93, 13.1134, 0.402907, 300, 0, 0, 49354, 88140, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000533, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13927.1, 3269.53, 13.563, 5.71408, 300, 0, 0, 48285, 86360, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000535, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13944.4, 3245.34, 16.9951, 5.20522, 300, 0, 0, 46965, 84590, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000536, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13940.3, 3248.18, 16.9337, 5.045, 300, 0, 0, 48285, 86360, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000539, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13936.5, 3266.09, 17.5399, 4.35637, 300, 0, 0, 48285, 86360, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000540, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13936, 3271.45, 17.4984, 4.41181, 300, 0, 0, 46965, 84590, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000541, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13941, 3274.35, 17.4885, 4.19818, 300, 0, 0, 48285, 86360, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000548, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13964, 3250.9, 14.8552, 0.370384, 300, 0, 0, 46965, 84590, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000550, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13980.7, 3258.36, 13.8956, 5.00879, 300, 0, 0, 46965, 84590, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000551, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13973.8, 3262.51, 13.5969, 5.12896, 300, 0, 0, 49354, 88140, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000555, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13985.4, 3288.37, 10.2987, 4.68167, 300, 0, 0, 48285, 86360, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000559, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13957.7, 3306.72, 10.7274, 2.18388, 300, 0, 0, 48285, 86360, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000561, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13962.2, 3319.45, 11.5735, 4.07983, 300, 0, 0, 46965, 84590, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000563, 101091, 0, 0, 5000, 0, 0, 1, 1, 1, -13946.9, 3310.54, 12.066, 2.61129, 300, 0, 0, 48285, 86360, 0, 0, 0, 0, '', NULL, 0, NULL);

