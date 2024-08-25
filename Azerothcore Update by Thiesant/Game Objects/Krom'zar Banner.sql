--Kromzar Banner
DELETE FROM `gameobject_template` WHERE (`entry` = 164690);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(164690, 3, 2933, 'Krom\'zar\'s Banner', '', '', '', 0.3, 93, 11000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 11723);

--SPAWN
DELETE FROM `gameobject` WHERE (`id` = 164690);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(8000124, 164690, 5000, 0, 0, 1, 1, -13853.9, 2987.29, 3.60465, 4.55627, 0, 0, -0.760093, 0.649814, 300, 0, 1, '', NULL, NULL);
