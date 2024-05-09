--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101092);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101092, 0, 0, 0, 0, 0, 2153, 0, 0, 0, 'Kobold Baggins', NULL, NULL, 0, 80, 82, 0, 26, 0, 1, 1.14286, 1, 1, 18, 1, 3, 0, 10, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 4111, 4111, 0, 0, 0, 10000, 25000, 'SmartAI', 1, 1, 120, 35, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

--Spell
DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 101092);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(101092, 0, 2121, 12340);

--EQUIPMENT
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101092);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101092, 1, 2813, 0, 0, 18019);

--SMART AI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 101092;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 101092);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101092, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 4000, 7000, 0, 0, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Kobold Baggins - In Combat - Cast \'Strike\' (No Repeat)');

--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101092);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000545, 101092, 0, 0, 5000, 0, 0, 1, 1, 1, -13937.3, 3278.62, 17.1544, 4.41848, 300, 0, 0, 84705, 0, 0, 0, 0, 0, '', 0, 0, 0);

--Creature Loot
DELETE FROM `creature_loot_template` WHERE (`Entry` = 101092);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(101092, 8350, 0, 100, 0, 1, 0, 1, 1, ''),
(101092, 47241, 0, 45, 0, 1, 0, 1, 5, ''),
(101092, 52005, 0, 25, 0, 1, 0, 1, 1, '');