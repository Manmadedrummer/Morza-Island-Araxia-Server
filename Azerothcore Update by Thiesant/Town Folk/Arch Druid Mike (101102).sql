--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101102);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101102, 0, 0, 0, 0, 0, 'Arch Druid Mike', 'Go Clones', NULL, 0, 83, 83, 2, 35, 2, 1, 1.14286, 1, 1, 20, 1, 3, 0, 35, 2000, 2000, 1, 1, 2, 64, 2048, 0, 0, 0, 0, 0, 0, 7, 76, 0, 0, 0, 0, 0, 700000, 750000, '', 0, 1, 400, 20, 1, 1, 0, 0, 1, 617299835, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101102);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101102, 0, 1678, 1, 1);

--Template Resistance
DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 101102);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(101102, 2, 630, 12340),
(101102, 3, 504, 12340),
(101102, 4, 504, 12340),
(101102, 5, 504, 12340),
(101102, 6, 504, 12340);

--Template Spells
DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 101102);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(101102, 0, 20699, 12340),
(101102, 1, 20701, 12340),
(101102, 2, 20702, 12340),
(101102, 3, 20698, 12340);

--Equipment
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101102);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101102, 1, 11424, 0, 0, 18019);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101102);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000599, 101102, 0, 0, 5000, 0, 0, 1, 1, 1, -13790.3, 3363.69, 15.3409, 5.77571, 300, 0, 0, 5578000, 85160, 0, 0, 0, 0, '', NULL, 0, NULL);

