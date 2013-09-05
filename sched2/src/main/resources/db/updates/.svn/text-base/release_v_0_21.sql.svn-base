ALTER TABLE `parent_profile` ADD COLUMN `shipping_address_id` BIGINT(20) AFTER `activation_key`;

ALTER TABLE `parent_profile` ADD CONSTRAINT `FK_address_parent_profile` FOREIGN KEY `FK_address_parent_profile` (`shipping_address_id`)
    REFERENCES `address` (`address_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

/* adding first time to log in to parent profile where the default is true. Setting those that has date to false.*/
ALTER TABLE `parent_profile` MODIFY COLUMN `notify_requests` TINYINT(4) UNSIGNED NOT NULL DEFAULT 0,
ADD COLUMN `show_popup` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1 AFTER `activation_key`;
update parent_profile set show_popup =0 where parent_profile_id in( select fp_id  from login where lastlogin is not null);

UPDATE cause SET helpus_image_url = 'share/treePlantYou.png' WHERE cause_id = 1;
UPDATE cause SET helpus_image_url = 'share/reforestYou.png' WHERE cause_id = 2;
UPDATE cause SET helpus_image_url = 'share/landfillYou.png' WHERE cause_id = 3;
UPDATE cause SET helpus_image_url = 'share/renewableNRGYou.png' WHERE cause_id = 4;

/* Updates for cause descriptions and location */
UPDATE cause SET description = 'Adopt a Mangrove tree for only $5!  When you plant a tree your impact goes much further than that single tree, it affects the entire ecosystem surrounding the tree.  Tree planting invites other animals to thrive in the newly created forest; animals like sea creatures that live under their roots, oysters and fish, and birds that nest in their branches.\r\nMangrove trees do best by the sea, where they can drink up lots of salt water. Because they live on the coast they prevent erosion, or soils being washed away, from the shoreline.  This keeps habitats intact.\r\nEach tree you plant impacts the entire ecosystem. You\'re creating a forest on tree at a time!', location = 'India' WHERE cause_id = 1;
UPDATE cause SET description = 'Stop global warming! Reforest the land, put trees back in the ground and promote animal and people friendly habitats. That\'s what Carbonfund.org\'s Nicaraguan Return to the Forest Reforestation project is all about. \r\nGlobal warming is caused by emitting too many green house gases into the atmosphere.  These gases come from cars, building, airplanes and more.  The only way to remove carbon dioxide from the air is to absorb it through plants, like trees.  Putting trees in the ground guarantees that carbon will be sucked out of the air.  \r\nNot only are you fighting against global warming, you\'re also creating a safe habitat for animals like birds, mammals and reptiles, to live and grow.  Local families are also benefit when they work to plant and manage the trees.  Take a stand against global warming, support reforestation!', location = 'Rivas Provence, Nicaragua' WHERE cause_id = 2;
UPDATE cause SET description = 'Global warming stinks!  Trash does too, but put them together and you\'ve got a winning alternative energy combination.  But how\'s it work?\r\nHave you ever put your hand in a pile of fertilizer?  It comes out feeling warm and moist, gross!)\r\nFertilizer is a mixture of animal and plant waste products brought together to enrich the soil and help new plants grow.  Fertilizer emits heat as it decomposes, releasing methane, a green house gas that\'s bad for the environment.  But when a power plant burns this trash, capturing and storing the methane that is released, you can create electricity to heat your home or run your computer.\r\nAll this coming from a big pile of trash.  Just think, if we can make electricity from trash what other kinds of alternative power sources could there be?\r\n', location = 'New Bedford, MA' WHERE cause_id = 3;
UPDATE cause SET description = 'Wind power is one of the best ways we can use nature as a clean energy source!  Wind turbines harvest the blowing breezes around oceans and big, open fields and convert that into electricity to power your home.\r\nThe circumference of the wind turbine\'s blades can be as big as a football field!  In some places hundreds line up in fields producing energy for tens of thousands of homes and businesses.\r\nWind energy is a clean energy source, which means you\'re not burning fossil fuels like gasoline or coal to make electricity.  Burning fossil fuels causes our planet to get hotter which is changing our climate. The changing climate is bringing about more droughts, stronger hurricanes and is melting ice on the poles, making it difficult for the animals that rely on that ice to live.  By supporting wind power you\'re moving people away from fossil fuels and towards alternative energy.\r\n', location = 'Wingate, TX' WHERE cause_id = 4;

/* update template table */
UPDATE `sys_template` set `sys_template`.`design` = '<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\"http://www.w3.org/TR/html4/loose.dtd\">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n</head>\r\n<body>\r\n<table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"border:1px solid #7B2B83\">\r\n  <tr>\r\n    <td style=\"border-bottom:1px solid #7B2B83\">\r\n      <table width=\"100%\" border=\"0\">\r\n        <tr>\r\n          <td><img src=\"logo_parent.gif\" width=\"294\" height=\"84\"></td>\r\n          <td align=\"right\" style=\"padding:55px 10px 0px 0px\" nowrap=\"nowrap\"><font color=\"#F68B1F\" size=\"2\" style=\"font-size:14px;\" face=\"verdana\"><b>\r\n\t\t\t${request}\r\n\t\t  </b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style=\"padding:20px;font-size:12px; font-family:verdana;\">\r\n\t<p>Dear ${parentName},</p>\r\n\t<p>\r\n\t\t<b>A request is awaiting your approval at FiftyP.com!</b>\r\n\t\t<br/> \r\n\t\t<b>${childName}</b> ${childRequest}.<br>\r\n\t\tYou''ll find details on the Parent Summary page at <a href=''http://www.fiftyp.com''>www.fiftyp.com</a>. \r\n\t\t<br/> \r\n\r\n</p>\r\n\t<br/>\t\t\t\r\n\t\t<p>\r\n\t\t\tWith best wishes,<br>\r\n\t\t\tTeam FiftyP<br>\r\n\t\t\t<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>\r\n\t\t</p>\r\n\t</td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor=\"#7B2B83\" style=\"padding:5px\"> <font  style=\"font-size:11px; line-height:16px\" face=\"verdana\" color=\"#ffffff\">For more information please contact our support team at <a href=''http://www.fiftyp.com''>support@fiftyp.com</a><br>\r\n    or Call us at 971 - 111 111 111</font> </td>\r\n  </tr>\r\n</table>\r\n\r\n</body>'
WHERE sys_template.`sys_template_id` = 'REQUEST_SEND_TO_PARENT';

insert into role values ('SYSTEM_USER', 'System user role', '');
update login set role_id='SYSTEM_USER' where username = 'admin@fiftyp.com';
insert into privilege values (1, null, 'isChildPrv', 0);
insert into privilege values (2, null, 'isParentPrv', 0);
insert into privilege values (3, null, 'isSystemUserPrv', 0);
ALTER TABLE `privilege` ADD UNIQUE `uniq_prv_key`(`privilege_key`);
insert into role_privilege values (1, 'CHILD');
insert into role_privilege values (2, 'PARENT');
insert into role_privilege values (3, 'SYSTEM_USER');

/*remove kidshome4boy1 theme + adding new thene*/
delete from fp_theme where fp_theme.`theme_id`= 'kidshome4boy1';
insert into fp_theme (theme_id, name, description, theme_small_picture_url, theme_preview_picture_url) values ('kidshomeBoyipodblack', 'Kids Home Boy Ipod Black', '', 'themes/thumbnails/kidshomeBoyipodblack.png', 'themes/thumbnails/kidshomeBoyipodblack.png');

insert into order_status values ('NEW_ORDER', 'new order');
insert into order_status values ('FAILED_TO_PRE_AUTH', 'FAILED TO PRE AUTH');

DROP TABLE IF EXISTS `transaction_response`;
CREATE TABLE  `transaction_response` (
  `transaction_response_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `response` text NOT NULL,
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`transaction_response_id`),
  KEY `FK_orders_transaction_response` (`order_id`),
  CONSTRAINT `FK_orders_transaction_response` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `address` ADD COLUMN `company` VARCHAR(50) AFTER `zip_code`,
 ADD COLUMN `email` VARCHAR(128) AFTER `company`;

