--QUEST OFFER REWARD
DELETE FROM `quest_offer_reward` WHERE (`ID` = 90011);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(90011, 10, 0, 0, 0, 0, 0, 0, 0, 'Thank you for the help! Here take this as a token of my appreciation.', 0);

--QUEST REQUEST ITEMS
DELETE FROM `quest_request_items` WHERE (`ID` = 90011);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(90011, 0, 0, 'Have you gotten rid of those rat looking bastards yet?', 0);

--QUEST STARTER
DELETE FROM `creature_queststarter` WHERE (`quest` = 90011);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(101095, 90011);

--QUEST ENDER
DELETE FROM `creature_questender` WHERE (`quest` = 90011);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(101095, 90011);

--QUEST TEMPLATE
DELETE FROM `quest_template` WHERE (`ID` = 90011);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(90011, 2, 80, 75, 0, 0, 3, 0, 0, 0, 0, 0, 0, 500000, 0, 0, 0, 0, 0, 0, 8, 0, 36909, 10, 3340, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20723, 1, 42796, 1, 38347, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 469, 8, 0, 67, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2047, 'THIS IS MY MINE!!', 'Get rid of those pesky Kobolds!', 'These damn Kobolds think they can just take over my MY MINE! They need to think again? Mind clearing out a few for me...I\'ll pay.', '', 'These damn Kobolds have invaded the wrong mine! Can you help clear my mine of these pest?', 101091, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0', '0', '0', 0);
