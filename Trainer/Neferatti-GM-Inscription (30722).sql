--Creature Template
DELETE FROM `creature_template` WHERE (`entry` = 30722);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(30722, 0, 0, 0, 0, 0, 27285, 0, 0, 0, 'Neferatti', 'Master Inscription Trainer', '', 0, 60, 60, 0, 35, 80, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 8, 0, 2048, 0, 0, 2, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

--NPC Vendor
DELETE FROM `npc_trainer` WHERE (`ID` = 30722);
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(30722, -201023, 0, 0, 0, 0, 0),
(30722, -201022, 0, 0, 0, 0, 0),
(30722, -201021, 0, 0, 0, 0, 0);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 30722);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000134, 30722, 0, 0, 5000, 0, 0, 1, 1, 1, -13921.8, 3005.33, 31.4838, 4.9496, 300, 0, 0, 2670, 5751, 0, 0, 0, 0, '', NULL, 0, NULL);
