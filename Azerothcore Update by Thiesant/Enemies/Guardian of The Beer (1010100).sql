--Creature
DELETE FROM `creature_template` WHERE (`entry` = 1010100);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(1010100, 30075, 0, 0, 0, 0, 'Guardian of the Beer', '', '', 0, 82, 82, 2, 31, 0, 1.6, 1.71429, 1, 1, 20, 0.175, 1, 0, 10, 2500, 2000, 1, 1, 1, 64, 2048, 8, 0, 0, 0, 0, 0, 6, 72, 100003, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 35, 2, 1, 1, 0, 167, 1, 8388624, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 1010100);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(1010100, 0, 26746, 1, 1);

--Smart AI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 1010100;

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 1010100) AND (`source_type` = 0) AND (`id` IN (0, 1, 2));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(1010100, 0, 0, 0, 0, 0, 100, 2, 5400, 12200, 15500, 22300, 0, 0, 11, 55821, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Guardian of The Beer - In Combat - Cast \'Massive Stomp\' (Normal Dungeon)'),
(1010100, 0, 1, 0, 0, 0, 100, 4, 5400, 12200, 15500, 22300, 0, 0, 11, 55826, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Guardian of The Beer - In combat - Cast Massive Stomp'),
(1010100, 0, 2, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 54356, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Guardian of The Beer - Between 0-30% Health - Cast \'Unstoppable Enrage\' (No Repeat)');

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 1010100);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000590, 1010100, 0, 0, 5000, 0, 0, 1, 1, 0, -13675, 2953.46, 1.60939, 0.0853037, 300, 0, 0, 519018, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
