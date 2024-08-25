--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101008);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101008, 0, 0, 0, 0, 0, 'Willy Wonka', 'Sweet Treats', NULL, 0, 10, 70, 0, 35, 641, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101008);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101008, 0, 18973, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101008);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000019, 101008, 0, 0, 5000, 0, 0, 1, 1, 0, -13778.1, 3081.61, 3.9138, 3.42354, 300, 0, 0, 1006, 0, 0, 641, 0, 0, '', NULL);


--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101008);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101008, 0, 7228, 0, 0, 0, 0),
(101008, 0, 7807, 0, 0, 0, 0),
(101008, 0, 17344, 0, 0, 0, 0),
(101008, 0, 18632, 0, 0, 0, 0),
(101008, 0, 18633, 0, 0, 0, 0),
(101008, 0, 18635, 0, 0, 0, 0),
(101008, 0, 19225, 0, 0, 0, 0),
(101008, 0, 20557, 0, 0, 0, 0),
(101008, 0, 33234, 0, 0, 0, 0);
