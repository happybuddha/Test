ALTER TABLE `invitation_code` ADD COLUMN `parent_profile_id` BIGINT(20) AFTER `company_id`,
 ADD CONSTRAINT `FK_invitation_code_login` FOREIGN KEY `FK_invitation_code_login` (`parent_profile_id`)
    REFERENCES `login` (`fp_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

-- Add comma to the 1000 value in the Parent Bond Name
UPDATE investment SET name = "$1,000 Parent Bond" WHERE investment_id ="Parent_Bond_1000";

CREATE TABLE `authorization_transaction_response` (
  `transaction_response_id` int(10) unsigned NOT NULL auto_increment,
  `transaction_id` varchar(45) default NULL,
  `amount` double NOT NULL,
  `avs_code` varchar(45) default NULL,
  `cvv_code` varchar(45) default NULL,
  `order_id` bigint(20) NOT NULL,
  `error_message` varchar(500) default NULL,
  `is_success` bit(1) NOT NULL,
  PRIMARY KEY  (`transaction_response_id`),
  KEY `FK_authorization_response_orders` (`order_id`),
  CONSTRAINT `FK_authorization_response_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `capture_transaction_response` (
  `transaction_response_id` int(10) unsigned NOT NULL auto_increment,
  `transaction_id` varchar(45) NOT NULL,
  `transaction_type` varchar(45) default NULL,
  `payment_type` varchar(45) default NULL,
  `payment_date` datetime NOT NULL,
  `gross_amount` double default NULL,
  `fee_amount` double default NULL,
  `settle_amount` double default NULL,
  `tax_amount` double default NULL,
  `exchange_rate` varchar(45) default NULL,
  `payment_status` varchar(45) default NULL,
  `order_id` bigint(20) NOT NULL,
  `is_success` bit(1) NOT NULL,
  `error_message` varchar(500) default NULL,
  PRIMARY KEY  (`transaction_response_id`),
  KEY `FK_paypal_transaction_response_orders` (`order_id`),
  CONSTRAINT `FK_paypal_transaction_response_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

update `credit_card_type` set percentage_trans_cost = 2.9 , additional_trans_cost = 0.3;

ALTER TABLE `authorization_transaction_response` ADD COLUMN `transaction_time` TIMESTAMP AFTER `is_success`;