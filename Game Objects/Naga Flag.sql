--Naga Flag
DELETE FROM `gameobject_template` WHERE (`entry` = 181694);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(181694, 8, 6825, 'Naga Flag', '', '', '', 1, 1377, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);

--SPAWN
DELETE FROM `gameobject` WHERE (`id` = 181694);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(22188, 181694, 530, 3524, 3579, 1, 1, -5083.38, -11252.2, 0.57825, -0.680679, 0, 0, 0, 0, 60, 100, 1, '', 0, NULL),
(8000125, 181694, 5000, 0, 0, 1, 1, -13840.3, 2975.81, 2.79273, 4.61635, 0, 0, -0.740232, 0.672352, 300, 0, 1, '', NULL, NULL);
