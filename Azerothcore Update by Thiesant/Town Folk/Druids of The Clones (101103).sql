--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101103);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101103, 0, 0, 0, 0, 0,  'Druid of The Clones', '', NULL, 0, 75, 80, 0, 35, 1, 1.2, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 197506, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101103);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101103, 0, 467, 1, 0.25),
(101103, 1, 15815, 1, 0.25),
(101103, 2, 13409, 1, 0.25),
(101103, 3, 4519, 1, 0.25);

--EQUIPMENT
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101103);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101103, 1, 1905, 1957, 0, 18019);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101103);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000602, 101103, 0, 0, 5000, 0, 0, 1, 1, 1, -13775.8, 3376.89, 13.169, 5.04136, 300, 0, 0, 6492, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000603, 101103, 0, 0, 5000, 0, 0, 1, 1, 1, -13757.1, 3373.35, 12.5882, 4.36309, 300, 0, 0, 6315, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000604, 101103, 0, 0, 5000, 0, 0, 1, 1, 1, -13744.9, 3333.16, 11.8869, 2.94247, 300, 0, 0, 5976, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000605, 101103, 0, 0, 5000, 0, 0, 1, 1, 1, -13785.5, 3329.65, 14.2944, 0.398952, 300, 0, 0, 5815, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000606, 101103, 0, 0, 5000, 0, 0, 1, 1, 1, -13794.2, 3343.84, 16.2746, 0.479062, 300, 0, 0, 5976, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
