--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101035);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101035, 0, 0, 0, 0, 0, 'Andelita', 'First Aid Supplies', '', 0, 75, 75, 2, 35, 128, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101035);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101035, 0, 26406, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101035);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000095, 101035, 0, 0, 5000, 0, 0, 1, 1, 0, -13701.6, 2976.65, 15.6371, 4.9965, 300, 0, 0, 10635, 0, 0, 128, 0, 0, '', NULL);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101035);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101035, 0, 13446, 3, 9000, 0, 0),
(101035, 0, 22829, 3, 9000, 0, 0),
(101035, 0, 33447, 3, 9000, 0, 0),
(101035, 0, 44692, 0, 0, 0, 0),
(101035, 0, 44693, 0, 0, 0, 0),
(101035, 0, 44694, 0, 0, 0, 0),
(101035, 0, 44698, 0, 0, 0, 0),
(101035, 0, 1251, 0, 0, 0, 0),
(101035, 0, 2581, 0, 0, 0, 0),
(101035, 0, 3530, 0, 0, 0, 0),
(101035, 0, 3531, 0, 0, 0, 0),
(101035, 0, 6450, 0, 0, 0, 0),
(101035, 0, 6451, 0, 0, 0, 0),
(101035, 0, 8544, 0, 0, 0, 0),
(101035, 0, 8545, 0, 0, 0, 0),
(101035, 0, 34721, 0, 0, 0, 0),
(101035, 0, 34722, 0, 0, 0, 0),
(101035, 0, 14529, 0, 0, 0, 0),
(101035, 0, 14530, 0, 0, 0, 0);
