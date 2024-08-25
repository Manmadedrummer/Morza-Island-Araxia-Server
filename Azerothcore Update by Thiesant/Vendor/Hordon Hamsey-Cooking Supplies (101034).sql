--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101034);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101034, 0, 0, 0, 0, 0, 'Horden Hamsey', 'Chef', '', 0, 75, 75, 2, 35, 640, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101034);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101034, 0, 25714, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101034);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000094, 101034, 0, 0, 5000, 0, 0, 1, 1, 0, -13712.1, 2968.65, 8.89379, 0.771998, 300, 0, 0, 10635, 0, 0, 640, 0, 0, '', NULL);

--EQUIPMENT
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101034);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101034, 1, 0, 1292, 0, 0);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101034);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101034, 0, 159, 0, 0, 0, 0),
(101034, 0, 2678, 0, 0, 0, 0),
(101034, 0, 30817, 0, 0, 0, 0),
(101034, 0, 33444, 0, 0, 0, 0),
(101034, 0, 33445, 0, 0, 0, 0),
(101034, 0, 33454, 0, 0, 0, 0),
(101034, 0, 35953, 0, 0, 0, 0),
(101034, 0, 35954, 0, 0, 0, 0);
