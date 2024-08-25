--Creatures
DELETE FROM `creature_template` WHERE (`entry` = 800801);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(800801, 0, 0, 0, 0, 0, '(Imposter) Queen Elaine', 'Imposter', NULL, 0, 80, 85, 0, 14, 0, 2.5, 2.5, 2.5, 2.5, 20, 1, 3, 0, 10, 3000, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 6000000, 6000000, '', 0, 1, 75, 8, 1, 1, 0, 0, 1, 0, 0, 0, '', NULL);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 800801);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(800801, 0, 24965, 1, 1);

--EQUIPMENT
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 800801);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(800801, 1, 3206, 143, 0, 0);

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 800801);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(9000239, 800801, 0, 0, 5000, 0, 0, 1, 1, 1, -14129.2, 3080.06, 221.392, 3.12965, 300, 0, 0, 184230, 0, 0, 1, 0, 0, '', NULL);


--Smart Script
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 800801;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 800801);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(800801, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '(Imposter) Queen Elaine - On Aggro - Cast \'Rushing Charge\''),
(800801, 0, 2, 0, 0, 0, 100, 0, 1300, 3700, 20000, 25000, 0, 0, 11, 6730, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '(Imposter) Queen Elaine - In Combat - Cast \'Head Butt\''),
(800801, 0, 3, 0, 0, 0, 100, 0, 4800, 6000, 30000, 30000, 0, 0, 11, 6016, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '(Imposter) Queen Elaine - In Combat - Cast \'Pierce Armor\'');
