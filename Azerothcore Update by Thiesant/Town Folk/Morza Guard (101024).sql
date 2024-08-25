--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101024);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101024, 0, 0, 0, 0, 0, 'Morza Guard', NULL, NULL, 0, 45, 45, 0, 35, 1, 1, 1.42857, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 2386, 2386, 0, 0, 0, 0, 0, 'GuardAI', 0, 1, 1.25, 1, 1, 1, 0, 144, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101024);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101024, 0, 3705, 1, 0.25),
(101024, 1, 3708, 1, 0.25),
(101024, 2, 25021, 1, 0.25),
(101024, 3, 25065, 1, 0.25);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101024);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000069, 101024, 0, 0, 5000, 0, 0, 1, 1, 0, -13793.8, 2990.7, 6.36903, 1.46509, 300, 0, 0, 2310, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000070, 101024, 0, 0, 5000, 0, 0, 1, 1, 0, -13807.4, 2989.15, 6.24612, 1.2074, 300, 0, 0, 2310, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000071, 101024, 0, 0, 5000, 0, 0, 1, 1, 0, -13799.5, 2968.03, 6.3885, 1.50264, 300, 0, 0, 2310, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(9000072, 101024, 0, 0, 5000, 0, 0, 1, 1, 0, -13762.5, 3025.35, 4.06736, 0.0686545, 300, 0, 0, 2310, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(9000073, 101024, 0, 0, 5000, 0, 0, 1, 1, 0, -13766.9, 3052.85, 3.36426, 3.10367, 300, 0, 0, 2310, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000074, 101024, 0, 0, 5000, 0, 0, 1, 1, 0, -13819.6, 3115.36, 1.83398, 4.60842, 300, 0, 0, 2310, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000075, 101024, 0, 0, 5000, 0, 0, 1, 1, 0, -13815.6, 3179.85, 2.24037, 5.9476, 300, 0, 0, 2310, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000076, 101024, 0, 0, 5000, 0, 0, 1, 1, 0, -14026.2, 3268.49, 122.056, 5.88901, 300, 0, 0, 2310, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000077, 101024, 0, 0, 5000, 0, 0, 1, 1, 0, -13821.4, 2918.75, 7.62661, 2.14587, 300, 0, 0, 2310, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000078, 101024, 0, 0, 5000, 0, 0, 1, 1, 0, -13795.5, 2936, 21.5507, 1.52112, 300, 0, 0, 2310, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000079, 101024, 0, 0, 5000, 0, 0, 1, 1, 0, -13806.9, 2935.99, 21.5507, 1.49575, 300, 0, 0, 2310, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000086, 101024, 0, 0, 5000, 0, 0, 1, 1, 1, -13937.9, 2944.21, 3.41601, 5.84662, 300, 0, 0, 2887, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

--EQUIPMENT
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101024);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101024, 1, 1899, 143, 2551, 18019);
