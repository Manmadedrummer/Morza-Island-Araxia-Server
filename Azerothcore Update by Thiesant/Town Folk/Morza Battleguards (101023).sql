--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101023);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101023, 0, 0, 0, 0, 0, 'Morza Battleguard', '', NULL, 0, 72, 72, 0, 35, 0, 1.2, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 2, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101023);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101023, 0, 496, 1, 0.3),
(101023, 1, 164, 1, 0.3),
(101023, 2, 6108, 1, 0.4);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101023);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000061, 101023, 0, 0, 5000, 0, 0, 1, 1, 0, -13821, 3015.07, 4.91075, 1.39166, 300, 0, 0, 8556, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000062, 101023, 0, 0, 5000, 0, 0, 1, 1, 0, -13801.3, 3114.84, 2.00577, 4.60842, 300, 0, 0, 8556, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000063, 101023, 0, 0, 5000, 0, 0, 1, 1, 0, -13767.2, 3225.34, 4.73773, 3.3455, 300, 0, 0, 8556, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000064, 101023, 0, 0, 5000, 0, 0, 1, 1, 0, -13873.7, 3236.18, 47.8454, 0.787299, 300, 0, 0, 8556, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000065, 101023, 0, 0, 5000, 0, 0, 1, 1, 0, -13826.9, 2920.81, 7.62661, 0.671836, 300, 0, 0, 8556, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000066, 101023, 0, 0, 5000, 0, 0, 1, 1, 0, -13812.1, 2926.65, 22.8442, 0.638566, 300, 0, 0, 8556, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000067, 101023, 0, 0, 5000, 0, 0, 1, 1, 0, -13790.7, 2926.34, 22.845, 2.51716, 300, 0, 0, 8556, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000068, 101023, 0, 0, 5000, 0, 0, 1, 1, 0, -13825.9, 2942.08, 31.7074, 3.01785, 300, 0, 0, 8556, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000087, 101023, 0, 0, 5000, 0, 0, 1, 1, 1, -13919.8, 2932.73, 2.94452, 1.24025, 300, 0, 0, 10695, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

--EQUIPMENT
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101023);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101023, 1, 2183, 2051, 0, 18019);
