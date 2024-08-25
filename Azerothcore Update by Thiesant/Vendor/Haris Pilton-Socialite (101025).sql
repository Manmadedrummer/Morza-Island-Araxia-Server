--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101025);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101025, 0, 0, 0, 0, 0, 'Haris Pilton', 'Socialite', NULL, 0, 63, 64, 1, 35, 128, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 2, 33024, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1.29, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101025);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101025, 0, 18148, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101025);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000080, 101025, 0, 0, 5000, 0, 0, 1, 1, 0, -13721.6, 3056.06, 3.8313, 1.62172, 300, 0, 0, 4572, 2705, 0, 128, 0, 0, '', NULL);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101025);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101025, 0, 37934, 1, 1800, 0, 0),
(101025, 0, 38082, 0, 0, 0, 0),
(101025, 0, 38090, 2, 1800, 0, 0),
(101025, 0, 38091, 1, 1800, 0, 0),
(101025, 0, 51809, 0, 0, 0, 0);
