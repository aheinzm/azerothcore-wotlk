-- DB custom 2024_04_21_00
--
ALTER TABLE `account` ADD COLUMN `zz_create_horde_paladin` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `account` ADD COLUMN `zz_create_alliance_shaman` TINYINT(1) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `account` ADD COLUMN `zz_max_characters` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1;
