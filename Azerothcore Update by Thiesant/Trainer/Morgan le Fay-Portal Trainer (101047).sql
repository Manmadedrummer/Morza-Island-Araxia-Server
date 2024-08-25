--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101047);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101047, 0, 0, 0, 0, 0, 'Morgan le Fay', 'Portal Trainer', '', 0, 80, 80, 2, 35, 49, 1, 1.14286, 1, 1, 20, 1, 1, 0, 4.6, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 8, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 3, 3, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101047);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101047, 0, 25947, 1, 1);

--Spawn
DELETE FROM `creature` WHERE (`id1` = 101047);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000097, 101047, 0, 0, 5000, 0, 0, 1, 1, 0, -13898.2, 2988.05, 40.6389, 3.04506, 300, 0, 0, 37800, 0, 0, 49, 0, 0, '', NULL);


--Trainer
DELETE FROM `npc_trainer` WHERE (`ID` = 101047);
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(101047, 3561, 0, 0, 0, 0, 0),
(101047, 3562, 0, 0, 0, 0, 0),
(101047, 3563, 0, 0, 0, 0, 0),
(101047, 3565, 0, 0, 0, 0, 0),
(101047, 3566, 0, 0, 0, 0, 0),
(101047, 3567, 0, 0, 0, 0, 0),
(101047, 10059, 0, 0, 0, 0, 0),
(101047, 11416, 0, 0, 0, 0, 0),
(101047, 11417, 0, 0, 0, 0, 0),
(101047, 11418, 0, 0, 0, 0, 0),
(101047, 11419, 0, 0, 0, 0, 0),
(101047, 11420, 0, 0, 0, 0, 0);