ALTER TABLE `transaction_response` ADD COLUMN `xml_sent` TEXT NOT NULL AFTER `order_id`;

ALTER TABLE `transaction_response` ADD COLUMN `date_executed` DATETIME NOT NULL AFTER `xml_sent`,
 ADD COLUMN `is_success` INTEGER NOT NULL AFTER `date_executed`;

update sys_template set `sys_template`.`design`='<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\"http://www.w3.org/TR/html4/loose.dtd\">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n</head>\r\n<body>\r\n<table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"border:1px solid #7B2B83\">\r\n  <tr>\r\n    <td style=\"border-bottom:1px solid #7B2B83\">\r\n      <table width=\"100%\" border=\"0\">\r\n        <tr>\r\n          <td><img src=\"logo_parent.gif\" width=\"294\" height=\"84\"></td>\r\n          <td align=\"right\" style=\"padding:55px 10px 0px 0px\" nowrap=\"nowrap\"><font color=\"#F68B1F\" size=\"2\" style=\"font-size:14px;\" face=\"verdana\"><b>Welcome to FiftyP </b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style=\"padding:20px;font-size:12px; font-family:verdana;\">\r\n\t<p>Dear ${userName},</p>\r\n\t<p>Your username is your email.</p>\r\n\t<br/>\t<p>Regards,<br/> \r\n\tThe FiftyP team \r\n\t</p>\r\n\t</td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor=\"#7B2B83\" style=\"padding:5px\"> <font  style=\"font-size:11px; line-height:16px\" face=\"verdana\" color=\"#ffffff\">For more information please contact our support team at support@fiftyp.com <br>\r\n    </font> </td>\r\n  </tr>\r\n</table>\r\n\r\n</body>\r\n</html>\r\n'
where `sys_template`.`sys_template_id` ='WELCOME_CODE';
