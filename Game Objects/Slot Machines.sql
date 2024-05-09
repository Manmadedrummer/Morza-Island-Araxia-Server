--SLOT MAchines
DELETE FROM `gameobject_template` WHERE (`entry` = 750001);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(750001, 1, 2373, 'Slot Machine', 'Interact', '', '', 0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0);

--SPAWN
DELETE FROM `gameobject` WHERE (`id` = 750001);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(2135856, 750001, 0, 0, 0, 1, 1, -4890.54, -983.202, 503.941, 5.49069, 0, 0, -0.385962, 0.922515, 300, 0, 1, '', NULL, NULL),
(2135857, 750001, 0, 0, 0, 1, 1, -8936.62, 625.144, 99.5235, 6.16423, 0, 0, -0.0594415, 0.998232, 300, 0, 1, '', NULL, NULL),
(2135858, 750001, 530, 0, 0, 1, 1, -1761.34, 5144.86, -37.2046, 6.08757, 0, 0, -0.0976534, 0.995221, 300, 0, 1, '', NULL, NULL),
(2135859, 750001, 530, 0, 0, 1, 1, -1745.86, 5149.47, -37.2048, 4.19044, 0, 0, -0.865613, 0.500714, 300, 0, 1, '', NULL, NULL),
(2135861, 750001, 1, 0, 0, 1, 1, 16233.3, 16299.1, 20.8458, 1.60752, 0, 0, -0.719972, -0.694003, 300, 0, 1, '', NULL, NULL),
(2135862, 750001, 1, 0, 0, 1, 1, 16235, 16298.6, 20.8458, 1.47125, 0, 0, -0.671049, -0.741413, 300, 0, 1, '', NULL, NULL),
(8000689, 750001, 5000, 0, 0, 1, 1, -13732.6, 3226.21, 4.34618, 0.733337, 0, 0, -0.358507, -0.933527, 300, 0, 1, '', NULL, NULL),
(8000691, 750001, 5000, 0, 0, 1, 1, -13734.4, 3228.05, 4.40569, 0.666737, 0, 0, -0.327228, -0.944945, 300, 0, 1, '', NULL, NULL);
