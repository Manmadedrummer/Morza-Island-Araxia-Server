--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101090);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101090, 0, 0, 0, 0, 0, 'Invader Kobold', NULL, NULL, 0, 78, 80, 0, 26, 0, 1, 1.14286, 1, 1, 18, 1, 1, 0, 8, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 2572, 2572, 0, 0, 0, 40, 264, 'SmartAI', 1, 1, 15, 2, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101090);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101090, 0, 2153, 1, 1);

--SPELLS
DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 101090);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(101090, 0, 6016, 12340);


--Equipment
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101090);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101090, 1, 1910, 0, 0, 18019);



--SMART AI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 101090;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 101090);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101090, 0, 1, 0, 0, 0, 100, 0, 4000, 14100, 38000, 42000, 0, 0, 11, 6016, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Invader Kobold - In Combat - Cast \'Pierce Armor\'');

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101090);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000512, 101090, 0, 0, 5000, 0, 0, 1, 1, 0, -13890.3, 3228.64, 13.3224, 4.95728, 300, 0, 0, 83358, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000513, 101090, 0, 0, 5000, 0, 0, 1, 1, 0, -13891.2, 3223.34, 13.1612, 4.80865, 300, 0, 0, 83358, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000514, 101090, 0, 0, 5000, 0, 0, 1, 1, 0, -13888.1, 3225.65, 13.4992, 0.637718, 300, 0, 0, 83358, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000515, 101090, 0, 0, 5000, 0, 0, 1, 1, 0, -13898.3, 3234.31, 12.7602, 5.91834, 300, 0, 0, 88143, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000516, 101090, 0, 0, 5000, 0, 0, 1, 1, 0, -13893.9, 3238.71, 12.4824, 4.9717, 300, 0, 0, 85701, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000520, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13912.8, 3230.88, 13.2249, 0.666417, 300, 0, 0, 85701, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000521, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13908.8, 3241.12, 13.2706, 5.09104, 300, 0, 0, 83358, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000522, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13913.7, 3252.19, 12.369, 4.46217, 300, 0, 0, 85701, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000523, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13928.3, 3232.96, 14.0506, 0.57963, 300, 0, 0, 88143, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000524, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13933.7, 3238.53, 15.3052, 5.88947, 300, 0, 0, 85701, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000530, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13912.1, 3267.88, 12.7682, 4.12789, 300, 0, 0, 83358, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000531, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13923.3, 3264.76, 13.1646, 6.03987, 300, 0, 0, 83358, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000534, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13931.1, 3264.26, 13.2666, 0.167915, 300, 0, 0, 88143, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000537, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13949.9, 3249.17, 16.9033, 0.101158, 300, 0, 0, 88143, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000538, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13945, 3256.26, 17.5829, 4.84755, 300, 0, 0, 88143, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000542, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13941.7, 3268.68, 17.5302, 4.43349, 300, 0, 0, 83358, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000549, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13963.6, 3246.59, 15.7634, 6.23833, 300, 0, 0, 83358, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000552, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13974.2, 3256.73, 14.3864, 4.98075, 300, 0, 0, 83358, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000553, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13989.2, 3293.94, 10.2617, 5.33992, 300, 0, 0, 83358, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000554, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13984.1, 3295.62, 10.4963, 4.67767, 300, 0, 0, 83358, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000558, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13964.5, 3301.88, 12.125, 1.89014, 300, 0, 0, 85701, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000560, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13953.1, 3303.82, 10.8754, 1.78733, 300, 0, 0, 85701, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000562, 101090, 0, 0, 5000, 0, 0, 1, 1, 1, -13955.3, 3320.35, 12.0904, 4.04244, 300, 0, 0, 88143, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
