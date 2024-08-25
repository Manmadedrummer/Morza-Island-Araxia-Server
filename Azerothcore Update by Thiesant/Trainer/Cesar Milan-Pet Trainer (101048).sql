--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101048);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101048, 0, 0, 0, 0, 0, 'Cesar Millan', 'Pet Trainer', NULL, 4783, 40, 40, 0, 35, 17, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 1500, 2000, 1, 1, 1, 512, 2048, 0, 0, 3, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.15, 1, 1, 1, 0, 0, 1, 0, 0, 2, 'npc_pet_trainer', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101048);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101048, 0, 12729, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101048);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000098, 101048, 0, 0, 5000, 0, 0, 1, 1, 0, -13859.4, 3315.04, 59.3549, 3.03971, 300, 0, 0, 1753, 0, 0, 17, 0, 0, '', NULL);

--TRAINER
DELETE FROM `npc_trainer` WHERE (`ID` = 101048);
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(101048, 530, 4000, 0, 0, 20, 0);
