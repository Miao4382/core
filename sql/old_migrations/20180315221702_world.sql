DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20180315221702');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20180315221702');
-- Add your query below.

UPDATE `creature_template` SET `MechanicImmuneMask`=1011483136 WHERE `entry` IN 
(13137,13138,13139,13140,13143,13144,13145,13146,13147,13152,13153,13154,13296,
13297,13298,13299,13300,13318,13319,13320,13616,13617,13356,13357,13597,13598,
13442,12097,13441,13257,13236,13176,12096,13577,13179,13437,13180,13181,13438,
13439,11657,11677,13078,13079,13086,13088,13216,13218,13447,13797,13798);

UPDATE `creature_template` SET `MechanicImmuneMask`=0 WHERE `entry` IN (13397);

-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;