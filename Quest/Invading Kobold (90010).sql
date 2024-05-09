--Quest Template
DELETE FROM `quest_template` WHERE (`ID` = 90010);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(90010, 2, 76, 75, 0, 0, 4, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 8, 0, 47241, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46021, 1, 37835, 1, 34360, 1, 37111, 1, 39257, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 469, 8, 0, 67, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2047, 'Kobold Invaders!', 'With the King busy with the Imposters, Commander Houston has asked you to take care of the invading kobold force. Slay Commander Snarltooth Ironhide and bring his head back as proof.', 'The Commander of Moraz Island asked you to take care of the kobold Invaders coming from their mine.', '', 'Thank you $N! Now that the invaders have no commander their activity should die down. The residents of Moraz Island thank you!', 101093, 0, 0, 0, 1, 0, 0, 0, 300300, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '0', '0', '0', 0);

--QUEST OFFER REWWARD
DELETE FROM `quest_offer_reward` WHERE (`ID` = 90010);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(90010, 10, 0, 0, 0, 0, 0, 0, 0, 'Thank you brave warrior! Now that the invaders have no commander their activity should die down. The residents of Moraz Island thank you! Please take these gifts as a token of our gratitude. ', 0);

--QUEST REQUEST ITEMS
DELETE FROM `quest_request_items` WHERE (`ID` = 90010);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(90010, 0, 0, 'Have you dealt with those insolent Kobolds and their Commander?', 0);

--QUEST STARTER
DELETE FROM `creature_queststarter` WHERE (`quest` = 90010);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(101094, 90010);

--QUEST ENDER
DELETE FROM `creature_questender` WHERE (`quest` = 90010);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(101094, 90010);
