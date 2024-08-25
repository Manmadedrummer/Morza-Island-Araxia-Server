--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101060);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101060, 0, 0, 0, 0, 0, 'Malfunctioning Harvester', '', '', 0, 77, 80, 2, 1703, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 5, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 9, 0, 25623, 0, 0, 0, 0, 0, 0, '', 0, 1, 12, 1, 2, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101060);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101060, 0, 23304, 1, 1);

--SPAWNS
DELETE FROM `creature` WHERE (`id1` = 101060);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000001, 101060, 0, 0, 5000, 0, 0, 1, 1, 0, -13944.9, 3375.74, 56.7928, 0.364881, 180, 0, 0, 147927, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(9000002, 101060, 0, 0, 5000, 0, 0, 1, 1, 0, -13941.3, 3352.34, 57.6119, 0.0624599, 300, 0, 0, 155364, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(9000003, 101060, 0, 0, 5000, 0, 0, 1, 1, 0, -13916.2, 3359.92, 57.7494, 1.25611, 300, 0, 0, 155364, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(9000004, 101060, 0, 0, 5000, 0, 0, 1, 1, 0, -13897.7, 3374.96, 57.663, 0.795472, 300, 0, 0, 150202, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(9000005, 101060, 0, 0, 5000, 0, 0, 1, 1, 0, -13988, 3376.02, 57.0593, 3.13737, 300, 0, 0, 160710, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(9000006, 101060, 0, 0, 5000, 0, 0, 1, 1, 0, -13958.4, 3352.8, 57.0386, 3.37904, 300, 0, 0, 150202, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(9000007, 101060, 0, 0, 5000, 0, 0, 1, 1, 0, -13985.5, 3356.09, 57.405, 2.49649, 300, 0, 0, 166320, 0, 2, 0, 0, 0, '', NULL, 0, NULL);

--WAYPOINTS
DELETE FROM `creature_addon` WHERE (`guid` IN (9000001, 9000002, 9000003, 9000004, 9000005, 9000006, 9000007));
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(9000001, 9000001, 0, 0, 0, 0, 0, NULL),
(9000002, 9000002, 0, 0, 0, 0, 0, NULL),
(9000003, 9000003, 0, 0, 0, 0, 0, NULL),
(9000004, 9000004, 0, 0, 0, 0, 0, NULL),
(9000005, 9000005, 0, 0, 0, 0, 0, NULL),
(9000006, 9000006, 0, 0, 0, 0, 0, NULL),
(9000007, 9000007, 0, 0, 0, 0, 0, NULL);