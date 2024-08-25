--Creature
DELETE FROM `creature_template` WHERE (`entry` = 800802);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(800802, 0, 0, 0, 0, 0, '(Imposter) High Mage', 'Imposter', NULL, 0, 80, 80, 1, 14, 0, 1.2, 1.14286, 1, 1, 20, 1, 3, 0, 10, 2000, 2000, 1, 1, 2, 64, 2048, 0, 0, 0, 0, 0, 0, 7, 108, 22950, 0, 0, 0, 0, 210895, 403505, 'SmartAI', 0, 1, 115, 2500, 1, 1, 0, 167, 1, 617299839, 0, 1073741824, 'boss_high_nethermancer_zerevor', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 800802);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(800802, 0, 21417, 1, 1);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 800802);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000241, 800802, 0, 0, 5000, 0, 0, 1, 1, 0, -14158.2, 3039.36, 197.548, 0.459238, 300, 0, 0, 1290275, 399400, 0, 0, 0, 0, '', NULL, 0, NULL);

--EQUIPMENT
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 800802);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(800802, 1, 2177, 0, 0, 0);


--SPELLS
DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 800802);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(800802, 0, 38660, 12340),
(800802, 1, 21068, 12340),
(800802, 2, 48127, 12340),
(800802, 3, 71106, 0);



--SMART AI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 800802;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 800802);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(800802, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 1200000, 1200000, 0, 0, 11, 38660, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Imposter High Mage - In Combat - Cast \'Fear\''),
(800802, 0, 1, 0, 0, 0, 100, 0, 4000, 8000, 18000, 24000, 0, 0, 11, 21068, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Imposter High Mage - In Combat - Cast \'Corruption\''),
(800802, 0, 2, 0, 0, 0, 100, 0, 1200, 1500, 2400, 3200, 0, 0, 11, 48127, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Imposter High Mage - In Combat - Cast \'Mind Blast\''),
(800802, 0, 3, 0, 2, 0, 100, 0, 5, 70, 1200000, 1800000, 0, 0, 11, 71106, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Imposter High Mage - In Combat - Cast \'Shadow Nova\'');
