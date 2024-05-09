--Supply Crate
DELETE FROM `gameobject_template` WHERE (`entry` = 166872);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(166872, 10, 335, 'Supply Crate', '', '', '', 1, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);

--Spawn
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(43119, 166872, 230, 0, 0, 1, 1, 401.911, -52.3001, -63.939, 0.331613, 0, 0, 0.165048, 0.986286, 600, 100, 1, '', 0, NULL),
(8000055, 166872, 5000, 0, 0, 1, 1, -13813.7, 3064.88, 4.76387, 4.04389, 0, 0, -0.899948, 0.435998, 300, 0, 1, '', NULL, NULL),
(8000056, 166872, 5000, 0, 0, 1, 1, -13817.4, 3060.41, 4.83482, 0.788883, 0, 0, -0.384293, -0.923211, 300, 0, 1, '', NULL, NULL);