--Creature
DELETE FROM `creature_template` WHERE (`entry` = 33853);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(33853, 0, 0, 0, 0, 0, 'Broxel Goldgrasp', 'Souvenirs', '', 0, 80, 80, 2, 35, 128, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 33536, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 2, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 9767);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 33853);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(33853, 0, 28891, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 33853);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(76722, 33853, 0, 0, 571, 0, 0, 1, 1, 0, 8466.12, 859.378, 547.49, 1.64061, 180, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(9000099, 33853, 0, 0, 5000, 0, 0, 1, 1, 0, -13830.9, 3090.04, 4.61195, 5.79315, 300, 0, 0, 31500, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 33853);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(33853, 0, 45664, 0, 0, 0, 0),
(33853, 0, 45666, 0, 0, 0, 0),
(33853, 0, 45667, 0, 0, 0, 0),
(33853, 0, 45668, 0, 0, 0, 0),
(33853, 0, 45669, 0, 0, 0, 0),
(33853, 0, 45670, 0, 0, 0, 0),
(33853, 0, 45671, 0, 0, 0, 0),
(33853, 0, 45672, 0, 0, 0, 0),
(33853, 0, 45673, 0, 0, 0, 0),
(33853, 0, 45674, 0, 0, 0, 0);
