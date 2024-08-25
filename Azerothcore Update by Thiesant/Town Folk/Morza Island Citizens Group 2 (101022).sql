--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101022);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101022, 0, 0, 0, 0, 0, 'Citizen of Morza Island', '', '', 0, 55, 80, 0, 35, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101022);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101022, 0, 10252, 1, 0.25),
(101022, 1, 19185, 1, 0.25),
(101022, 2, 18391, 1, 0.25),
(101022, 3, 24052, 1, 0.25);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101022);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000051, 101022, 0, 0, 5000, 0, 0, 1, 1, 0, -13787.4, 3032.12, 5.14527, 3.01748, 300, 0, 0, 4274, 3994, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000052, 101022, 0, 0, 5000, 0, 0, 1, 1, 0, -13826.7, 3055.47, 5.10603, 1.3672, 300, 0, 0, 2442, 2434, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000053, 101022, 0, 0, 5000, 0, 0, 1, 1, 0, -13808.7, 3087.24, 3.59592, 1.36587, 300, 0, 0, 2159, 2163, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000054, 101022, 0, 0, 5000, 0, 0, 1, 1, 0, -13724, 3005.55, 5.57356, 2.41115, 300, 0, 0, 3153, 3080, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000055, 101022, 0, 0, 5000, 0, 0, 1, 1, 0, -13790.7, 3072.18, 3.36534, 2.57271, 300, 0, 0, 2227, 2241, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000056, 101022, 0, 0, 5000, 0, 0, 1, 1, 0, -13805, 3193.02, 3.90134, 1.39108, 300, 0, 0, 3240, 3155, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000057, 101022, 0, 0, 5000, 0, 0, 1, 1, 0, -13776.3, 3234.96, 4.77707, 1.40309, 300, 0, 0, 3619, 3466, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000058, 101022, 0, 0, 5000, 0, 0, 1, 1, 0, -13707.5, 3030.98, 3.22855, 6.16968, 300, 0, 0, 2590, 2568, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000059, 101022, 0, 0, 5000, 0, 0, 1, 1, 0, -13632.8, 3089.61, 1.50344, 5.45669, 300, 0, 0, 2297, 2289, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000060, 101022, 0, 0, 5000, 0, 0, 1, 164, 0, -13847.2, 2992.86, 3.00949, 1.70968, 300, 0, 0, 2740, 2705, 0, 0, 0, 0, '', NULL, 0, NULL);
