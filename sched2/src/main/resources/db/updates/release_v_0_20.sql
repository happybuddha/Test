/* Update for cause descriptions to remove problematic characters */
update cause set description = "Fight global warming support Carbonfund.org Nicaraguan reforestation project. Together we are reforesting an area larger than Central Park!" where cause_id = 2;
update cause set description = "Global warming stinks! But there are alternatives! Landfill methane plants burn trash then turn it into clean energy. Now that is nothing to trash talk!" where cause_id = 3;
update mm_project_category set mm_project_category.`name` ="Create Your Own" where mm_project_category.`name` like 'Personalized';
update `mm_gift_occasion_category` set mm_gift_occasion_category.`name` ="Create Your Own" where mm_gift_occasion_category.`name` like 'Personalized';
update `mm_chore_category` set mm_chore_category.`name` ="Create Your Own" where mm_chore_category.`name` like 'Personalized';


CREATE TABLE `order_status` (
  `order_status_id` VARCHAR(50) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY(`order_status_id`)
)
ENGINE = InnoDB;


insert into order_status values ("IN_PROGRESS", "not charged yet");
insert into order_status values ("READY_FOR_DELIVERY", "charged but not shipped");
insert into order_status values ("DELIVERED", "order process complete");
insert into order_status values ("FAILED_TO_CHARGE", "order process incomplete");

ALTER TABLE `orders` ADD COLUMN `order_status_id` VARCHAR(50) NOT NULL AFTER `transaction_cost`;

update orders set order_status_id = "FAILED_TO_CHARGE";

ALTER TABLE `orders` ADD CONSTRAINT `FK_order_status_orders` FOREIGN KEY `FK_order_status_orders` (`order_status_id`)
    REFERENCES `order_status` (`order_status_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

insert into account_status values ("PAYMENT_FAILED", "client charging failed", "");

CREATE TABLE `system_user` (
  `system_user_id` BIGINT(20) NOT NULL,
  PRIMARY KEY(`system_user_id`)
)
ENGINE = InnoDB;




/* Data for the `login` table  (Records 1 - 248) */

INSERT INTO `login` (`account_status_id`, `role_id`, `username`, `password`, `lastlogin`, `description`, `first_name`, `subscription_date`) VALUES 
  ('ACTIVE', 'PARENT', 'admin@fiftyp.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2008-11-15 13:59:07', NULL, NULL, '2008-10-31');

select @lastInsertId := (Select LAST_INSERT_ID());

insert into system_user values (@lastInsertId);

ALTER TABLE `orders` ADD COLUMN `shipping_address_id` BIGINT(20) AFTER `order_status_id`;

CREATE TABLE `gift_order` (
  `gift_order_id` BIGINT(20),
  `unit_price` DOUBLE NOT NULL,
  `quantity` INTEGER NOT NULL,
  `shipping_handling_cost` DOUBLE NOT NULL,
  PRIMARY KEY(`gift_order_id`)
)
ENGINE = InnoDB;

update orders, `child_spend`, `product_order`
set orders.shipping_address_id = child_spend.address_id
where orders.`order_id` = product_order.`product_order_id` and product_order.`child_spend_id` = `child_spend`.`child_spend_id`;

ALTER TABLE `child_spend` DROP FOREIGN KEY `FK_address_child_spend`;
ALTER TABLE `child_spend` DROP COLUMN `address_id`;

ALTER TABLE `orders` ADD CONSTRAINT `FK_address_orders` FOREIGN KEY `FK_address_orders` (`shipping_address_id`)
    REFERENCES `address` (`address_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;


/* Updates for chores, gifts and projects */
update `mm_chore_category` set `mm_chore_category`.`name`='Pet Care' where `mm_chore_category`.`name`='Pets';
insert into mm_chore(mm_chore.`name`, mm_chore.`mm_chore_category_id`,`mm_chore`.`description`) values('Set table',1,'Set table');
update `mm_chore` set `mm_chore`.`name`='Unload dishwasher' where `mm_chore`.`name`='Unload dishwasher/put dishes away';
update `mm_chore` set `mm_chore`.`name`='Sort recyclable items' where `mm_chore`.`name`='Sort out recyclable items';
update `mm_chore` set `mm_chore`.`name`='Bring in mail' where `mm_chore`.`name`='Bring in the mail';
update `mm_chore` set `mm_chore`.`name`='Sweep deck & walkways' where `mm_chore`.`name`='Sweep deck';
update `mm_chore` set `mm_chore`.`name`='Prepare backpack' where `mm_chore`.`name` like 'Prepare backpack for next day';
insert into `mm_project_category`(`mm_project_category`.`name`, `mm_project_category`.`description`)
VALUES('Start a Business','Start a Business');
update `mm_chore` set `mm_chore`.`name`='Make a lunch' where `mm_chore`.`name` like 'Pack up lunch';
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values('Donate used toys & books',1,'Donate used toys & books');

insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values('Pull weeds',2,'Pull weeds');
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values('Mow lawn',2,'Mow lawn');
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values('Set up lawn furniture',2,'Set up lawn furniture');
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values('Put away lawn furniture',2,'Put away lawn furniture');

update `mm_project` set `mm_project`.`name`='Construct a birdhouse' where `mm_project`.`name` like 'Construct a bird house';
update `mm_project` set `mm_project`.`name`='Wash car' where `mm_project`.`name` like 'Wash the car';
update `mm_project` set `mm_project`.`name`='Wax car' where `mm_project`.`name` like 'Wax the car';
update `mm_project` set `mm_project`.`name`='Sweep deck & walkways' where `mm_project`.`name` like 'Sweep deck/terrace';

update `mm_project` set `mm_project`.`name`='Help supervise play dates' where `mm_project`.`name` like 'Help supervise playdates';
update `mm_project` set `mm_project`.`name`='Teach your sibling chess' where `mm_project`.`name` like 'Teach your brother chess';
update `mm_project` set `mm_project`.`name`='Babysit for siblings' where `mm_project`.`name` like 'Babysit for younger brothers/sisters';
update `mm_project` set `mm_project`.`name`='Help run a garage sale' where `mm_project`.`name` like 'Help run a tag sale';
update `mm_project` set `mm_project`.`name`='Update family photo album' where `mm_project`.`name` like 'Update a family photo album';
update `mm_project` set `mm_project`.`name`='Run errands for grandparent' where `mm_project`.`name` like 'Run errands for Grandma/Grandpa';
update `mm_project` set `mm_project`.`name`='Set out holiday decorations' where `mm_project`.`name` like 'Decorate house for a special occasion';

insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values('Paper-train the puppy',3,'Paper-train the puppy');
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Polish parents' shoes",3,"Polish parents' shoes");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Polish silverware",3,"Polish silverware");


insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Tend gardens",5,"Tend gardens");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Make custom t-shirts",5,"Make custom t-shirts");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Photograph pets",5,"Photograph pets");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Design jewelry",5,"Design jewelry");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Create holiday cards",5,"Create holiday cards");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("House-sit",5,"House-sit");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Be a mother's helper",5,"Be a mother's helper");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Water plants",5,"Water plants");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Walk dogs",5,"Walk dogs");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Feed pets",5,"Feed pets");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Design Web sites",5,"Design Web sites");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Trouble-shoot computers",5,"Trouble-shoot computers");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Teach juggling",5,"Teach juggling");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Feed",5,"Feed");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Give music lessons",5,"Give music lessons");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Give sports lessons",5,"Give sports lessons");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Tutor kids",5,"Tutor kids");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Babysit",5,"Babysit");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Rake leaves",5,"Rake leaves");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Shovel snow",5,"Shovel snow");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Grow & sell flowers",5,"Grow & sell flowers");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Grow & sell vegetables",5,"Grow & sell vegetables");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Knit baby blankets",5,"Knit baby blankets");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Run garage sales",5,"Run garage sales");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Sell drinks at sports games",5,"Sell drinks at sports games");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Design party favors",5,"Design party favors");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Wrap holiday gifts",5,"Wrap holiday gifts");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Teach ice-skating",5,"Teach ice-skating");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Perform magic shows",5,"Perform magic shows");
insert into `mm_project`(mm_project.`name`, mm_project.`mm_project_category_id`,`mm_project`.`description`)
values("Help run kids' parties",5,"Help run kids' parties");

update `mm_gift_occasion_category` set mm_gift_occasion_category.`name`="Celebrations" where mm_gift_occasion_category.name like "In Celebration of your success";
update `mm_gift_occasion` set `mm_gift_occasion`.`name`="Eid al-Fitr" where `mm_gift_occasion`.name like "Ramadan (Eid al-Fitr)";
update `mm_gift_occasion` set `mm_gift_occasion`.`name`="Moving Up" where `mm_gift_occasion`.name like "Moving Up (to new school level)";

update `mm_gift_occasion` set `mm_gift_occasion`.`name`="Sporting event" where `mm_gift_occasion`.name like "Winning Sports season";
update `mm_gift_occasion` set `mm_gift_occasion`.`name`="Science Fair" where `mm_gift_occasion`.name like "Science Fair award";
update `mm_gift_occasion` set `mm_gift_occasion`.`name`="Spelling Bee" where `mm_gift_occasion`.name like "Spelling Bee finalist";
update `mm_gift_occasion` set `mm_gift_occasion`.`name`="Good Report Card" where `mm_gift_occasion`.name like "Excellent Report Card";
insert into `mm_gift_occasion`(`mm_gift_occasion`.`name`, `mm_gift_occasion`.`mm_gift_occasion_category_id`, `mm_gift_occasion`.`description`)
values("Scout badge",4,"Scout badge");

