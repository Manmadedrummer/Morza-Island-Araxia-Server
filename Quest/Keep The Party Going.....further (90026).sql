--Quest Template
DELETE FROM `quest_template` WHERE (`ID` = 90026);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardMoneyDifficulty`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(90026, 2, 10, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500000, 0, 0, 0, 0, 0, 0, 0, 0, 39769, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 469, 5, 0, 66, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2047, 'Keep The Party Going.....further!', 'Skwisgaar needs to keep the party going harder.. Bring 10 Jugs of Bourbon to him and keep the party going...further.', 'Bring 10 Jugs of Bourbon to Skwisgaar Skwigelf.', '', 'Heys I\'m feelings nots drunks enoughs. This guitars players is oks I guess. I needs a little drinky poo to understands its.', 0, 0, 0, 0, 0, 0, 0, 0, 2595, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 'Heys I\'m feelings nots drunks enoughs. This guitars players is oks I guess. I needs a little drinky poo to understands its.', '', '', '', 0);

--Quest Tempalte Addon
DELETE FROM `quest_template_addon` WHERE (`ID` = 90026);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES
(90026, 0, 0, 0, 90025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--Quest Request Items
DELETE FROM `quest_request_items` WHERE (`ID` = 90026);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES
(90026, 15, 0, 'Where is tha booze!???', 0);

--Quest Starter
DELETE FROM `creature_queststarter` WHERE (`quest` = 90026);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(101109, 90026);

--Quest Ender
DELETE FROM `creature_questender` WHERE (`quest` = 90026);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(101109, 90026);

--Quest Offer Reward
DELETE FROM `quest_offer_reward` WHERE (`ID` = 90026);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES
(90026, 4, 0, 0, 0, 0, 0, 0, 0, 'Yes, this shoulds dos. I\'m feelings prettys goods nows. Here takes this, its always going out of tunes..crappys guitars.', 0);
