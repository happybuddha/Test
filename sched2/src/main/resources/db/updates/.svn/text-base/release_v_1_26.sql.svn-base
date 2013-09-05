/*SQL update script for release v1.26 */
ALTER TABLE `credit_card` MODIFY COLUMN `security_code` VARCHAR(10) NULL;

ALTER TABLE `product` ADD `is_deleted` TINYINT NOT NULL DEFAULT '0';

/* Setting month value to -1 for Feb causes so it will not be displayed on Share page anymore */
ALTER TABLE `cause` MODIFY COLUMN `month` INTEGER NOT NULL DEFAULT 0;
update cause set month = -1 where cause_id in (1,2,3,4);