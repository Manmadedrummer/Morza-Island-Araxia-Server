--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101081);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101081, 0, 0, 0, 0, 0, 'Joe Dirt', 'Waste Management', NULL, 3381, 31, 31, 0, 35, 1, 1.09, 1.14286, 1, 1, 18, 1, 0, 0, 1, 1700, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.1, 1, 1, 1, 0, 0, 1, 8388624, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101081);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101081, 0, 11033, 1, 1);

--EQUIPMENT
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101081);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101081, 1, 3362, 13605, 0, 18019);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101081);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000430, 101081, 0, 0, 5000, 0, 0, 1, 1, 1, -13709.8, 2968.63, 15.6362, 5.49901, 300, 0, 0, 1383, 0, 0, 0, 0, 0, '', NULL, 0, NULL);


