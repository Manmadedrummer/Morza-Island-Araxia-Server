--Quest_Template_Addon
DELETE FROM `quest_template_addon` WHERE (`ID` = 90025);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(90025, 0, 0, 0, 0, 90026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--Quest Offer Reward
DELETE FROM `quest_offer_reward` WHERE (`ID` = 90025);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(90025, 4, 0, 0, 0, 0, 0, 0, 0, 'Oh Hell Yeah!  Now can keep rocking out! Uh....thanks...here', 0);

--Quest Request Items
DELETE FROM `quest_request_items` WHERE (`ID` = 90025);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(90025, 15, 0, 'Have you got the booze yet!?', 0);

--Quest Starter
DELETE FROM `creature_queststarter` WHERE (`quest` = 90025);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(101108, 90025);

--Quest Ender
DELETE FROM `creature_questender` WHERE (`quest` = 90025);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(101108, 90025);


--QUEST TEMPLATE
DELETE FROM `quest_template` WHERE (`ID` = 90025);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(90025, 2, 10, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20130, 1, 744, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 469, 5, 0, 66, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2047, 'Keep The Party Going!??', 'Toki needs to keep the party going. Bring 10 Flagons of Mead to Toki to help him keep it going.', 'Bring  10 Flagons of Mead to Toki.', '', 'I want to keep rocking out but don\'t wanna go to the bar. Can you bring me some more booze so we can keep this party going?', 0, 0, 0, 0, 0, 0, 0, 0, 2594, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 'Get 10 Flagons of Mead and bring them to me. ', '', '', '', 0);
