--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101073);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101073, 0, 0, 0, 0, 0, 'Sig Nicious', 'The Tauren Chieftains', NULL, 0, 70, 70, 0, 35, 0, 1, 1.14286, 1, 1, 20, 1, 1, 0, 4.6, 2000, 2000, 1, 1, 2, 768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101073);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101073, 0, 21666, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101073);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000303, 101073, 0, 0, 5000, 0, 0, 1, 1, 0, -13673.2, 3079.27, 2.70139, 4.58637, 300, 0, 0, 3240, 3155, 0, 0, 0, 0, '', NULL, 0, NULL);

--SMART SCRIPTS
DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 101073);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101073, 0, 0, 1, 1, 0, 100, 1, 13000, 13000, 0, 0, 0, 0, 11, 37718, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Cast \'Clear Target Auras\''),
(101073, 0, 1, 0, 61, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 42505, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Cast \'L70ETC Flare Effect\''),
(101073, 0, 2, 0, 1, 0, 100, 1, 22700, 22700, 0, 0, 0, 0, 5, 402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 402'),
(101073, 0, 3, 0, 1, 0, 100, 1, 38600, 38600, 0, 0, 0, 0, 5, 403, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 403'),
(101073, 0, 4, 0, 1, 0, 100, 1, 49700, 49700, 0, 0, 0, 0, 5, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 404'),
(101073, 0, 5, 0, 1, 0, 100, 1, 63600, 63600, 0, 0, 0, 0, 5, 405, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 405'),
(101073, 0, 6, 0, 1, 0, 100, 1, 89700, 89700, 0, 0, 0, 0, 5, 402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 402'),
(101073, 0, 7, 0, 1, 0, 100, 1, 102600, 102600, 0, 0, 0, 0, 5, 403, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 403'),
(101073, 0, 8, 0, 1, 0, 100, 1, 114900, 114900, 0, 0, 0, 0, 5, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 404'),
(101073, 0, 9, 0, 1, 0, 100, 1, 129500, 129500, 0, 0, 0, 0, 5, 405, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 405'),
(101073, 0, 10, 0, 1, 0, 100, 1, 155800, 155800, 0, 0, 0, 0, 5, 402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 402'),
(101073, 0, 11, 0, 1, 0, 100, 1, 170800, 170800, 0, 0, 0, 0, 5, 403, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 403'),
(101073, 0, 12, 0, 1, 0, 100, 1, 182300, 182300, 0, 0, 0, 0, 5, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 404'),
(101073, 0, 13, 0, 1, 0, 100, 1, 196100, 196100, 0, 0, 0, 0, 5, 405, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 405'),
(101073, 0, 14, 0, 1, 0, 100, 1, 223500, 223500, 0, 0, 0, 0, 5, 402, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 402'),
(101073, 0, 15, 0, 1, 0, 100, 1, 239200, 239200, 0, 0, 0, 0, 5, 403, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 403'),
(101073, 0, 16, 0, 1, 0, 100, 1, 251000, 251000, 0, 0, 0, 0, 5, 404, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 404'),
(101073, 0, 17, 0, 1, 0, 100, 1, 264600, 264600, 0, 0, 0, 0, 5, 405, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Play Emote 405'),
(101073, 0, 18, 0, 1, 0, 100, 1, 280000, 280000, 0, 0, 0, 0, 11, 42505, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Sig Nicious - Out of Combat - Cast \'L70ETC Flare Effect\'');