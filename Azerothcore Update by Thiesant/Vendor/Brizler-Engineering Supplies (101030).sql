--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101030);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101030, 0, 0, 0, 0, 0, 'Brizler', 'Engineering Supplies', NULL, 0, 65, 67, 1, 35, 4224, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1.35, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101030);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101030, 0, 10742, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101030);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000090, 101030, 0, 0, 5000, 0, 0, 1, 1, 0, -13876.4, 3087.56, 6.92293, 6.12642, 300, 0, 0, 8257, 0, 0, 4224, 0, 0, '', NULL);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101030);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101030, 0, 2901, 0, 0, 0, 0),
(101030, 0, 5956, 0, 0, 0, 0),
(101030, 0, 10647, 0, 0, 0, 0),
(101030, 0, 10648, 0, 0, 0, 0),
(101030, 0, 23736, 2, 10800, 0, 0),
(101030, 0, 23737, 3, 10800, 0, 0),
(101030, 0, 23768, 1, 10800, 0, 0),
(101030, 0, 23771, 3, 3600, 0, 0),
(101030, 0, 23781, 1, 32400, 0, 0),
(101030, 0, 23782, 1, 7200, 0, 0),
(101030, 0, 23783, 2, 3600, 0, 0),
(101030, 0, 23784, 1, 10800, 0, 0),
(101030, 0, 23786, 1, 150000, 0, 0),
(101030, 0, 23787, 1, 180000, 0, 0);
