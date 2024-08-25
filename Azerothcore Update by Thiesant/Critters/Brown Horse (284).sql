--Creature
DELETE FROM `creature_template` WHERE (`entry` = 284);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(284, 0, 0, 0, 0, 0, 'Brown Horse', NULL, NULL, 0, 2, 2, 0, 35, 0, 0.91, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 140, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 284);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(284, 0, 2404, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 284);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000030, 284, 0, 0, 5000, 0, 0, 1, 1, 0, -13848.2, 3374.26, 57.4137, 4.53495, 300, 0, 0, 68, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000031, 284, 0, 0, 5000, 0, 0, 1, 1, 0, -13843.9, 3373.77, 57.4386, 4.61907, 300, 0, 0, 68, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000032, 284, 0, 0, 5000, 0, 0, 1, 1, 0, -13840.8, 3373.79, 57.4567, 4.73939, 300, 0, 0, 68, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000033, 284, 0, 0, 5000, 0, 0, 1, 1, 0, -13851.3, 3374.72, 57.3956, 4.60054, 300, 0, 0, 68, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
