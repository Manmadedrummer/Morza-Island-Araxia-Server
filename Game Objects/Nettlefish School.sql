--Nettlefish School
DELETE FROM `gameobject_template` WHERE (`entry` = 192057);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(192057, 25, 6482, 'Nettlefish School', '', '', '', 1, 4, 25673, 3, 5, 1628, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);

--SPAWN
DELETE FROM `gameobject` WHERE (`id` = 192057);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(57214, 192057, 571, 0, 0, 1, 1, 6184.01, 5184.04, -101.038, 0.209439, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57215, 192057, 571, 0, 0, 1, 1, 5546.21, 5855.38, -67.411, -0.663223, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57216, 192057, 571, 0, 0, 1, 1, 5598.08, 4449.18, -145.493, 3.00195, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57217, 192057, 571, 0, 0, 1, 1, 4918.47, 4888.9, -104.595, 1.53589, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57218, 192057, 571, 0, 0, 1, 1, 6058.1, 3923, -51.2663, -2.07694, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57219, 192057, 571, 0, 0, 1, 1, 5923.03, 4013.81, -71.7024, 1.53589, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57227, 192057, 571, 0, 0, 1, 1, 5472.82, 5649.42, -101.307, 2.40855, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57228, 192057, 571, 0, 0, 1, 1, 6099.76, 5274.02, -101.038, 2.1293, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57229, 192057, 571, 0, 0, 1, 1, 5520.29, 5972.36, -46.8491, 0.366518, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57230, 192057, 571, 0, 0, 1, 1, 5977.65, 4931, -101.036, -2.82743, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57236, 192057, 571, 0, 0, 1, 1, 5806.98, 4796.55, -138.798, 2.47837, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57237, 192057, 571, 0, 0, 1, 1, 4791.76, 4735.31, -72.5281, 0.95993, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57238, 192057, 571, 0, 0, 1, 1, 6088.62, 5073.25, -101.038, 0.034906, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57239, 192057, 571, 0, 0, 1, 1, 5436.06, 3752.58, -68.9364, 0.401425, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57240, 192057, 571, 0, 0, 1, 1, 5517.55, 5084.01, -133.083, -0.785397, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57241, 192057, 571, 0, 0, 1, 1, 6281.48, 5220.45, -101.038, -0.645772, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57242, 192057, 571, 0, 0, 1, 1, 5624.33, 4402.65, -145.493, 1.6057, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57243, 192057, 571, 0, 0, 1, 1, 5175.55, 4848.42, -135.546, 0.401425, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57244, 192057, 571, 0, 0, 1, 1, 5407.58, 4772.16, -198.92, -2.16421, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57245, 192057, 571, 0, 0, 1, 1, 5504.51, 4794.9, -198.92, 0.174532, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57246, 192057, 571, 0, 0, 1, 1, 5461.23, 4887.26, -198.92, -2.05949, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(57247, 192057, 571, 0, 0, 1, 1, 6124.55, 5291.01, -101.038, -0.523598, 0, 0, 0, 1, 300, 100, 1, '', 0, NULL),
(63159, 192057, 571, 0, 0, 1, 1, 5950.69, 3990.87, -71.7024, -1.43117, 0, 0, 0, 1, 3600, 255, 1, '', 0, NULL),
(63160, 192057, 571, 0, 0, 1, 1, 5113.41, 4956.94, -135.546, -1.78023, 0, 0, 0, 1, 3600, 255, 1, '', 0, NULL),
(64482, 192057, 571, 0, 0, 1, 1, 5494.16, 5287.61, -133.083, 1.98967, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64483, 192057, 571, 0, 0, 1, 1, 5494.01, 5028.13, -133.083, 2.35619, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64484, 192057, 571, 0, 0, 1, 1, 5553.21, 5823.71, -74.2433, 0.453785, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64485, 192057, 571, 0, 0, 1, 1, 4806.75, 4675.5, -69.3905, 3.10665, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64486, 192057, 571, 0, 0, 1, 1, 5220.29, 4804.67, -135.763, -1.51844, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64487, 192057, 571, 0, 0, 1, 1, 5426.24, 5557.71, -101.307, -1.67551, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64488, 192057, 571, 0, 0, 1, 1, 5848.93, 4952.96, -138.798, -1.23918, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64489, 192057, 571, 0, 0, 1, 1, 5823.05, 4851.29, -138.798, 1.78023, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64490, 192057, 571, 0, 0, 1, 1, 5771.12, 4307.16, -113.584, 1.95477, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64491, 192057, 571, 0, 0, 1, 1, 5448.2, 3733.29, -68.9364, 0.383971, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64492, 192057, 571, 0, 0, 1, 1, 5400.07, 4832.68, -198.92, -3.07177, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64493, 192057, 571, 0, 0, 1, 1, 5484.3, 4865.85, -198.92, -2.3911, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64494, 192057, 571, 0, 0, 1, 1, 5392.42, 4827.97, -198.92, 2.86233, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64495, 192057, 571, 0, 0, 1, 1, 5679.59, 4404.9, -145.493, -1.58825, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64496, 192057, 571, 0, 0, 1, 1, 6142.33, 5161.62, -101.038, -2.68781, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64497, 192057, 571, 0, 0, 1, 1, 5412.38, 3771.16, -68.9364, 2.1293, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64498, 192057, 571, 0, 0, 1, 1, 5525.69, 5932.36, -51.8388, -2.72271, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64499, 192057, 571, 0, 0, 1, 1, 6116.48, 5397.3, -101.038, 1.3439, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64500, 192057, 571, 0, 0, 1, 1, 4947.83, 4980.78, -109.093, 1.43117, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64501, 192057, 571, 0, 0, 1, 1, 5131.8, 4906.59, -135.546, 1.74533, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64502, 192057, 571, 0, 0, 1, 1, 5444.47, 5254.96, -133.083, -0.820303, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64503, 192057, 571, 0, 0, 1, 1, 5518.02, 4817.67, -198.92, -1.79769, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64504, 192057, 571, 0, 0, 1, 1, 5401.15, 4853.24, -198.92, 1.72787, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(64505, 192057, 571, 0, 0, 1, 1, 5261.82, 4803.54, -137.781, -2.79252, 0, 0, 0, 1, 180, 100, 1, '', 0, NULL),
(8000183, 192057, 5000, 0, 0, 1, 1, -13705.8, 3165.9, 1.00951, 0.190408, 0, 0, -0.0950601, -0.995472, 300, 0, 1, '', NULL, NULL),
(8000184, 192057, 5000, 0, 0, 1, 1, -13662.5, 3125.25, 1.00056, 5.6845, 0, 0, -0.29489, 0.955531, 300, 0, 1, '', NULL, NULL);