--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101092);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101092, 0, 0, 0, 0, 0, 'Kobold Baggins', NULL, NULL, 0, 80, 82, 0, 26, 0, 1, 1.14286, 1, 1, 18, 1, 3, 0, 10, 2000, 2000, 1, 1, 1, 0, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 4111, 4111, 0, 0, 0, 10000, 25000, 'SmartAI', 1, 1, 120, 35, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101092);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101092, 0, 2153, 1, 1);

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
DELETE FROM `creature_loot_template` WHERE (`Entry` = 4111);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(4111, 804, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Large Blue Sack'),
(4111, 857, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Large Red Sack'),
(4111, 929, 0, 1.1851, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Healing Potion'),
(4111, 1205, 0, 2.3138, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Melon Juice'),
(4111, 1206, 0, 0.2, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Moss Agate'),
(4111, 1210, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Shadowgem'),
(4111, 1478, 0, 0.56, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Scroll of Protection II'),
(4111, 1529, 0, 0.0282, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Jade'),
(4111, 1705, 0, 0.1129, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Lesser Moonstone'),
(4111, 1711, 0, 0.24, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Scroll of Stamina II'),
(4111, 1712, 0, 0.46, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Scroll of Spirit II'),
(4111, 2290, 0, 0.24, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Scroll of Intellect II'),
(4111, 2453, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Bruiseweed'),
(4111, 2592, 0, 10.0734, 0, 1, 0, 1, 2, 'Gravelsnout Kobold - Wool Cloth'),
(4111, 2601, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Pattern: Gray Woolen Robe'),
(4111, 2835, 0, 0.08, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Rough Stone'),
(4111, 2836, 0, 0.14, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Coarse Stone'),
(4111, 2838, 0, 0.06, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Heavy Stone'),
(4111, 2883, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Plans: Deadly Bronze Poniard'),
(4111, 3356, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Kingsblood'),
(4111, 3385, 0, 0.5643, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Lesser Mana Potion'),
(4111, 3608, 0, 0.04, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Plans: Mighty Iron Hammer'),
(4111, 3612, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Plans: Green Iron Gauntlets'),
(4111, 3867, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Plans: Golden Iron Destroyer'),
(4111, 3870, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Plans: Green Iron Shoulders'),
(4111, 4296, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Pattern: Dark Leather Shoulders'),
(4111, 4297, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Pattern: Barbaric Gloves'),
(4111, 4306, 0, 24.0124, 0, 1, 0, 1, 2, 'Gravelsnout Kobold - Silk Cloth'),
(4111, 4350, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Pattern: Spider Silk Slippers'),
(4111, 4538, 0, 4.5711, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Snapvine Watermelon'),
(4111, 4633, 0, 0.0282, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Heavy Bronze Lockbox'),
(4111, 5543, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Plans: Iridescent Hammer'),
(4111, 5575, 0, 0.04, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Large Green Sack'),
(4111, 5578, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Plans: Silvered Bronze Breastplate'),
(4111, 5774, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Pattern: Green Silk Pack'),
(4111, 6044, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Plans: Iron Shield Spike'),
(4111, 6045, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Plans: Iron Counterweight'),
(4111, 6211, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Recipe: Elixir of Ogre\'s Strength'),
(4111, 6391, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Pattern: Stylish Green Shirt'),
(4111, 7364, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Pattern: Heavy Earthen Gloves'),
(4111, 8350, 0, 100, 0, 1, 0, 1, 1, 'Kobold Baggins'),
(4111, 10424, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Plans: Silvered Bronze Leggings'),
(4111, 11039, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Formula: Enchant Cloak - Minor Agility'),
(4111, 11098, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Formula: Enchant Cloak - Lesser Shadow Resistance'),
(4111, 11164, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Formula: Enchant Weapon - Lesser Beastslayer'),
(4111, 11165, 0, 0.02, 0, 1, 0, 1, 1, 'Gravelsnout Kobold - Formula: Enchant Weapon - Lesser Elemental Slayer');
