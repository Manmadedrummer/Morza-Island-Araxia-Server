--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101039);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101039, 0, 0, 0, 0, 0, 'Concert Goer', 'Fan', '', 0, 1, 1, 0, 35, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101039);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101039, 0, 983, 1, 0.25),
(101039, 1, 825, 1, 0.25),
(101039, 2, 4502, 1, 0.25),
(101039, 3, 15829, 1, 0.25);

--CREATURE ADDON
DELETE FROM `creature_template_addon` WHERE (`entry` = 101039);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(101039, 0, 0, 0, 0, 10, 0, '');

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101039);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000412, 101039, 0, 0, 5000, 0, 0, 1, 1, 0, -13668.7, 3056.66, 3.67056, 1.71641, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000413, 101039, 0, 0, 5000, 0, 0, 1, 1, 0, -13673.1, 3056.14, 3.66897, 1.69505, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000414, 101039, 0, 0, 5000, 0, 0, 1, 1, 0, -13658.2, 3082.43, 1.03154, 3.80196, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000415, 101039, 0, 0, 5000, 0, 0, 1, 1, 0, -13646.4, 3077.57, 1.06942, 2.82461, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000416, 101039, 0, 0, 5000, 0, 0, 1, 1, 0, -13661, 3072.72, 2.74917, 2.43073, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000417, 101039, 0, 0, 5000, 0, 0, 1, 1, 0, -13660.1, 3066.77, 2.78707, 1.97127, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000418, 101039, 0, 0, 5000, 0, 0, 1, 1, 0, -13667.9, 3068.63, 10.0314, 2.05939, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000419, 101039, 0, 0, 5000, 0, 0, 1, 1, 0, -13660.5, 3080.66, 9.97206, 3.38656, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000420, 101039, 0, 0, 5000, 0, 0, 1, 1, 0, -13660.4, 3078.49, 9.98601, 3.43462, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000421, 101039, 0, 0, 5000, 0, 0, 1, 1, 0, -13669.4, 3064.1, 10.0555, 2.21662, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
