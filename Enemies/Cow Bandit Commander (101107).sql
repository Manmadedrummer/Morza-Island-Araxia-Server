--Creature Template
DELETE FROM `creature_template` WHERE (`entry` = 101107);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101107, 0, 0, 0, 0, 0, 1735, 0, 0, 0, 'Cow Bandit Commander', NULL, NULL, 11673, 80, 80, 0, 168, 3, 1, 1.14286, 1, 1, 20, 1, 2, 0, 4.6, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 20, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);


--Smart Script
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 101107;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 101107);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101107, 0, 0, 0, 0, 0, 100, 0, 18700, 28500, 18700, 28500, 0, 0, 11, 6253, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cow Bandit Commander - In Combat - Cast \'Backhand\''),
(101107, 0, 1, 0, 0, 0, 100, 0, 21100, 33900, 21100, 33900, 0, 0, 11, 19134, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Cow Bandit Commander - In Combat - Cast \'Frightening Shout\''),
(101107, 0, 2, 0, 0, 0, 100, 0, 42800, 42800, 42800, 42800, 0, 0, 11, 23600, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cow Bandit Commander - In Combat - Cast \'Piercing Howl\''),
(101107, 0, 3, 4, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cow Bandit Commander - Between 0-30% Health - Cast \'Enrage\' (No Repeat)');

--Creature Equip Template
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101107);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101107, 1, 5287, 0, 0, 0);
