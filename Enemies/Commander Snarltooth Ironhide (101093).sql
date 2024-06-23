--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101093);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101093, 0, 0, 0, 0, 0, 384, 0, 0, 0, 'Commander Snarltooth Ironhide', NULL, NULL, 0, 80, 82, 0, 20, 0, 1.2, 1.14286, 1, 1, 20, 1, 3, 0, 13, 2000, 2000, 1, 1, 1, 64, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 448, 448, 0, 0, 0, 24, 64, 'SmartAI', 1, 1, 125, 35, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

--SPELLS
DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 101093);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(101093, 0, 6730, 12340),
(101093, 1, 6016, 12340),
(101093, 2, 6268, 12340);

--EQUIPMENT
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101093);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101093, 1, 1905, 0, 0, 18019);

--SMART AI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 101093;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 101093;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 101093);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101093, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Snarltooth Ironhide - On Aggro - Cast \'Rushing Charge\''),
(101093, 0, 2, 0, 0, 0, 100, 0, 1300, 3700, 20000, 25000, 0, 0, 11, 6730, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Snarltooth Ironhide - In Combat - Cast \'Head Butt\''),
(101093, 0, 3, 0, 0, 0, 100, 0, 4800, 6000, 30000, 30000, 0, 0, 11, 6016, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Snarltooth Ironhide - In Combat - Cast \'Pierce Armor\'');

--Creature Loot
DELETE FROM `creature_loot_template` WHERE (`Entry` = 101093);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(101093, 300300, 0, 100, 0, 1, 0, 1, 1, ''),
(101093, 47241, 0, 45, 0, 1, 0, 1, 5, ''),
(101093, 200218, 0, 30, 0, 1, 0, 1, 1, ''),
(101093, 3352, 0, 55, 0, 1, 0, 1, 1, ''),
(101093, 37496, 0, 25, 0, 1, 0, 1, 1, '');

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101093);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000566, 101093, 0, 0, 5000, 0, 0, 1, 1, 1, -13946.3, 3318.74, 11.414, 3.42575, 300, 0, 0, 705875, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
