--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101021);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101021, 0, 0, 0, 0, 0, 'Citizen of Morza Island', '', '', 0, 55, 80, 0, 35, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101021);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101021, 0, 19620, 1, 0.25),
(101021, 1, 25555, 1, 0.25),
(101021, 2, 31416, 1, 0.25),
(101021, 3, 16732, 1, 0.25);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101021);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000040, 101021, 0, 0, 5000, 0, 0, 1, 1, 0, -13659.2, 3033.54, 2.03778, 2.98761, 300, 0, 0, 2819, 2790, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000041, 101021, 0, 0, 5000, 0, 0, 1, 1, 0, -13721.4, 3039.77, 3.11806, 3.14382, 300, 0, 0, 2515, 2486, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000042, 101021, 0, 0, 5000, 0, 0, 1, 1, 0, -13773.7, 3048.22, 3.92361, 1.85404, 300, 0, 0, 2442, 2434, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000043, 101021, 0, 0, 5000, 0, 0, 1, 1, 0, -13786.8, 3070.94, 3.25908, 1.99424, 300, 0, 0, 2159, 2163, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000044, 101021, 0, 0, 5000, 0, 0, 1, 1, 0, -13804.6, 3082.63, 3.5542, 3.15985, 300, 0, 0, 3330, 3231, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000045, 101021, 0, 0, 5000, 0, 0, 1, 1, 0, -13830.8, 3074.68, 4.53927, 3.44824, 300, 0, 0, 3722, 3561, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000046, 101021, 0, 0, 5000, 0, 0, 1, 1, 0, -13868.4, 3057.97, 4.8012, 0.103784, 300, 0, 0, 2665, 2620, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000047, 101021, 0, 0, 5000, 0, 0, 1, 1, 0, -13838.2, 3042.21, 5.11322, 5.36155, 300, 0, 0, 2740, 2705, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000048, 101021, 0, 0, 5000, 0, 0, 1, 1, 0, -13810.1, 3019.25, 5.48815, 0.194576, 300, 0, 0, 2442, 2434, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000049, 101021, 0, 0, 5000, 0, 0, 1, 1, 0, -13856.1, 2950.89, 1.47809, 3.6058, 300, 0, 0, 3933, 3725, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000050, 101021, 0, 0, 5000, 0, 0, 1, 1, 0, -13913.8, 2938.38, 3.71232, 0.126482, 300, 0, 0, 2227, 2241, 0, 0, 0, 0, '', NULL, 0, NULL);
