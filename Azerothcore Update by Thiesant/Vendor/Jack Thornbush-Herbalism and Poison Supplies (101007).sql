--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101007);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101007, 0, 0, 0, 0, 0, 'Jack Thornbush', 'Herbalism & Poison Supplies', '', 0, 72, 72, 2, 35, 1152, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101007);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101007, 0, 24262, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101007);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000018, 101007, 0, 0, 5000, 0, 0, 1, 1, 0, -13736.6, 3240.51, 4.64572, 3.67338, 300, 0, 0, 9610, 0, 0, 1152, 0, 0, '', NULL);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101007);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101007, 0, 2892, 0, 0, 0, 0),
(101007, 0, 2893, 0, 0, 0, 0),
(101007, 0, 3371, 0, 0, 0, 0),
(101007, 0, 3372, 0, 0, 0, 0),
(101007, 0, 3775, 0, 0, 0, 0),
(101007, 0, 5237, 0, 0, 0, 0),
(101007, 0, 6947, 0, 0, 0, 0),
(101007, 0, 6949, 0, 0, 0, 0),
(101007, 0, 6950, 0, 0, 0, 0),
(101007, 0, 8925, 0, 0, 0, 0),
(101007, 0, 8926, 0, 0, 0, 0),
(101007, 0, 8927, 0, 0, 0, 0),
(101007, 0, 8928, 0, 0, 0, 0),
(101007, 0, 8984, 0, 0, 0, 0),
(101007, 0, 8985, 0, 0, 0, 0),
(101007, 0, 10918, 0, 0, 0, 0),
(101007, 0, 10920, 0, 0, 0, 0),
(101007, 0, 10921, 0, 0, 0, 0),
(101007, 0, 10922, 0, 0, 0, 0),
(101007, 0, 18256, 0, 0, 0, 0),
(101007, 0, 20844, 0, 0, 0, 0),
(101007, 0, 21835, 0, 0, 0, 0),
(101007, 0, 21927, 0, 0, 0, 0),
(101007, 0, 22053, 0, 0, 0, 0),
(101007, 0, 22054, 0, 0, 0, 0),
(101007, 0, 22055, 0, 0, 0, 0),
(101007, 0, 22250, 0, 0, 0, 0),
(101007, 0, 40411, 0, 0, 0, 0),
(101007, 0, 43230, 0, 0, 0, 0),
(101007, 0, 43231, 0, 0, 0, 0),
(101007, 0, 43232, 0, 0, 0, 0),
(101007, 0, 43233, 0, 0, 0, 0),
(101007, 0, 43234, 0, 0, 0, 0),
(101007, 0, 43235, 0, 0, 0, 0),
(101007, 0, 43237, 0, 0, 0, 0);
