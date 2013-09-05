insert into child_transaction_type values ('SAVE_INTEREST_TRANSACTION_PENALTY', 'penalty transaction');
/*request template data fro sys_template table*/
INSERT INTO `sys_template` (`sys_template_id`, `description`, `design`, `subject`) VALUES ('REQUEST_SEND_TO_PARENT', 'Email template of child''s request sent to parent', '<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\"http://www.w3.org/TR/html4/loose.dtd\">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\">\r\n</head>\r\n<body>\r\n<table width=\"600\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"border:1px solid #7B2B83\">\r\n  <tr>\r\n    <td style=\"border-bottom:1px solid #7B2B83\">\r\n      <table width=\"100%\" border=\"0\">\r\n        <tr>\r\n          <td><img src=\"logo_parent.gif\" width=\"294\" height=\"84\"></td>\r\n          <td align=\"right\" style=\"padding:55px 10px 0px 0px\" nowrap=\"nowrap\"><font color=\"#F68B1F\" size=\"2\" style=\"font-size:14px;\" face=\"verdana\"><b>\r\n\t\t\t${request}\r\n\t\t  </b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style=\"padding:20px;font-size:12px; font-family:verdana;\">\r\n\t<p>Dear ${parentName},</p>\r\n\t<p>\r\n\t\t<b>A request is waiting for your approval at FiftyP.com!</b>\r\n\t\t<br/> \r\n\t\t<b>${childName}</b> ${childRequest}.<br>\r\n\t\tYou''ll find details on the Parent Summary page at <a href=''http://www.fiftyp.com''>www.fiftyp.com</a>. \r\n\t\t<br/> \r\n\r\n</p>\r\n\t<br/>\t\t\t\r\n\t\t<p>\r\n\t\t\tWith best wishes,<br>\r\n\t\t\tTeam FiftyP<br>\r\n\t\t\t<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>\r\n\t\t</p>\r\n\t</td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor=\"#7B2B83\" style=\"padding:5px\"> <font  style=\"font-size:11px; line-height:16px\" face=\"verdana\" color=\"#ffffff\">For more information please contact our support team at <a href=''http://www.fiftyp.com''>support@fiftyp.com</a><br>\r\n    or Call us at 971 - 111 111 111</font> </td>\r\n  </tr>\r\n</table>\r\n\r\n</body>', 'New Request');

/* Updates for investment calculations */
ALTER TABLE `investment` ADD COLUMN `maturity_weeks` INTEGER NOT NULL default 0 AFTER `maturity`;
ALTER TABLE `investment` ADD COLUMN `maturity_amount` DOUBLE NOT NULL default 0 AFTER `maturity_weeks`;

update investment set maturity_weeks = 52, maturity_amount = 0 where investment_id = 'CD12';
update investment set maturity_weeks = 104, maturity_amount = 0 where investment_id = 'CD24';
update investment set maturity_weeks = 0, maturity_amount = 0 where investment_id = 'CD3';
update investment set maturity_weeks = 0, maturity_amount = 0 where investment_id = 'CD6';
update investment set maturity_weeks = 260, maturity_amount = 0 where investment_id = 'CD60';
update investment set maturity_weeks = 0, maturity_amount = 0 where investment_id = 'Hi_Yield_Savings1';
update investment set maturity_weeks = 0, maturity_amount = 0 where investment_id = 'Hi_Yield_Savings2';
update investment set maturity_weeks = 0, maturity_amount = 0 where investment_id = 'Hi_Yield_Savings3';
update investment set maturity_weeks = 0, maturity_amount = 0 where investment_id = 'Hi_Yield_Savings3';
update investment set maturity_weeks = 0, maturity_amount = 0 where investment_id = 'Hi_Yield_Savings4';
update investment set maturity_weeks = 1, maturity_amount = 10 where investment_id = 'Parent_Bond_10';
update investment set maturity_weeks = 4, maturity_amount = 100 where investment_id = 'Parent_Bond_100';
update investment set maturity_weeks = 26, maturity_amount = 1000 where investment_id = 'Parent_Bond_1000';
update investment set maturity_weeks = 2, maturity_amount = 50 where investment_id = 'Parent_Bond_50';
update investment set maturity_weeks = 13, maturity_amount = 500 where investment_id = 'Parent_Bond_500';
update investment set maturity_weeks = 0, maturity_amount = 0 where investment_id = 'PIGGY_BANK';


/* Fixing credit card type id*/
Update credit_card_type  set credit_card_type_id="AMEX" where credit_card_type_id="Amex";
Update credit_card_type  set credit_card_type_id="DISCOVER" where credit_card_type_id="Discover";

ALTER TABLE `product_order` ADD COLUMN `shipping_handling_cost` DOUBLE NOT NULL AFTER `quantity`;
ALTER TABLE `orders` ADD COLUMN `transaction_cost` DOUBLE NOT NULL AFTER `description`;
ALTER TABLE `credit_card_type` ADD COLUMN `percentage_trans_cost` DOUBLE NOT NULL DEFAULT 2.9 AFTER `name`;
update credit_card_type set percentage_trans_cost = '3.5' where credit_card_type_id = 'AMEX';

ALTER TABLE `credit_card_type` MODIFY COLUMN `percentage_trans_cost` DOUBLE NOT NULL DEFAULT 2.9,
 ADD COLUMN `additional_trans_cost` DOUBLE NOT NULL DEFAULT 0.25 AFTER `percentage_trans_cost`;

drop table if exists share_order;
CREATE TABLE `share_order` (
  `share_order_id` BIGINT NOT NULL,
  `price` DOUBLE NOT NULL,
  `cause_id` INTEGER NOT NULL,
  PRIMARY KEY(`share_order_id`)
)
ENGINE = InnoDB;

ALTER TABLE `share_order` ADD CONSTRAINT `FK_cause_share_order` FOREIGN KEY `FK_cause_share_order` (`cause_id`)
    REFERENCES `cause` (`cause_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

ALTER TABLE `share_order` ADD CONSTRAINT `FK_orders_share_order` FOREIGN KEY `FK_orders_share_order` (`share_order_id`)
    REFERENCES `orders` (`order_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;
	
ALTER TABLE `share_order` ADD COLUMN `child_share_id` BIGINT(20) NOT NULL AFTER `cause_id`;

ALTER TABLE `share_order` ADD CONSTRAINT `FK_child_share_share_order` FOREIGN KEY `FK_child_share_share_order` (`child_share_id`)
    REFERENCES `child_share` (`child_share_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

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
IF LENGTH(code) > 9
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
IF codeNumbers > 5099
THEN SET code = CONCAT(SUBSTRING(code, 1, LENGTH(code) - 4),"CCC_");
END IF;
insert into invitation_code values(code, 0);
SET codeNumbers = codeNumbers + 1;
IF codeNumbers > 5299
THEN LEAVE outerLoop;
END IF;
END LOOP;
END;
\\
delimiter ;

ALTER TABLE `credit_card` ADD COLUMN `security_code` INTEGER(6) NOT NULL AFTER `expiry_year`;

ALTER TABLE `child_share` ADD COLUMN `cause_name` TEXT NOT NULL AFTER `cause_id`;
update child_share s set s.cause_name =  (select c.name from cause c where c.cause_id = s.cause_id);

ALTER TABLE `orders` MODIFY COLUMN `transaction_cost` DOUBLE NOT NULL DEFAULT 0;

update `sys_template` set `sys_template`.`design` = REPLACE(`sys_template`.`design`, 'or Call us at 971 - 111 111 111', '');