--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101011);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101011, 0, 0, 0, 0, 0, 'Skinderella', 'Leatherworking & Skinning Supplies', '', 0, 75, 75, 2, 35, 128, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101011);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101011, 0, 25697, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101011);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000023, 101011, 0, 0, 5000, 0, 0, 1, 1, 0, -13725.7, 3051.89, 8.60154, 1.60475, 300, 0, 0, 13293, 0, 0, 128, 0, 0, '', NULL);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101011);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101011, 0, 2320, 0, 0, 0, 0),
(101011, 0, 2321, 0, 0, 0, 0),
(101011, 0, 2325, 0, 0, 0, 0),
(101011, 0, 2604, 0, 0, 0, 0),
(101011, 0, 2605, 0, 0, 0, 0),
(101011, 0, 4289, 0, 0, 0, 0),
(101011, 0, 4291, 0, 0, 0, 0),
(101011, 0, 4340, 0, 0, 0, 0),
(101011, 0, 4341, 0, 0, 0, 0),
(101011, 0, 4342, 0, 0, 0, 0),
(101011, 0, 6260, 0, 0, 0, 0),
(101011, 0, 6261, 0, 0, 0, 0),
(101011, 0, 7005, 0, 0, 0, 0),
(101011, 0, 8343, 0, 0, 0, 0),
(101011, 0, 10290, 0, 0, 0, 0),
(101011, 0, 14341, 0, 0, 0, 0),
(101011, 0, 38426, 0, 0, 0, 0);
