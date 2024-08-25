--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101001);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101001, 0, 0, 0, 0, 0, 'Josie Fireforge', 'Blacksmithing Supplies', NULL, 693, 30, 30, 0, 35, 4225, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.05, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101001);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101001, 0, 3311, 1, 1);

--SPAWNS
DELETE FROM `creature` WHERE (`id1` = 101001);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000012, 101001, 0, 0, 5000, 0, 0, 1, 1, 0, -13874.7, 3092.82, 6.88992, 5.62603, 300, 0, 0, 1003, 0, 0, 4225, 0, 0, '', NULL, 0, NULL);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101001);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101001, 0, 2880, 0, 0, 0, 0),
(101001, 0, 2901, 0, 0, 0, 0),
(101001, 0, 3466, 0, 0, 0, 0),
(101001, 0, 3857, 0, 0, 0, 0),
(101001, 0, 5956, 0, 0, 0, 0),
(101001, 0, 18567, 0, 0, 0, 0),
(101001, 0, 20815, 0, 0, 0, 0),
(101001, 0, 20824, 0, 0, 0, 0);