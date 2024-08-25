--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101058);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101058, 0, 0, 0, 0, 0, 'Imposter Mage', '', '0', 0, 80, 82, 0, 14, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 10.12, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 1826, 1826, 0, 0, 0, 99, 426, 'SmartAI', 1, 1, 3.915, 2, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101058);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101058, 0, 10286, 1, 0.25),
(101058, 1, 10287, 1, 0.25),
(101058, 2, 10288, 1, 0.25),
(101058, 3, 10289, 1, 0.25);

--EQUIPMENT
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101058);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101058, 1, 11343, 0, 0, 18019);

--SPELLS
DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 101058);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(101058, 0, 11990, 12340),
(101058, 1, 20832, 12340);



--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101058);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000268, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14137.7, 3064.25, 197.548, 2.7029, 300, 0, 0, 7407, 16278, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000269, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14137.5, 3057.17, 190.189, 1.68165, 300, 0, 0, 8225, 17628, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000270, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14136.6, 3084.8, 189.812, 1.74974, 300, 0, 0, 8047, 17272, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000271, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14174.1, 3104.73, 190.243, 6.15983, 300, 0, 0, 8047, 17272, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000272, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14181, 3101.26, 190.175, 6.00228, 300, 0, 0, 7163, 15962, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000273, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14171.4, 3092.56, 197.401, 5.74844, 300, 0, 0, 8047, 17272, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000274, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14181.9, 3098.53, 197.4, 5.75495, 300, 0, 0, 7827, 16918, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000275, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14178.9, 3105.17, 197.4, 5.61075, 300, 0, 0, 8225, 17628, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000276, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14164.7, 3100.98, 197.4, 5.66283, 300, 0, 0, 7616, 16626, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000277, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14140.5, 3074.26, 205.921, 2.56671, 300, 0, 0, 8225, 17628, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000278, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14126.9, 3094.77, 205.921, 5.20769, 300, 0, 0, 7163, 15962, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000279, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14147.1, 3092.04, 205.92, 0.685443, 300, 0, 0, 8047, 17272, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000280, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14128.7, 3104.88, 190.173, 4.12721, 300, 0, 0, 7827, 16918, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000281, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14149.8, 3065.72, 190.17, 5.57171, 300, 0, 0, 7163, 15962, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000282, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14146.5, 3040.14, 190.178, 2.35009, 300, 0, 0, 8047, 17272, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000283, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14141.6, 3046.08, 190.183, 2.90552, 300, 0, 0, 8225, 17628, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000284, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14149.6, 3048.43, 190.174, 3.81344, 300, 0, 0, 8225, 17628, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000285, 101058, 0, 0, 5000, 0, 0, 1, 1, 1, -14115.9, 3077.09, 190.174, 3.46747, 300, 0, 0, 8225, 17628, 0, 0, 0, 0, '', NULL, 0, NULL);


--SMART SCRIPT
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 101058);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101058, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Firecaller - In Combat CMC - Cast \'Fireball\''),
(101058, 0, 1, 0, 0, 0, 85, 0, 8000, 14000, 20000, 26000, 0, 0, 11, 11990, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Firecaller - In Combat - Cast \'Rain of Fire\''),
(101058, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sandfury Firecaller - Between 0-15% Health - Flee For Assist (No Repeat)');

