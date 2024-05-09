--GUILD VAULT
DELETE FROM `gameobject_template` WHERE (`entry` = 187293);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(187293, 34, 7607, 'Guild Vault', '', '', '', 1, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', -18019);

--SPAWN
DELETE FROM `gameobject` WHERE (`id` = 187293);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(2135509, 187293, 1, 0, 0, 1, 165, 16230.5, 16283.5, 13.9061, 3, 0, 0, -0.997495, -0.0707372, 300, 0, 1, '', NULL, NULL),
(8000744, 187293, 5000, 0, 0, 1, 1, -13746.7, 3226.35, 5.33132, 2.41401, 0, 0, -0.934555, -0.35582, 300, 0, 1, '', NULL, NULL);