/* New e-mail template for Suggest Cause */
INSERT INTO
  sys_template (sys_template_id, description, design, subject)
VALUES (
  'SUGGEST_CAUSE_CODE',
  'Email template for suggestcause',
  '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">\r\n</head>\r\n<body>\r\n<br>\r\n<br>\r\n<table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">\r\n  <tr>\r\n    <td style="border-bottom:1px solid #7B2B83">\r\n      <table width="100%" border="0">\r\n        <tr>\r\n          <td align="center"  nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>FiftyP site Suggested Cause from Child</b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style="padding:20px;font-size:12px; font-family:verdana;">\r\n	<p><b> ${userName}</b> suggested the following cause: </b></p>\r\n	<p> Location: <b> ${location}</b>.</p>\r\n	<p> Category : <b> ${category}</b>.</p>\r\n	<p> Cause : <b> ${cause}</b>.</p>\r\n	\r\n	<p>This suggested cause is generated from the machine <b>${clientAddress}</b> on <b>${date}</b>\r\n	</td>\r\n  </tr>\r\n\r\n</table>',
  'FiftyP site Suggested Cause from Child'
);

/* Update template for Spread the Word e-mail */
 UPDATE sys_template SET design = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>		\r\n	<title>FiftyP</title>\r\n</head>\r\n<body>\r\n<img  src="logo_parent.gif"  /><br />\r\n<font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>${userName} has sent you an ecard from FiftyP </b></font> \r\n<img  src="${imageName}" style="position:absolute;left:0px;top:120px;z-index:-1;" /> \r\n<table width="250" align="left"  style="position:absolute; top:127px; left: 8px; height: 271px;">\r\n    <tr>\r\n        <td >\r\n          <p style="color:#77823B;font-family:verdana;font-size:14px;"><b>From ${userName},</b>\r\n            <br />${userName}@fiftyp.com \r\n          </p>\r\n		<p style="font-family:verdana;font-size:13px;">${userName?split("@")[0]} wants you to know about Fiftyp.com, where kids get smart \r\n		about money and hooked on helping others.\r\n		 FiftyP teaches kids to be savvy shoppers and shows them how to make their savings grow.\r\n		 <br>And kids can connect with the causes they care about, all in a secure online setting.\r\n		</p>		\r\n		<p style="font-family:verdana;font-size:13px;">Check it out!<br>\r\n		<a target="_blank" href="http://www.fiftyp.com" style="color:#000000">www.fiftyp.com</a>\r\n		</p>\r\n  </tr>\r\n</table>\r\n</body>'
 WHERE sys_template.sys_template_id = 'SPREAD_THE_WORD_CODE' LIMIT 1 ;

ALTER TABLE cause ADD rating_photo_url TEXT NOT NULL AFTER photo2_url;
ALTER TABLE cause ADD cause_rating_color VARCHAR( 255 ) NOT NULL AFTER rating_photo_url;
UPDATE cause SET rating_photo_url = 'share/cause/treePlantingZoom.png' WHERE cause.cause_id = 1;
UPDATE cause SET rating_photo_url = 'share/cause/reforestationZoom.png' WHERE cause.cause_id = 2;
UPDATE cause SET rating_photo_url = 'share/cause/landfillMethaneZoom.png' WHERE cause.cause_id = 3;
UPDATE cause SET rating_photo_url = 'share/cause/renewableEnergyZoom.png' WHERE cause.cause_id = 4;
UPDATE cause SET cause_rating_color = '56A5EC' WHERE cause.cause_id = 1 LIMIT 1 ;
UPDATE cause SET cause_rating_color = '4CC417' WHERE cause.cause_id = 2 LIMIT 1 ;
UPDATE cause SET cause_rating_color = 'FD7303' WHERE cause.cause_id = 3 LIMIT 1 ;
UPDATE cause SET cause_rating_color = '9B30FF' WHERE cause.cause_id = 4 LIMIT 1 ;

ALTER TABLE cause ADD helpus_image_url TEXT NOT NULL;
UPDATE cause SET helpus_image_url = 'share/treePlantThumbnail.png' WHERE cause_id = 1;
UPDATE cause SET helpus_image_url = 'share/reforestThumbnail.png' WHERE cause_id = 2;
UPDATE cause SET helpus_image_url = 'share/landfillThumbnail.png' WHERE cause_id = 3;
UPDATE cause SET helpus_image_url = 'share/renewableNRGThumbnail.png' WHERE cause_id = 4;
