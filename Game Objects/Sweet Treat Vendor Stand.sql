--Sweet Treat Vendor Stand
DELETE FROM `gameobject_template` WHERE (`entry` = 183355);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(183355, 5, 7170, 'Shattrath Soup Tent', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);

--SPAWN
DELETE FROM `gameobject` WHERE (`id` = 183355);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(24224, 183355, 530, 3703, 3703, 1, 1, -1927.38, 5237.67, -41.8325, 1.53589, 0, 0, 0.694658, 0.71934, 181, 100, 1, '', 0, NULL),
(8000028, 183355, 5000, 0, 0, 1, 1, -13776.6, 3084.66, 2.84097, 0.752952, 0, 0, -0.367646, -0.929966, 300, 0, 1, '', NULL, NULL);
