--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101100);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101100, 0, 0, 0, 0, 0, 'Moby Murloc', '', NULL, 0, 80, 82, 0, 18, 0, 1, 1.14286, 1, 1, 18, 2.875, 3, 0, 18, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 101100, 127, 0, 0, 0, 13, 47, 'SmartAI', 1, 1, 120, 30, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101100);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101100, 0, 4088, 1, 1);

--SPELLS
DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 101100);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(101100, 0, 11831, 12340);


--SMART AI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 101100;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 101100);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101100, 0, 0, 0, 106, 0, 100, 0, 2000, 7300, 17200, 31400, 0, 10, 11, 11831, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Moby Murloc - On Hostile in Range - Cast \'Frost Nova\''),
(101100, 0, 1, 0, 0, 0, 80, 0, 6600, 10200, 19500, 31800, 0, 0, 11, 744, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Moby Murloc- In Combat - Cast \'Poison\' (No Repeat)');


--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101100);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000593, 101100, 0, 0, 5000, 0, 0, 1, 1, 0, -13565.7, 3062.2, -53.3073, 1.12079, 300, 0, 0, 512880, 119820, 0, 0, 0, 0, '', NULL, 0, NULL);


--CREATURE LOOT
DELETE FROM `creature_loot_template` WHERE (`Entry` = 101100);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(101100, 730, 0, 38, 0, 1, 0, 1, 1, 'Moby Murloc - Murloc Eye'),
(101100, 1357, 0, 1, 0, 1, 0, 1, 1, 'Moby Murloc - Captain Sanders\' Treasure Map'),
(101100, 1468, 0, 50, 0, 1, 0, 1, 1, 'Moby Murloc - Murloc Fin'),
(101100, 9356, 0, 100, 0, 1, 0, 1, 1, '');
