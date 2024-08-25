--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101086);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101086, 0, 0, 0, 0, 0, 'Alfred Copperworth', 'Butler', '', 0, 75, 75, 0, 35, 640, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 8, 33024, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101086);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101086, 0, 28119, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101086);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000500, 101086, 0, 0, 5000, 0, 0, 1, 1, 1, -13793.5, 2947.61, 21.5509, 2.8748, 300, 0, 0, 4070, 7981, 0, 0, 0, 0, '', NULL, 0, NULL);


--VENDOR ITEMS
DELETE FROM `npc_vendor` WHERE (`entry` = 101086);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(101086, 11, 33443, 0, 0, 0, 0),
(101086, 8, 33444, 0, 0, 0, 0),
(101086, 9, 33445, 0, 0, 0, 0),
(101086, 10, 33449, 0, 0, 0, 0),
(101086, 12, 33451, 0, 0, 0, 0),
(101086, 14, 33452, 0, 0, 0, 0),
(101086, 15, 33454, 0, 0, 0, 0),
(101086, 20, 35947, 0, 0, 0, 0),
(101086, 19, 35948, 0, 0, 0, 0),
(101086, 13, 35949, 0, 0, 0, 0),
(101086, 16, 35950, 0, 0, 0, 0),
(101086, 18, 35951, 0, 0, 0, 0),
(101086, 17, 35952, 0, 0, 0, 0),
(101086, 21, 35953, 0, 0, 0, 0),
(101086, 7, 35954, 0, 0, 0, 0),
(101086, 4, 40035, 0, 0, 0, 0),
(101086, 5, 40036, 0, 0, 0, 0),
(101086, 6, 40042, 0, 0, 0, 0),
(101086, 1, 44616, 0, 0, 0, 0),
(101086, 2, 44617, 0, 0, 0, 0),
(101086, 3, 44618, 0, 0, 0, 0);
