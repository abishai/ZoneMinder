ALTER TABLE `Monitors` ADD `Colours` TINYINT UNSIGNED NOT NULL DEFAULT '1' AFTER `Height`;
ALTER TABLE `Monitors` ADD `Deinterlacing` INT UNSIGNED NOT NULL DEFAULT '0' AFTER `Orientation`;

