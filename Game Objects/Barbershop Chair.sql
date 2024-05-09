--Barbershop Chair
DELETE FROM `gameobject_template` WHERE (`entry` = 190683);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(190683, 32, 7896, 'Barbershop Chair', '', '', '', 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);

--SPAWN
DELETE FROM `gameobject` WHERE (`id` = 190683);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(54960, 190683, 0, 0, 0, 1, 1, -4826.54, -921.986, 502.49, -1.45735, 0, 0, 0.904455, 0.426569, 180, 0, 1, '', 0, NULL),
(8000219, 190683, 5000, 0, 0, 1, 1, -13714.1, 3227.71, 11.7289, 2.30158, 0, 0, -0.913087, -0.407764, 300, 0, 1, '', NULL, NULL);
