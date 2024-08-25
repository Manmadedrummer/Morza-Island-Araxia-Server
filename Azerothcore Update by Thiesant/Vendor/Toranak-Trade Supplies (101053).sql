--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101053);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101053, 0, 0, 0, 0, 0, 'Toranak', 'Trade Supplies', NULL, 0, 50, 50, 0, 35, 128, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 4608, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.25, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101053);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101053, 0, 4559, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101053) AND (`guid` IN (9000009));
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000009, 101053, 0, 0, 5000, 0, 0, 1, 1, 0, -13778.2, 2963.61, 7.62721, 4.61889, 300, 0, 0, 2769, 0, 0, 128, 0, 0, '', NULL);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101053);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101053, 0, 2320, 0, 0, 0, 0),
(101053, 0, 2321, 0, 0, 0, 0),
(101053, 0, 2325, 0, 0, 0, 0),
(101053, 0, 2604, 0, 0, 0, 0),
(101053, 0, 2678, 0, 0, 0, 0),
(101053, 0, 2880, 0, 0, 0, 0),
(101053, 0, 2901, 0, 0, 0, 0),
(101053, 0, 3371, 0, 0, 0, 0),
(101053, 0, 3372, 0, 0, 0, 0),
(101053, 0, 3466, 0, 0, 0, 0),
(101053, 0, 3857, 0, 0, 0, 0),
(101053, 0, 4289, 0, 0, 0, 0),
(101053, 0, 4291, 0, 0, 0, 0),
(101053, 0, 4340, 0, 0, 0, 0),
(101053, 0, 4341, 0, 0, 0, 0),
(101053, 0, 4342, 0, 0, 0, 0),
(101053, 0, 4399, 0, 0, 0, 0),
(101053, 0, 4400, 0, 0, 0, 0),
(101053, 0, 5956, 0, 0, 0, 0),
(101053, 0, 6217, 0, 0, 0, 0),
(101053, 0, 6256, 0, 0, 0, 0),
(101053, 0, 6530, 0, 0, 0, 0),
(101053, 0, 6532, 0, 0, 0, 0),
(101053, 0, 7005, 0, 0, 0, 0),
(101053, 0, 8343, 0, 0, 0, 0),
(101053, 0, 8925, 0, 0, 0, 0),
(101053, 0, 11223, 1, 9000, 0, 0),
(101053, 0, 12232, 0, 0, 0, 0),
(101053, 0, 14341, 0, 0, 0, 0),
(101053, 0, 16111, 0, 0, 0, 0),
(101053, 0, 18256, 0, 0, 0, 0),
(101053, 0, 21941, 1, 9000, 0, 0);