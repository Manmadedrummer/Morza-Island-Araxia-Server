--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101098);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101098, 0, 0, 0, 0, 0, 'Morza Lasher', '', NULL, 0, 70, 80, 0, 7, 0, 1.2, 1.14286, 1, 1, 20, 1, 1, 0, 10, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 4, 0, 800000, 0, 0, 0, 0, 100, 15000, '', 0, 1, 10, 1, 1, 1, 0, 100, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101098);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101098, 0, 19006, 1, 1);

--Creature Loot
DELETE FROM `creature_loot_template` WHERE (`Entry` = 800000);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(800000, 1205, 0, 100, 0, 1, 0, 1, 1, ''),
(800000, 5057, 0, 100, 0, 1, 0, 1, 1, ''),
(800000, 300302, 0, 100, 0, 1, 0, 1, 1, '');

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101098);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000585, 101098, 0, 0, 5000, 0, 0, 1, 1, 0, -13512.9, 2806.88, 4.85166, 1.17496, 300, 5, 0, 45793, 0, 1, 0, 0, 0, '', NULL),
(9000586, 101098, 0, 0, 5000, 0, 0, 1, 1, 0, -13504.7, 2816.9, 4.91844, 1.07349, 300, 5, 0, 54076, 0, 1, 0, 0, 0, '', NULL),
(9000587, 101098, 0, 0, 5000, 0, 0, 1, 1, 0, -13502.1, 2836.99, 4.26738, 5.65582, 300, 5, 0, 57134, 0, 1, 0, 0, 0, '', NULL);


