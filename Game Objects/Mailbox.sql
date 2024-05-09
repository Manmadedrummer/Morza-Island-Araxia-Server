--Mailbox
DELETE FROM `gameobject_template` WHERE (`entry` = 142095);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(142095, 19, 1906, 'Mailbox', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);


--SPAWN
DELETE FROM `gameobject` WHERE (`id` = 142095);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(7555, 142095, 1, 0, 0, 1, 1, -3618.42, -4437.94, 13.4574, 3.14159, 0, 0, -1, 0, 120, 255, 1, '', 49345, NULL),
(8000269, 142095, 5000, 0, 0, 1, 1, -13734.1, 3055.4, 3.04603, 3.21032, 0, 0, -0.99941, 0.0343568, 300, 0, 1, '', NULL, NULL);
