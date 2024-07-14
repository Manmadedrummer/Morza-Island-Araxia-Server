--QUEST OFFER REWARD
DELETE FROM `quest_offer_reward` WHERE (`ID` = 90015);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(90015, 10, 0, 0, 0, 0, 0, 0, 0, 'AHH! ME LEG!!  Oh it fits just like I remember. Though I think I can buff out these teeth marks.', 0);

--QUEST REQUEST ITEMS
DELETE FROM `quest_request_items` WHERE (`ID` = 90015);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(90015, 0, 0, 'Did you Get Ol Moby yet!?', 0);

--QUEST STARTER
DELETE FROM `creature_queststarter` WHERE (`quest` = 90015);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(101101, 90015);

--QUEST ENDER
DELETE FROM `creature_questender` WHERE (`quest` = 90015);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(101101, 90015);


--QUEST TEMPLATE
DELETE FROM `quest_template` WHERE (`ID` = 90015);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(90015, 2, 76, 75, 0, 0, 3, 0, 0, 0, 0, 0, 0, 500000, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48722, 1, 44914, 1, 30620, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 469, 7, 0, 67, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2047, 'Big White Murloc!', 'Find and slay Moby Murloc', 'Argh! That Blasted white Murloc took my wooden leg, made me file an insurance claim and this new\'n just dont feel right. Slay that White MRGLARG fish and get me original leg back!', '', 'Ah...Got me original Wooden Leg Back I Thank Ye!', 101100, 0, 0, 0, 1, 0, 0, 0, 9356, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '0', '0', '0', 0);
