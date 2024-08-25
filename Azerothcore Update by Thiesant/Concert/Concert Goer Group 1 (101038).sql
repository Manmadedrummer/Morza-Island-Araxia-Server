--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101038);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101038, 0, 0, 0, 0, 0, 'Concert Goer', 'Fan', '', 0, 1, 1, 0, 35, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101038);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101038, 0, 23732, 1, 0.25),
(101038, 1, 825, 1, 0.25),
(101038, 2, 1546, 1, 0.25),
(101038, 3, 1658, 1, 0.25);

--CREATURE ADDON
DELETE FROM `creature_template_addon` WHERE (`entry` = 101038);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(101038, 0, 0, 0, 0, 10, 0, '');

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101038);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000400, 101038, 0, 0, 5000, 0, 0, 1, 1, 0, -13666.4, 3071.74, 2.75119, 1.67117, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000401, 101038, 0, 0, 5000, 0, 0, 1, 1, 0, -13669.9, 3070.57, 2.75566, 1.26528, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000402, 101038, 0, 0, 5000, 0, 0, 1, 1, 0, -13668.8, 3072.11, 2.7466, 1.67384, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000403, 101038, 0, 0, 5000, 0, 0, 1, 1, 0, -13653.9, 3076.16, 1.07007, 1.48291, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000404, 101038, 0, 0, 5000, 0, 0, 1, 1, 0, -13643.7, 3083.32, 1.03642, 3.26404, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000405, 101038, 0, 0, 5000, 0, 0, 1, 1, 0, -13675.2, 3047.79, 3.71325, 1.32419, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000406, 101038, 0, 0, 5000, 0, 0, 1, 1, 0, -13666, 3052.78, 3.69501, 2.16802, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000407, 101038, 0, 0, 5000, 0, 0, 1, 1, 0, -13667.2, 3061.89, 2.80647, 1.70055, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000408, 101038, 0, 0, 5000, 0, 0, 1, 1, 0, -13650.2, 3081.06, 1.04697, 3.35868, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000409, 101038, 0, 0, 5000, 0, 0, 1, 1, 0, -13670.8, 3066.38, 2.77972, 1.28499, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000410, 101038, 0, 0, 5000, 0, 0, 1, 1, 0, -13666.4, 3070.43, 10.0215, 2.15018, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(9000411, 101038, 0, 0, 5000, 0, 0, 1, 1, 0, -13663.4, 3072.73, 10.0125, 2.02735, 300, 0, 0, 42, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
