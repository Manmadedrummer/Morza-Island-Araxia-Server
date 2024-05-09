--SPAWN
DELETE FROM `gameobject` WHERE (`id` = 202834);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(151830, 202834, 1, 0, 0, 1, 1, -833.628, -4980.71, 14.8236, -2.70526, 0, 0, 0, 0, 120, 0, 1, '', 0, NULL),
(8000155, 202834, 5000, 0, 0, 1, 1, -13843.4, 3366.29, 57.4793, 2.91688, 0, 0, -0.993695, -0.112122, 300, 0, 1, '', NULL, NULL);

--Barn Straw
DELETE FROM `gameobject_template` WHERE (`entry` = 202834);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(202834, 5, 9420, 'Sen\'jin Bat Roost Straw', '', '', '', 0.75, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);

