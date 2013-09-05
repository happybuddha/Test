/* modify the description field to accept null value */
alter table mm_project modify mm_project.`description` TEXT null;
alter table mm_chore modify mm_chore.`description` TEXT null;
alter table `mm_gift_occasion` modify mm_gift_occasion.`description` TEXT null;

/* Adding pay day freq foreign key in pay day table */
ALTER TABLE `child_profile` MODIFY COLUMN `payday_id` VARCHAR(50) NULL DEFAULT '';

update child_profile set payday_id = null;

update allowance_request set payday_id = null;

delete from `payday`;
ALTER TABLE `payday` ADD COLUMN `order_by` TINYINT(2) UNSIGNED NOT NULL AFTER `payday_id`;
ALTER TABLE `payday` ADD COLUMN `payday_freq_id` VARCHAR(50) NOT NULL AFTER `payday_id`,
 ADD CONSTRAINT `FK_payday_payday_freq` FOREIGN KEY `FK_payday_payday_freq` (`payday_freq_id`)
    REFERENCES `payday_freq` (`payday_freq_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;


--
-- Dumping data for table `fiftypdb`.`payday`
--

/*!40000 ALTER TABLE `payday` DISABLE KEYS */;
INSERT INTO `payday` (`name`,`description`,`payday_id`,`payday_freq_id`,`order_by`) VALUES 
 ('1st of Every Month','First Day of the Month','FIRST','MONTHLY',9),
 ('1st and Middle of Every Month','1st and Mid','FIRSTANDMID','BIWEEKLY',8),
 ('Every Friday','Friday','FRI','WEEKLY',6),
 ('Every Monday','Monday','MON','WEEKLY',2),
 ('Every Saturday','Saturday','SAT','WEEKLY',7),
 ('Every Sunday','Sunday','SUN','WEEKLY',1),
 ('Every Thursday','Thursday','THU','WEEKLY',5),
 ('Every Tuesday','Tuesday','TUE','WEEKLY',3),
 ('Every Wednesday','Wednesday','WED','WEEKLY',4);
/*!40000 ALTER TABLE `payday` ENABLE KEYS */;

update child_profile set payday_id = 'SUN';
update allowance_request set payday_id = 'SUN';
ALTER TABLE `child_profile` MODIFY COLUMN `payday_id` VARCHAR(50) NOT NULL DEFAULT '';

ALTER TABLE `child_profile` DROP COLUMN `payday_freq_id`,
 DROP FOREIGN KEY `FK_payday_freq_child_profile`;
 
 ALTER TABLE `allowance_request` DROP COLUMN `payday_freq_id`,
 DROP FOREIGN KEY `FK_payday_freq_allowance_request`;

ALTER TABLE `login` DROP FOREIGN KEY `FK_subscription_type_login`;

ALTER TABLE `login` DROP COLUMN `subscription_type_id`;

update subscription_type set subscription_type_id = "THREE_YEARS", name = "Three years subscription" where subscription_type_id = "MONTHLY";


ALTER TABLE `child_profile` ADD COLUMN `subscription_type_id` VARCHAR(45) NOT NULL AFTER `goal_setting_end_date`;

ALTER TABLE `child_profile` ADD COLUMN `subscription_expiry_date` DATE DEFAULT NULL AFTER `subscription_type_id`;

update child_profile set subscription_type_id = "FREE";


ALTER TABLE `child_profile` ADD CONSTRAINT `FK_subscription_type_child_profile` FOREIGN KEY `FK_subscription_type_child_profile` (`subscription_type_id`)
    REFERENCES `subscription_type` (`subscription_type_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

ALTER TABLE `login` ADD COLUMN `subscription_date` DATE NOT NULL AFTER `first_name`;

update login set subscription_date = '2008-10-31';

ALTER TABLE `parent_profile` DROP COLUMN `subscription_expiry_date`;

ALTER TABLE `parent_profile` DROP COLUMN `subscription_date`;


update subscription_type set price = "30" where subscription_type_id = "THREE_YEARS";
update subscription_type set price = "12" where subscription_type_id = "YEARLY";


drop table if exists invitation_code;
CREATE TABLE `invitation_code` (
  `invitation_code` VARCHAR(50) NOT NULL,
  `in_use` TINYINT NOT NULL DEFAULT 0,
  PRIMARY KEY(`invitation_code`),
  UNIQUE `Index_2` USING HASH(`invitation_code`)
)
ENGINE = InnoDB;

drop FUNCTION if exists INVITATION_CODE;
delimiter \\
CREATE FUNCTION INVITATION_CODE() Returns VARCHAR(22)
BEGIN
DECLARE code VARCHAR(22);
DECLARE allChar VARCHAR(50);
SET allChar = '12345abcdefghijklmnopqrstuvwxyz67890';
SET code = '';
lbl: LOOP
SET code = CONCAT(code, substring(allChar, FLOOR(rand()*36), 1));
IF LENGTH(code) > 20
THEN LEAVE lbl;
END IF;
END LOOP;
return UPPER(code);
END;
\\
delimiter ;
drop PROCEDURE if exists FILL_INVITATION_CODE;

delimiter \\
CREATE PROCEDURE FILL_INVITATION_CODE()
BEGIN
DECLARE codeNumbers INT;
DECLARE code VARCHAR(22);
SET codeNumbers=0;
outerLoop: LOOP
SET code = INVITATION_CODE();
insert into invitation_code values(code, 0);
SET codeNumbers = codeNumbers + 1;
IF codeNumbers > 499
THEN LEAVE outerLoop;
END IF;
END LOOP;
END;
\\
delimiter ;
call FILL_INVITATION_CODE();

update investment set maximum_amount = 9999.99 where maximum_amount = 9999999;


drop table if exists child_cause_rating;
/*==============================================================*/
/* Table: child_cause_rating                                    */
/*==============================================================*/
create table  child_cause_rating (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  child_profile_id bigint(20) NOT NULL,
  cause_id int(11) NOT NULL,
  rating varchar(25) DEFAULT NULL,
  primary key (id),
  CONSTRAINT FK_child_cause_rating_cause FOREIGN KEY (cause_id) REFERENCES cause (cause_id),
  CONSTRAINT FK_child_cause_rating_child_profile FOREIGN KEY (child_profile_id) REFERENCES child_profile (child_profile_id)
) ENGINE=InnoDB;