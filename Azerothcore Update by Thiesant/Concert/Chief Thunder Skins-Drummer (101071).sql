--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101071);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101071, 0, 0, 0, 0, 0, 'Chief Thunder-Skins', 'The Tauren Chieftains', NULL, 0, 70, 70, 0, 35, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 4.6, 2000, 2000, 1, 1, 2, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101071);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101071, 0, 21661, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101071);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000301, 101071, 0, 0, 5000, 0, 0, 1, 1, 0, -13671, 3083.97, 2.67775, 4.81067, 300, 0, 0, 3240, 3155, 0, 0, 0, 0, '', NULL, 0, NULL);

--SMART SCRIPT
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 23623);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101071, 0, 0, 1, 1, 0, 100, 1, 24000, 24000, 0, 0, 0, 0, 11, 37718, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Cast \'Clear Target Auras\''),
(101071, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 42505, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Cast \'L70ETC Flare Effect\''),
(101071, 0, 2, 0, 1, 0, 100, 1, 34200, 34200, 0, 0, 0, 0, 5, 402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 402'),
(101071, 0, 3, 0, 1, 0, 100, 1, 48700, 48700, 0, 0, 0, 0, 5, 403, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 403'),
(101071, 0, 4, 0, 1, 0, 100, 1, 61000, 61000, 0, 0, 0, 0, 5, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 404'),
(101071, 0, 5, 0, 1, 0, 100, 1, 73000, 73000, 0, 0, 0, 0, 5, 405, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 405'),
(101071, 0, 6, 0, 1, 0, 100, 1, 95700, 95700, 0, 0, 0, 0, 5, 402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 402'),
(101071, 0, 7, 0, 1, 0, 100, 1, 120100, 120100, 0, 0, 0, 0, 5, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 404'),
(101071, 0, 8, 0, 1, 0, 100, 1, 132000, 132000, 0, 0, 0, 0, 5, 405, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 405'),
(101071, 0, 9, 0, 1, 0, 100, 1, 152500, 152500, 0, 0, 0, 0, 5, 402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 402'),
(101071, 0, 10, 0, 1, 0, 100, 1, 165600, 165600, 0, 0, 0, 0, 5, 403, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 403'),
(101071, 0, 11, 0, 1, 0, 100, 1, 178900, 178900, 0, 0, 0, 0, 5, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 404'),
(101071, 0, 12, 0, 1, 0, 100, 1, 190300, 190300, 0, 0, 0, 0, 5, 405, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 405'),
(101071, 0, 13, 0, 1, 0, 100, 1, 209800, 209800, 0, 0, 0, 0, 5, 402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 402'),
(101071, 0, 14, 0, 1, 0, 100, 1, 223600, 223600, 0, 0, 0, 0, 5, 403, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 403'),
(101071, 0, 15, 0, 1, 0, 100, 1, 237000, 237000, 0, 0, 0, 0, 5, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 404'),
(101071, 0, 16, 0, 1, 0, 100, 1, 251300, 251300, 0, 0, 0, 0, 5, 405, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 405'),
(101071, 0, 17, 0, 1, 0, 100, 1, 271400, 271400, 0, 0, 0, 0, 5, 402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Play Emote 402'),
(23623, 0, 18, 0, 1, 0, 100, 1, 280000, 280000, 0, 0, 0, 0, 11, 42505, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Chief Thunder-Skins - Out of Combat - Cast \'L70ETC Flare Effect\'');
