--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101049);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101049, 0, 0, 0, 0, 0, 'Marshaliek', 'Apprentice Witch Doctor', NULL, 0, 24, 24, 0, 35, 2176, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 4608, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.02, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101049);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101049, 0, 3892, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101049);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000114, 101049, 0, 0, 5000, 0, 0, 1, 1, 0, -13917.8, 2975.79, 17.0601, 2.80368, 300, 0, 0, 831, 0, 0, 2176, 0, 0, '', NULL);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101049);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101049, 0, 785, 2, 9000, 0, 0),
(101049, 0, 929, 2, 9000, 0, 0),
(101049, 0, 2449, 1, 7200, 0, 0),
(101049, 0, 2453, 2, 7200, 0, 0),
(101049, 0, 3355, 1, 9000, 0, 0),
(101049, 0, 3356, 1, 7200, 0, 0),
(101049, 0, 3357, 1, 9000, 0, 0),
(101049, 0, 3385, 3, 7200, 0, 0),
(101049, 0, 5565, 0, 0, 0, 0),
(101049, 0, 6055, 1, 7200, 0, 0),
(101049, 0, 16583, 0, 0, 0, 0),
(101049, 0, 17020, 0, 0, 0, 0),
(101049, 0, 17021, 0, 0, 0, 0),
(101049, 0, 17026, 0, 0, 0, 0),
(101049, 0, 17028, 0, 0, 0, 0),
(101049, 0, 17029, 0, 0, 0, 0),
(101049, 0, 17030, 0, 0, 0, 0),
(101049, 0, 17031, 0, 0, 0, 0),
(101049, 0, 17032, 0, 0, 0, 0),
(101049, 0, 17033, 0, 0, 0, 0),
(101049, 0, 17034, 0, 0, 0, 0),
(101049, 0, 17035, 0, 0, 0, 0),
(101049, 0, 17036, 0, 0, 0, 0),
(101049, 0, 17037, 0, 0, 0, 0),
(101049, 0, 17038, 0, 0, 0, 0),
(101049, 0, 21177, 0, 0, 0, 0),
(101049, 0, 22147, 0, 0, 0, 0),
(101049, 0, 22148, 0, 0, 0, 0),
(101049, 0, 37201, 0, 0, 0, 0);
