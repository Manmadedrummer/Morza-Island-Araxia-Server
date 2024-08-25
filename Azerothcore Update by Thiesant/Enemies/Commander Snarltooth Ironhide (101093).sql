--Creature
DELETE FROM `creature_template` WHERE (`entry` = 101093);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(101093, 0, 0, 0, 0, 0, 'Commander Snarltooth Ironhide', NULL, NULL, 0, 80, 82, 0, 20, 0, 1.2, 1.14286, 1, 1, 20, 1, 3, 0, 13, 2000, 2000, 1, 1, 1, 64, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 448, 448, 0, 0, 0, 24, 64, 'SmartAI', 1, 1, 125, 35, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID`= 101093);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`) VALUES
(101093, 0, 384, 1, 1);

--SPELLS
DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 101093);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(101093, 0, 6730, 12340),
(101093, 1, 6016, 12340),
(101093, 2, 6268, 12340);

--EQUIPMENT
DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 101093);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(101093, 1, 1905, 0, 0, 18019);

--SMART AI
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 101093;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 101093;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 101093);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101093, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Snarltooth Ironhide - On Aggro - Cast \'Rushing Charge\''),
(101093, 0, 2, 0, 0, 0, 100, 0, 1300, 3700, 20000, 25000, 0, 0, 11, 6730, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Snarltooth Ironhide - In Combat - Cast \'Head Butt\''),
(101093, 0, 3, 0, 0, 0, 100, 0, 4800, 6000, 30000, 30000, 0, 0, 11, 6016, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Commander Snarltooth Ironhide - In Combat - Cast \'Pierce Armor\'');

