--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101088);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101088, 0, 0, 0, 0, 0, 'Rhoetus', 'Armor Trainer', NULL, 5263, 72, 80, 0, 35, 81, 1, 1.14286, 1, 1, 18, 1.05, 1, 0, 1, 2000, 2000, 1, 1, 1, 4096, 2048, 0, 0, 2, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 7, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101088);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101088, 0, 172, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101088);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000506, 101088, 0, 0, 5000, 0, 0, 1, 1, 0, -13887.5, 3079.87, 5.62182, 5.65553, 300, 0, 0, 36813, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

--TRAINER
DELETE FROM `npc_trainer` WHERE (`ID` = 101088);
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(101088, 9078, 10000, 0, 0, 0),
(101088, 9077, 10000, 0, 0, 0),
(101088, 8737, 10000, 0, 0, 0),
(101088, 750, 10000, 0, 0, 0),
(101088, 9116, 10000, 0, 0, 0);

--GOSSIP MENU
DELETE FROM `gossip_menu` WHERE (`MenuID` = 95000);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(95000, 100000);

--GOSSIP MENU OPTION
DELETE FROM `gossip_menu_option` WHERE (`MenuID` = 95000);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(95000, 0, 3, 'I\'d like some armor training', 8811, 5, 16, 0, 0, 0, 0, '', 0, 0);

