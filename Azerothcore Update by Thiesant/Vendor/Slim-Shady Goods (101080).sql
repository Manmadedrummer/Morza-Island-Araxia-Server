--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101080);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101080, 0, 0, 0, 0, 0, '"Slim"', 'Shady Dealer', NULL, 8021, 63, 63, 1, 1731, 129, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 5, 3, 1, 1, 0, 0, 1, 0, 0, 2, 'npc_slim', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101080);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101080, 0, 19654, 1, 1);


--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101080);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000427, 101080, 0, 0, 5000, 0, 0, 1, 1, 0, -13714.3, 3069.76, 3.20416, 0.570019, 300, 0, 0, 34543, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101080);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101080, 0, 3775, 0, 0, 0, 0),
(101080, 0, 4470, 0, 0, 0, 0),
(101080, 0, 5237, 0, 0, 0, 0),
(101080, 0, 5565, 0, 0, 0, 0),
(101080, 0, 8766, 0, 0, 0, 0),
(101080, 0, 8927, 0, 0, 0, 0),
(101080, 0, 8928, 0, 0, 0, 0),
(101080, 0, 8952, 0, 0, 0, 0),
(101080, 0, 8985, 0, 0, 0, 0),
(101080, 0, 10922, 0, 0, 0, 0),
(101080, 0, 11284, 0, 0, 0, 0),
(101080, 0, 11285, 0, 0, 0, 0),
(101080, 0, 16583, 0, 0, 0, 0),
(101080, 0, 17020, 0, 0, 0, 0),
(101080, 0, 17021, 0, 0, 0, 0),
(101080, 0, 17026, 0, 0, 0, 0),
(101080, 0, 17028, 0, 0, 0, 0),
(101080, 0, 17029, 0, 0, 0, 0),
(101080, 0, 17030, 0, 0, 0, 0),
(101080, 0, 17031, 0, 0, 0, 0),
(101080, 0, 17032, 0, 0, 0, 0),
(101080, 0, 17033, 0, 0, 0, 0),
(101080, 0, 17037, 0, 0, 0, 0),
(101080, 0, 17038, 0, 0, 0, 0),
(101080, 0, 20844, 0, 0, 0, 0),
(101080, 0, 21177, 0, 0, 0, 0),
(101080, 0, 21835, 0, 0, 0, 0),
(101080, 0, 21927, 0, 0, 0, 0),
(101080, 0, 22053, 0, 0, 0, 0),
(101080, 0, 22054, 0, 0, 0, 0),
(101080, 0, 22055, 0, 0, 0, 0),
(101080, 0, 22147, 0, 0, 0, 0),
(101080, 0, 22148, 0, 0, 0, 0),
(101080, 0, 27854, 0, 0, 0, 0),
(101080, 0, 27860, 0, 0, 0, 0),
(101080, 0, 28053, 0, 0, 0, 0),
(101080, 0, 28056, 0, 0, 0, 0),
(101080, 0, 28060, 0, 0, 0, 0),
(101080, 0, 28061, 0, 0, 0, 0),
(101080, 0, 28399, 0, 0, 0, 0),
(101080, 0, 29013, 0, 0, 0, 0),
(101080, 0, 29014, 0, 0, 0, 0),
(101080, 0, 29451, 0, 0, 0, 0),
(101080, 0, 37201, 0, 0, 0, 0);

