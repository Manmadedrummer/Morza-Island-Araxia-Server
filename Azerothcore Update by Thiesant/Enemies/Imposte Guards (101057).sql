--Creatures
DELETE FROM `creature_template` WHERE (`entry` = 101057);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101057, 0, 0, 0, 0, 0, 'Imposter Guard', '', NULL, 0, 75, 80, 0, 168, 0, 1.2, 1.14286, 1, 1, 20, 1, 1, 0, 2, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 3, 2, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101057);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101057, 0, 16649, 1, 0.25),
(101057, 1, 16650, 1, 0.25),
(101057, 2, 16651, 1, 0.25),
(101057, 3, 16652, 1, 0.25);

--EQUIPMENT
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101057);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101057, 1, 5287, 0, 0, 18019);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101057);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000243, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14080.4, 3120.24, 174.579, 6.22925, 180, 0, 0, 16026, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000244, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14082.5, 3103.67, 177.681, 6.25061, 180, 0, 0, 14748, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000245, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14096.4, 3112.84, 185.69, 0.392173, 180, 0, 0, 15156, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000246, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14091.8, 3098.34, 186.116, 0.600462, 180, 0, 0, 15156, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000247, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14138.1, 3087.92, 189.813, 1.87572, 180, 0, 0, 15156, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000248, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14133, 3087.43, 189.813, 2.52194, 180, 0, 0, 14343, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000249, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14142, 3082.7, 189.812, 1.34565, 180, 0, 0, 13956, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000250, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14135.1, 3081.75, 189.812, 1.0893, 180, 0, 0, 15156, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000251, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14156.8, 3098.71, 190.173, 5.84119, 180, 0, 0, 14748, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000252, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14168.9, 3091.54, 190.175, 2.07214, 180, 0, 0, 15156, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000253, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14155.3, 3086.81, 197.401, 1.92527, 180, 0, 0, 15582, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000254, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14152.3, 3098.87, 197.401, 4.2151, 180, 0, 0, 14343, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000255, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14133.2, 3107.46, 190.174, 4.46344, 180, 0, 0, 14748, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000256, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14130.5, 3106.67, 190.174, 4.03084, 180, 0, 0, 16026, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000257, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14116.9, 3071.36, 190.174, 2.32865, 180, 0, 0, 14343, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000258, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14115.6, 3074.36, 190.174, 2.93215, 180, 0, 0, 15582, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000259, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14147.7, 3062.48, 190.173, 6.20318, 180, 0, 0, 16026, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000260, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14151.4, 3063.98, 197.548, 4.3618, 180, 0, 0, 15582, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000261, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14149.6, 3068.96, 197.548, 4.48464, 180, 0, 0, 14343, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000262, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14142.1, 3050.46, 197.548, 1.15203, 180, 0, 0, 15582, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000263, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14132.5, 3072.68, 205.921, 3.28965, 180, 0, 0, 14748, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000264, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14124.6, 3082.71, 205.921, 4.26166, 180, 0, 0, 13956, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000265, 101057, 0, 0, 5000, 0, 0, 1, 1, 1, -14135.7, 3096.01, 205.921, 0.182853, 180, 0, 0, 14343, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

--SPELL
DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 101057);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(101057, 0, 845, 0),
(101057, 1, 57094, 0);




--SMART SCRIPT
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 101057;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 101057);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101057, 0, 1, 0, 0, 0, 100, 0, 1000, 1000, 3000, 5000, 0, 0, 11, 57094, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Imposter Guard - In Combat - Cast \'Bash\''),
(101057, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 845, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Imposter Guard - In Combat - Cast \'Cleave\'');
