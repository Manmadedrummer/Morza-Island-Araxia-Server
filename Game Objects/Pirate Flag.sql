--Pirate Flag
DELETE FROM `gameobject_template` WHERE (`entry` = 187083);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(187083, 5, 7589, 'Pirate Flag', '', '', '', 1, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', -18019);

--SPAWN
DELETE FROM `gameobject` WHERE (`id` = 187083);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(2135953, 187083, 0, 0, 0, 1, 1, -5129.95, 4042.89, 54.9018, 5.51501, 0, 0, -0.374713, 0.927141, 300, 0, 1, '', NULL, NULL),
(8000126, 187083, 5000, 0, 0, 1, 1, -13854.9, 2978.37, 2.49227, 4.42676, 0, 0, -0.80055, 0.599266, 300, 0, 1, '', NULL, NULL);
