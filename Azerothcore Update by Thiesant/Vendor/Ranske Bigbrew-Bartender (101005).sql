--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101005);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101005, 0, 0, 0, 0, 0, 'Ranske Bigbrew', 'Bartender', NULL, 701, 30, 30, 0, 35, 641, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.05, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101005);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101005, 0, 1490, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101005);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000016, 101005, 0, 0, 5000, 0, 0, 1, 1, 0, -13682.9, 2968.4, 9.25184, 2.54566, 300, 0, 0, 1003, 0, 0, 641, 0, 0, '', NULL, 0, NULL);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101005);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101005, 0, 2593, 0, 0, 0, 0),
(101005, 0, 2594, 0, 0, 0, 0),
(101005, 0, 2595, 0, 0, 0, 0),
(101005, 0, 2596, 0, 0, 0, 0),
(101005, 0, 2686, 0, 0, 0, 0),
(101005, 0, 2723, 0, 0, 0, 0),
(101005, 0, 2894, 0, 0, 0, 0),
(101005, 0, 4595, 0, 0, 0, 0),
(101005, 0, 18269, 0, 0, 0, 0),
(101005, 0, 18284, 0, 0, 0, 0),
(101005, 0, 18287, 0, 0, 0, 0),
(101005, 0, 18288, 0, 0, 0, 0),
(101005, 0, 19222, 0, 0, 0, 0),
(101005, 0, 28284, 0, 0, 0, 0),
(101005, 0, 32668, 0, 0, 0, 0),
(101005, 0, 38432, 0, 0, 0, 0),
(101005, 0, 38466, 0, 0, 0, 0);
