--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101029);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101029, 0, 0, 0, 0, 0, 'Layla Swanwater', 'Enchanting Supplies', '', 0, 75, 75, 2, 35, 128, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 8, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 9767);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101029);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101029, 0, 28910, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101029);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000089, 101029, 0, 0, 5000, 0, 0, 1, 1, 0, -13922.8, 2991.54, 6.2536, 5.21351, 300, 0, 0, 8508, 7981, 0, 128, 0, 0, '', NULL);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101029);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101029, 0, 4470, 0, 0, 0, 0),
(101029, 0, 6217, 0, 0, 0, 0),
(101029, 0, 10938, 2, 7200, 0, 0),
(101029, 0, 10940, 4, 7200, 0, 0),
(101029, 0, 11291, 0, 0, 0, 0),
(101029, 0, 20752, 0, 0, 0, 0),
(101029, 0, 20753, 0, 0, 0, 0),
(101029, 0, 20758, 0, 0, 0, 0),
(101029, 0, 22307, 0, 0, 0, 0);
