--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101070);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101070, 0, 0, 0, 0, 0, 'Bergrisst', 'The Tauren Chieftains', NULL, 0, 70, 70, 0, 35, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 4.6, 2000, 2000, 1, 1, 8, 768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`=101070);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101070, 0, 21659, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101070);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000300, 101070, 0, 0, 5000, 0, 0, 1, 1, 0, -13675.3, 3081.34, 2.68907, 4.79113, 300, 0, 0, 2835, 7196, 0, 0, 0, 0, '', NULL, 0, NULL);

--SMART SCRIPT
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 23619);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101070, 0, 0, 1, 1, 0, 100, 1, 28000, 28000, 0, 0, 0, 0, 11, 42505, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Cast \'L70ETC Flare Effect\''),
(101070, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 37718, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Cast \'Clear Target Auras\''),
(101070, 0, 2, 0, 1, 0, 100, 1, 36500, 36500, 0, 0, 0, 0, 5, 402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Play Emote 402'),
(101070, 0, 3, 0, 1, 0, 100, 1, 42505, 42505, 0, 0, 0, 0, 5, 403, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Play Emote 403'),
(101070, 0, 4, 0, 1, 0, 100, 1, 80500, 80500, 0, 0, 0, 0, 5, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Play Emote 404'),
(101070, 0, 5, 0, 1, 0, 100, 1, 94000, 94000, 0, 0, 0, 0, 5, 405, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Play Emote 405'),
(101070, 0, 6, 0, 1, 0, 100, 1, 113500, 113500, 0, 0, 0, 0, 5, 402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Play Emote 402'),
(101070, 0, 7, 0, 1, 0, 100, 1, 137100, 137100, 0, 0, 0, 0, 5, 403, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Play Emote 403'),
(101070, 0, 8, 0, 1, 0, 100, 1, 149000, 149000, 0, 0, 0, 0, 11, 34126, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Cast \'Spotlight\''),
(101070, 0, 9, 0, 1, 0, 100, 1, 158300, 158300, 0, 0, 0, 0, 5, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Play Emote 404'),
(101070, 0, 10, 0, 1, 0, 100, 1, 172700, 172700, 0, 0, 0, 0, 5, 405, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Play Emote 405'),
(101070, 0, 11, 0, 1, 0, 100, 1, 197500, 197500, 0, 0, 0, 0, 5, 402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Play Emote 402'),
(101070, 0, 12, 0, 1, 0, 100, 1, 213000, 213000, 0, 0, 0, 0, 11, 41347, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Cast \'Spotlight\''),
(101070, 0, 13, 0, 1, 0, 100, 1, 220500, 220500, 0, 0, 0, 0, 5, 403, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Play Emote 403'),
(101070, 0, 14, 0, 1, 0, 100, 1, 240500, 240500, 0, 0, 0, 0, 5, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Play Emote 404'),
(101070, 0, 15, 0, 1, 0, 100, 1, 256500, 256500, 0, 0, 0, 0, 5, 405, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Play Emote 405'),
(101070, 0, 16, 0, 1, 0, 100, 1, 275500, 275500, 0, 0, 0, 0, 5, 402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Play Emote 402'),
(101070, 0, 17, 0, 1, 0, 100, 1, 280000, 280000, 0, 0, 0, 0, 11, 42505, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bergrisst - Out of Combat - Cast \'L70ETC Flare Effect\'');