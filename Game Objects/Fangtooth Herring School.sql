--Fangtooth Herring School
DELETE FROM `gameobject_template` WHERE (`entry` = 192049);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(192049, 25, 6482, 'Fangtooth Herring School', '', '', '', 1, 4, 25663, 3, 5, 1628, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);

--SPAWN
DELETE FROM `gameobject` WHERE (`id` = 192049);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(56997, 192049, 571, 0, 0, 1, 1, 1831.63, -4722.26, 184.993, 2.89724, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(56998, 192049, 571, 0, 0, 1, 1, 2187.65, -3626.18, 159.83, -1.64061, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(56999, 192049, 571, 0, 0, 1, 1, 1555.23, -5344.15, 187.701, -0.383971, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57000, 192049, 571, 0, 0, 1, 1, 1423.67, -5366.36, 187.701, -2.28638, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57001, 192049, 571, 0, 0, 1, 1, 2200.32, -3572.03, 148.315, -1.02974, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57002, 192049, 571, 0, 0, 1, 1, 1845.97, -5095.31, 171.82, -1.71042, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57003, 192049, 571, 0, 0, 1, 1, 1917.56, -5201.22, 177.317, -2.56563, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57004, 192049, 571, 0, 0, 1, 1, 2416.19, -5285.35, 248.561, -0.261798, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57005, 192049, 571, 0, 0, 1, 1, 2249.85, -5251.88, 248.561, 0.977383, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57006, 192049, 571, 0, 0, 1, 1, 813.242, -5509.64, 0.000624, -1.01229, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57007, 192049, 571, 0, 0, 1, 1, 1055.35, -4596.41, 183.174, 1.69297, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57008, 192049, 571, 0, 0, 1, 1, 1895.17, -4533.63, 184.993, -0.506145, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57009, 192049, 571, 0, 0, 1, 1, 2052.45, -3249.55, 54.5463, -1.67551, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57010, 192049, 571, 0, 0, 1, 1, 1471.4, -4924.26, 114.631, 0.663223, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57011, 192049, 571, 0, 0, 1, 1, 1500.96, -4395.69, 114.631, 1.55334, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57012, 192049, 571, 0, 0, 1, 1, 2073.05, -4199.69, 213.583, -2.46091, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57013, 192049, 571, 0, 0, 1, 1, 1882.33, -4263.94, 200.945, 0.767944, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57014, 192049, 571, 0, 0, 1, 1, 1326.63, -4726.37, 183.174, -2.87979, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57015, 192049, 571, 0, 0, 1, 1, 1467.03, -5028.32, 114.631, 0.977383, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57016, 192049, 571, 0, 0, 1, 1, 1688.02, -5018.22, 114.631, 2.02458, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57017, 192049, 571, 0, 0, 1, 1, 1740.95, -4815.69, 114.631, 2.53072, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57018, 192049, 571, 0, 0, 1, 1, 1583.05, -3296.64, 0, 1.98967, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57019, 192049, 571, 0, 0, 1, 1, 1606.02, -3892.88, 75.8467, -0.174532, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57020, 192049, 571, 0, 0, 1, 1, 2330.41, -3775.83, 217.785, 1.32645, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57021, 192049, 571, 0, 0, 1, 1, 2198.59, -3850.22, 217.656, -1.5708, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57022, 192049, 571, 0, 0, 1, 1, 2192.45, -4064.44, 217.785, -0.331611, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57023, 192049, 571, 0, 0, 1, 1, 2252.88, -4141.54, 217.785, 1.02974, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57024, 192049, 571, 0, 0, 1, 1, 2335.84, -4187.02, 217.785, -1.29154, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57025, 192049, 571, 0, 0, 1, 1, 2415.34, -3983.39, 217.785, -2.14675, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(64156, 192049, 571, 0, 0, 1, 1, 1538.4, -3957.79, 114.631, -0.855211, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64157, 192049, 571, 0, 0, 1, 1, 971.469, -4613.56, 183.174, -1.13446, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64158, 192049, 571, 0, 0, 1, 1, 2057.11, -3432.77, 134.333, -1.46608, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64159, 192049, 571, 0, 0, 1, 1, 2317.6, -5090.4, 248.561, 1.93731, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64160, 192049, 571, 0, 0, 1, 1, 1575.79, -3223.73, 0, 0.226892, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64161, 192049, 571, 0, 0, 1, 1, 2231.38, -5448.48, 248.561, 0.261798, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64162, 192049, 571, 0, 0, 1, 1, 2213.3, -5293.34, 248.561, 2.79252, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64163, 192049, 571, 0, 0, 1, 1, 2344.66, -5035.79, 248.561, 2.05949, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64164, 192049, 571, 0, 0, 1, 1, 756.79, -5009.18, 0, -2.86233, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64165, 192049, 571, 0, 0, 1, 1, 1645.31, -3842.03, 75.8467, -0.069812, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64166, 192049, 571, 0, 0, 1, 1, 2337.93, -5448.31, 248.561, -0.314158, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64167, 192049, 571, 0, 0, 1, 1, 2091.26, -3241.44, 54.5463, 3.01941, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64168, 192049, 571, 0, 0, 1, 1, 1878.88, -4298.24, 200.945, 2.21656, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64169, 192049, 571, 0, 0, 1, 1, 2395.47, -5300.36, 248.561, 1.16937, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64170, 192049, 571, 0, 0, 1, 1, 1546.84, -3154.27, 0, -1.53589, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64171, 192049, 571, 0, 0, 1, 1, 522.474, -5067.89, 0, 2.86233, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64172, 192049, 571, 0, 0, 1, 1, 697, -5073.45, 0, 1.74533, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64173, 192049, 571, 0, 0, 1, 1, 2007.57, -4280.52, 210.878, -0.488691, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64174, 192049, 571, 0, 0, 1, 1, 842.09, -5500.64, 0.000624, 0.680677, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64175, 192049, 571, 0, 0, 1, 1, 1045.61, -4632.16, 183.174, 2.23402, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64176, 192049, 571, 0, 0, 1, 1, 1153.45, -4621.33, 183.174, -0.052359, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64177, 192049, 571, 0, 0, 1, 1, 1618.23, -3649.67, 75.8467, 1.83259, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64178, 192049, 571, 0, 0, 1, 1, 2197.65, -3883.69, 217.785, -1.6057, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64179, 192049, 571, 0, 0, 1, 1, 2295.67, -3822.08, 217.785, 2.33874, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64180, 192049, 571, 0, 0, 1, 1, 555.597, -5054.02, 0, -2.87979, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64181, 192049, 571, 0, 0, 1, 1, 537.458, -5072.58, 0, -1.69297, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64182, 192049, 571, 0, 0, 1, 1, 577.356, -5078.14, 0, -1.02974, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64183, 192049, 571, 0, 0, 1, 1, 531.822, -5065.35, 0, 0.628317, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64184, 192049, 571, 0, 0, 1, 1, 2378.78, -4088.8, 217.785, -2.02458, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64185, 192049, 571, 0, 0, 1, 1, 2395.19, -3873.54, 217.785, -1.06465, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64186, 192049, 571, 0, 0, 1, 1, 1618.96, -3682.6, 75.8467, -1.69297, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64187, 192049, 571, 0, 0, 1, 1, 877.059, -5519.64, 0.000624, -0.174532, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64188, 192049, 571, 0, 0, 1, 1, 1906.04, -4449.77, 196.69, 1.76278, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64189, 192049, 571, 0, 0, 1, 1, 1443.63, -4986.42, 114.631, -1.23918, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64190, 192049, 571, 0, 0, 1, 1, 1516.9, -5071.79, 114.631, -2.3911, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64191, 192049, 571, 0, 0, 1, 1, 1657.33, -5033.36, 114.631, -2.63544, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64192, 192049, 571, 0, 0, 1, 1, 2361.77, -5120.46, 248.561, -0.401425, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64193, 192049, 571, 0, 0, 1, 1, 656.629, -5089.68, 0, -1.95477, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64194, 192049, 571, 0, 0, 1, 1, 2227.78, -5332.08, 248.561, 0.244346, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64195, 192049, 571, 0, 0, 1, 1, 2326.23, -5160.66, 248.561, -2.60053, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64196, 192049, 571, 0, 0, 1, 1, 828.854, -5508.41, 0.000624, -2.84488, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64197, 192049, 571, 0, 0, 1, 1, 544.301, -5062.71, 0, -2.00713, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64198, 192049, 571, 0, 0, 1, 1, 835.295, -5034.86, 0, -1.62316, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64199, 192049, 571, 0, 0, 1, 1, 2322.21, -5426.78, 248.561, -0.314158, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64200, 192049, 571, 0, 0, 1, 1, 2280.94, -5214.97, 248.561, -0.279252, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64201, 192049, 571, 0, 0, 1, 1, 2373.86, -3816.07, 217.785, -1.69297, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64202, 192049, 571, 0, 0, 1, 1, 1815.59, -5042.85, 171.171, -0.925024, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64203, 192049, 571, 0, 0, 1, 1, 921.869, -5024.01, 0, -0.506145, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64204, 192049, 571, 0, 0, 1, 1, 1158.41, -4681.65, 183.174, -0.663223, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64205, 192049, 571, 0, 0, 1, 1, 1791.59, -5146.55, 172.92, 0.628317, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64206, 192049, 571, 0, 0, 1, 1, 1209.59, -4579.6, 183.174, 0.977383, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64207, 192049, 571, 0, 0, 1, 1, 1555.33, -5058.23, 114.631, -1.41372, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64208, 192049, 571, 0, 0, 1, 1, 2237.42, -5466.17, 248.561, 1.06465, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64209, 192049, 571, 0, 0, 1, 1, 1114.74, -4621.63, 183.174, -1.32645, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64210, 192049, 571, 0, 0, 1, 1, 1590.68, -3261.75, 0, -2.84488, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(8000189, 192049, 5000, 0, 0, 1, 1, -13561.9, 2874.78, 1.00071, 2.84724, 0, 0, -0.989189, -0.146644, 300, 0, 1, '', NULL, NULL),
(8000190, 192049, 5000, 0, 0, 1, 1, -13579.8, 2821.76, 1.00071, 4.42676, 0, 0, -0.800551, 0.599265, 300, 0, 1, '', NULL, NULL),
(8000191, 192049, 5000, 0, 0, 1, 1, -13518.2, 2889.89, 1.00152, 3.12813, 0, 0, -0.999977, -0.00673273, 300, 0, 1, '', NULL, NULL);