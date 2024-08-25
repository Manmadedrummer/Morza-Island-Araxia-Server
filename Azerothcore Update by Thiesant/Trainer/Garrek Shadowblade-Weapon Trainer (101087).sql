--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101087);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101087, 0, 0, 0, 0, 0, 'Garrek Shadowblade', 'Weapon Master', NULL, 5263, 72, 80, 0, 35, 81, 1, 1.14286, 1, 1, 18, 0.75, 1, 0, 1, 2000, 2000, 1, 1, 1, 4096, 2048, 0, 0, 2, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 7, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101087);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101087, 0, 24495, 1, 1);

--Trainer
DELETE FROM `npc_trainer` WHERE (`ID` = 101087);
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(101087, 264, 10000, 0, 0, 0),
(101087, 5011, 10000, 0, 0, 0),
(101087, 266, 10000, 0, 0, 0),
(101087, 2567, 10000, 0, 0, 0),
(101087, 196, 10000, 0, 0, 0),
(101087, 197, 10000, 0, 0, 0),
(101087, 201, 10000, 0, 0, 0),
(101087, 202, 10000, 0, 0, 0),
(101087, 198, 10000, 0, 0, 0),
(101087, 199, 10000, 0, 0, 0),
(101087, 200, 10000, 0, 0, 0),
(101087, 227, 10000, 0, 0, 0),
(101087, 1180, 10000, 0, 0, 0),
(101087, 15590, 10000, 0, 0, 0),
(101087, 5009, 10000, 0, 0, 0);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101087);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000503, 101087, 0, 0, 5000, 0, 0, 1, 1, 0, -13820.5, 2965.13, 7.62697, 4.16465, 300, 0, 0, 36813, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