--Creature Loot
DELETE FROM `creature_loot_template` WHERE (`Entry` = 448);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(448, 117, 0, 6.0935, 0, 1, 0, 1, 1, 'Hogger - Tough Jerky'),
(448, 118, 0, 1.8364, 0, 1, 0, 1, 1, 'Hogger - Minor Healing Potion'),
(448, 159, 0, 3.5058, 0, 1, 0, 1, 1, 'Hogger - Refreshing Spring Water'),
(448, 765, 0, 0.16, 0, 1, 0, 1, 1, 'Hogger - Silverleaf'),
(448, 774, 0, 0.64, 0, 1, 0, 1, 1, 'Hogger - Malachite'),
(448, 818, 0, 2.96, 0, 1, 0, 1, 1, 'Hogger - Tigerseye'),
(448, 856, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Blue Leather Bag'),
(448, 1181, 0, 1.18, 0, 1, 0, 1, 1, 'Hogger - Scroll of Spirit'),
(448, 1210, 0, 0.74, 0, 1, 0, 1, 1, 'Hogger - Shadowgem'),
(448, 1307, 0, 1.9, 0, 1, 0, 1, 1, 'Hogger - Gold Pickup Schedule'),
(448, 1931, 0, 100, 1, 1, 0, 1, 1, 'Hogger - Huge Gnoll Claw'),
(448, 2070, 0, 0.02, 0, 1, 0, 1, 1, 'Hogger - Darnassian Bleu'),
(448, 2406, 0, 0.08, 0, 1, 0, 1, 1, 'Hogger - Pattern: Fine Leather Boots'),
(448, 2407, 0, 0.04, 0, 1, 0, 1, 1, 'Hogger - Pattern: White Leather Jerkin'),
(448, 2408, 0, 0.1, 0, 1, 0, 1, 1, 'Hogger - Pattern: Fine Leather Gloves'),
(448, 2409, 0, 0.02, 0, 1, 0, 1, 1, 'Hogger - Pattern: Dark Leather Tunic'),
(448, 2447, 0, 0.12, 0, 1, 0, 1, 1, 'Hogger - Peacebloom'),
(448, 2553, 0, 0.02, 0, 1, 0, 1, 1, 'Hogger - Recipe: Elixir of Minor Agility'),
(448, 2555, 0, 0.06, 0, 1, 0, 1, 1, 'Hogger - Recipe: Swiftness Potion'),
(448, 2589, 0, 23.3306, 0, 1, 0, 1, 4, 'Hogger - Linen Cloth'),
(448, 2598, 0, 0.14, 0, 1, 0, 1, 1, 'Hogger - Pattern: Red Linen Robe'),
(448, 2657, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Red Leather Bag'),
(448, 2881, 0, 0.04, 0, 1, 0, 1, 1, 'Hogger - Plans: Runed Copper Breastplate'),
(448, 2964, 0, 0.2087, 0, 1, 0, 1, 1, 'Hogger - Burnt Leather Gloves'),
(448, 2967, 0, 0.36, 0, 1, 0, 1, 1, 'Hogger - Warrior\'s Boots'),
(448, 2971, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Spellbinder Boots'),
(448, 2972, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Spellbinder Gloves'),
(448, 2975, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Hunting Boots'),
(448, 2979, 0, 0.1, 0, 1, 0, 1, 1, 'Hogger - Veteran Boots'),
(448, 3013, 0, 1.08, 0, 1, 0, 1, 1, 'Hogger - Scroll of Protection'),
(448, 3207, 0, 0.0835, 0, 1, 0, 1, 1, 'Hogger - Hunting Bracers'),
(448, 3213, 0, 0.14, 0, 1, 0, 1, 1, 'Hogger - Veteran Bracers'),
(448, 3609, 0, 0.1, 0, 1, 0, 1, 1, 'Hogger - Plans: Copper Chain Vest'),
(448, 3610, 0, 0.1, 0, 1, 0, 1, 1, 'Hogger - Plans: Gemmed Copper Gauntlets'),
(448, 3643, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Spellbinder Bracers'),
(448, 4292, 0, 0.02, 0, 1, 0, 1, 1, 'Hogger - Pattern: Green Woolen Bag'),
(448, 4293, 0, 0.02, 0, 1, 0, 1, 1, 'Hogger - Pattern: Hillman\'s Leather Vest'),
(448, 4345, 0, 0.02, 0, 1, 0, 1, 1, 'Hogger - Pattern: Red Woolen Boots'),
(448, 4346, 0, 0.02, 0, 1, 0, 1, 1, 'Hogger - Pattern: Heavy Woolen Cloak'),
(448, 4408, 0, 0.04, 0, 1, 0, 1, 1, 'Hogger - Schematic: Mechanical Squirrel Box'),
(448, 4409, 0, 0.02, 0, 1, 0, 1, 1, 'Hogger - Schematic: Small Seaforium Charge'),
(448, 4536, 0, 0.04, 0, 1, 0, 1, 1, 'Hogger - Shiny Red Apple'),
(448, 4540, 0, 0.02, 0, 1, 0, 1, 1, 'Hogger - Tough Hunk of Bread'),
(448, 4604, 0, 0.02, 0, 1, 0, 1, 1, 'Hogger - Forest Mushroom Cap'),
(448, 4677, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Veteran Cloak'),
(448, 4678, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Veteran Girdle'),
(448, 4683, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Spellbinder Cloak'),
(448, 4684, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Spellbinder Belt'),
(448, 4689, 0, 0.1252, 0, 1, 0, 1, 1, 'Hogger - Hunting Cloak'),
(448, 4690, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Hunting Belt'),
(448, 5573, 0, 0.1252, 0, 1, 0, 1, 1, 'Hogger - Green Leather Bag'),
(448, 5574, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - White Leather Bag'),
(448, 6271, 0, 0.06, 0, 1, 0, 1, 1, 'Hogger - Pattern: Red Linen Vest'),
(448, 6342, 0, 0.08, 0, 1, 0, 1, 1, 'Hogger - Formula: Enchant Chest - Minor Mana'),
(448, 6344, 0, 0.04, 0, 1, 0, 1, 1, 'Hogger - Formula: Enchant Bracer - Minor Spirit'),
(448, 6347, 0, 0.02, 0, 1, 0, 1, 1, 'Hogger - Formula: Enchant Bracer - Minor Strength'),
(448, 6348, 0, 0.06, 0, 1, 0, 1, 1, 'Hogger - Formula: Enchant Weapon - Minor Beastslayer'),
(448, 6506, 0, 0.2087, 0, 1, 0, 1, 1, 'Hogger - Infantry Boots'),
(448, 6507, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Infantry Bracers'),
(448, 6509, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Infantry Belt'),
(448, 6510, 0, 0.2504, 0, 1, 0, 1, 1, 'Hogger - Infantry Gauntlets'),
(448, 6513, 0, 0.36, 0, 1, 0, 1, 1, 'Hogger - Disciple\'s Sash'),
(448, 6514, 0, 0.38, 0, 1, 0, 1, 1, 'Hogger - Disciple\'s Cloak'),
(448, 6515, 0, 0.64, 0, 1, 0, 1, 1, 'Hogger - Disciple\'s Gloves'),
(448, 6517, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Pioneer Belt'),
(448, 6518, 0, 0.2087, 0, 1, 0, 1, 1, 'Hogger - Pioneer Boots'),
(448, 6519, 0, 0.2087, 0, 1, 0, 1, 1, 'Hogger - Pioneer Bracers'),
(448, 6521, 0, 0.2087, 0, 1, 0, 1, 1, 'Hogger - Pioneer Gloves'),
(448, 6549, 0, 0.08, 0, 1, 0, 1, 1, 'Hogger - Soldier\'s Cloak'),
(448, 6555, 0, 0.12, 0, 1, 0, 1, 1, 'Hogger - Bard\'s Cloak'),
(448, 6716, 0, 0.02, 0, 1, 0, 1, 1, 'Hogger - Schematic: EZ-Thro Dynamite'),
(448, 7288, 0, 0.08, 0, 1, 0, 1, 1, 'Hogger - Pattern: Rugged Leather Pants'),
(448, 7350, 0, 0.3, 0, 1, 0, 1, 1, 'Hogger - Disciple\'s Bracers'),
(448, 7351, 0, 0.7, 0, 1, 0, 1, 1, 'Hogger - Disciple\'s Boots'),
(448, 9742, 0, 0.1252, 0, 1, 0, 1, 1, 'Hogger - Simple Cord'),
(448, 9743, 0, 0.0835, 0, 1, 0, 1, 1, 'Hogger - Simple Shoes'),
(448, 9744, 0, 0.2504, 0, 1, 0, 1, 1, 'Hogger - Simple Bands'),
(448, 9745, 0, 0.5008, 0, 1, 0, 1, 1, 'Hogger - Simple Cape'),
(448, 9746, 0, 0.0835, 0, 1, 0, 1, 1, 'Hogger - Simple Gloves'),
(448, 9750, 0, 0.1669, 0, 1, 0, 1, 1, 'Hogger - Gypsy Sash'),
(448, 9751, 0, 0.1669, 0, 1, 0, 1, 1, 'Hogger - Gypsy Sandals'),
(448, 9752, 0, 0.0417, 0, 1, 0, 1, 1, 'Hogger - Gypsy Bands'),
(448, 9754, 0, 0.3339, 0, 1, 0, 1, 1, 'Hogger - Gypsy Cloak'),
(448, 9755, 0, 0.22, 0, 1, 0, 1, 1, 'Hogger - Gypsy Gloves'),
(448, 9758, 0, 0.22, 0, 1, 0, 1, 1, 'Hogger - Cadet Belt'),
(448, 9759, 0, 0.0835, 0, 1, 0, 1, 1, 'Hogger - Cadet Boots'),
(448, 9760, 0, 0.2, 0, 1, 0, 1, 1, 'Hogger - Cadet Bracers'),
(448, 9761, 0, 0.2922, 0, 1, 0, 1, 1, 'Hogger - Cadet Cloak'),
(448, 9762, 0, 0.0835, 0, 1, 0, 1, 1, 'Hogger - Cadet Gauntlets'),
(448, 300300, 0, 100, 0, 1, 0, 1, 1, '');


--SPAWN
DELETE FROM `creature` WHERE (`id1` = 101093);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(9000566, 101093, 0, 0, 5000, 0, 0, 1, 1, 1, -13946.3, 3318.74, 11.414, 3.42575, 300, 0, 0, 705875, 0, 0, 0, 0, 0, '', NULL, 0, NULL);
