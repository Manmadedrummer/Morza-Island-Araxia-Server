--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101075);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101075, 0, 0, 0, 0, 0, 'Concert Bruiser', '', NULL, 0, 70, 70, 1, 1896, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 3, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 3, 1, 1, 1, 0, 144, 1, 0, 0, 65536, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101075);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101075, 0, 19926, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101075);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000306, 101075, 0, 0, 5000, 0, 0, 1, 1, 1, -13655.8, 3054.29, 1.62621, 5.70697, 300, 0, 0, 20958, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(9000307, 101075, 0, 0, 5000, 0, 0, 1, 1, 1, -13650.3, 3065.09, 1.56852, 5.75787, 300, 0, 0, 20958, 0, 0, 0, 0, 0, '', 0, 0, NULL);
