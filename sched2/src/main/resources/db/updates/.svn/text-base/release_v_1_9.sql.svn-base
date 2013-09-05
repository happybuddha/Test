/* Release 1.9 sql file */

ALTER TABLE `parent_profile` ADD COLUMN `country_code` VARCHAR(10) AFTER `partner_id`;

ALTER TABLE `parent_profile` ADD CONSTRAINT `FK_country_parent_profile` FOREIGN KEY `FK_country_parent_profile` (`country_code`)
    REFERENCES `country` (`country_code`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;
	
update parent_profile a, payment_method b, address c set a.country_code = c.country_code where b.address_id = c.address_id and a.parent_profile_id = b.fp_id;


insert into country (country_code, name, description) values ('CA', 'Canada', '');
insert into state (state_code, country_code, name, description) values ('ON', 'CA', 'Ontario', '');
insert into state (state_code, country_code, name, description) values ('QC', 'CA', 'Quebec', '');
insert into state (state_code, country_code, name, description) values ('NS', 'CA', 'Nova Scotia', '');
insert into state (state_code, country_code, name, description) values ('NB', 'CA', 'New Brunswick', '');
insert into state (state_code, country_code, name, description) values ('MB', 'CA', 'Manitoba', '');
insert into state (state_code, country_code, name, description) values ('BC', 'CA', 'British Columbia', '');
insert into state (state_code, country_code, name, description) values ('PE', 'CA', 'Prince Edward Island', '');
insert into state (state_code, country_code, name, description) values ('AB', 'CA', 'Alberta', '');
insert into state (state_code, country_code, name, description) values ('SK', 'CA', 'Saskatchewan', '');
insert into state (state_code, country_code, name, description) values ('NL', 'CA', 'Newfoundland and Labrador', '');
insert into state (state_code, country_code, name, description) values ('NT', 'CA', 'Northwest Territories', '');
insert into state (state_code, country_code, name, description) values ('YT', 'CA', 'Yukon', '');
insert into state (state_code, country_code, name, description) values ('NU', 'CA', 'Nunavut', '');

update promotional_code set promotional_code_value = 2 where promotional_code ='AMS1234' ;

ALTER TABLE `child_request` DROP COLUMN `status_date_updated`;

ALTER TABLE `child_request` ADD COLUMN `status_date_updated` DATETIME AFTER `child_message`;

ALTER TABLE `parent_profile` ADD COLUMN `fb_connect_enabled` INTEGER;

ALTER TABLE `product` ADD COLUMN `shipping_handling_cost` DOUBLE NOT NULL AFTER `country_code`;

update product set shipping_handling_cost = 1.92;

ALTER TABLE `product` ADD COLUMN `sku_name` VARCHAR(45) NOT NULL AFTER `shipping_handling_cost`;

update product set product.`sku_name` = 'AMAZON025' where product.`product_description_id`=1 and product.price =25;
update product set product.`sku_name` = 'AMCTHEATRES010' where product.`product_description_id`=9 and product.price =10;
update product set product.`sku_name` = 'AMCTHEATRES025' where product.`product_description_id`=9 and product.price =25;
update product set product.`sku_name` = 'APPLEBEES010' where product.`product_description_id`=24 and product.price =10;
update product set product.`sku_name` = 'APPLEBEES025' where product.`product_description_id`=24 and product.price =25;
update product set product.`sku_name` = 'APPLEBEES050' where product.`product_description_id`=24 and product.price =50;
update product set product.`sku_name` = 'BANANA025' where product.`product_description_id`=20 and product.price =25;
update product set product.`sku_name` = 'BANANA050' where product.`product_description_id`=20 and product.price =50;
update product set product.`sku_name` = 'BANANA100' where product.`product_description_id`=20 and product.price =100;
update product set product.`sku_name` = 'BARNES010' where product.`product_description_id`=11 and product.price =10;
update product set product.`sku_name` = 'BARNES025' where product.`product_description_id`=11 and product.price = 25;
update product set product.`sku_name` = 'BARNES050' where product.`product_description_id`=11 and product.price = 50;
update product set product.`sku_name` = 'BARNES100' where product.`product_description_id`=11 and product.price = 100;
update product set product.`sku_name` = 'BATHBODY010' where product.`product_description_id`=12 and product.price =10;
update product set product.`sku_name` = 'BATHBODY025' where product.`product_description_id`=12 and product.price =25;
update product set product.`sku_name` = 'BATHBODY050' where product.`product_description_id`=12 and product.price =50;
update product set product.`sku_name` = 'BLOCKBUSTR010' where product.`product_description_id`=3 and product.price =10;
update product set product.`sku_name` = 'BLOCKBUSTR025' where product.`product_description_id`=3 and product.price =25;
update product set product.`sku_name` = 'BLOCKBUSTR050' where product.`product_description_id`=3 and product.price =50;
update product set product.`sku_name` = 'BORDERS010' where product.`product_description_id`=4 and product.price =10;
update product set product.`sku_name` = 'BORDERS025' where product.`product_description_id`=4 and product.price =25;
update product set product.`sku_name` = 'BORDERS050' where product.`product_description_id`=4 and product.price =50;
update product set product.`sku_name` = 'DARDEN010' where product.`product_description_id`=27 and product.price =10;
update product set product.`sku_name` = 'DARDEN025' where product.`product_description_id`=27 and product.price =25;
update product set product.`sku_name` = 'DARDEN050' where product.`product_description_id`=27 and product.price =50;
update product set product.`sku_name` = 'FOOTLOCKER010' where product.`product_description_id`=18 and product.price =10;
update product set product.`sku_name` = 'FOOTLOCKER025' where product.`product_description_id`=18 and product.price =25;
update product set product.`sku_name` = 'FOOTLOCKER050' where product.`product_description_id`=18 and product.price =50;
update product set product.`sku_name` = 'FOOTLOCKER100' where product.`product_description_id`=18 and product.price =100;
update product set product.`sku_name` = 'WALMART010' where product.`product_description_id`=2 and product.price =10;
update product set product.`sku_name` = 'WALMART025' where product.`product_description_id`=2 and product.price =25;
update product set product.`sku_name` = 'WALMART050' where product.`product_description_id`=2 and product.price =50;
update product set product.`sku_name` = 'WALMART100' where product.`product_description_id`=2 and product.price =100;
update product set product.`sku_name` = 'WALGREENS025' where product.`product_description_id`=23 and product.price =25;
update product set product.`sku_name` = 'WALGREENS050' where product.`product_description_id`=23 and product.price =50;
update product set product.`sku_name` = 'WALGREENS100' where product.`product_description_id`=23 and product.price =100;
update product set product.`sku_name` = 'TOYS010' where product.`product_description_id`=10 and product.price =10;
update product set product.`sku_name` = 'TOYS025' where product.`product_description_id`=10 and product.price =25;
update product set product.`sku_name` = 'TOYS050' where product.`product_description_id`=10 and product.price =50;
update product set product.`sku_name` = 'TOYS100' where product.`product_description_id`=10 and product.price =100;
update product set product.`sku_name` = 'TGIFRIDAYS010' where product.`product_description_id`=7 and product.price =10;
update product set product.`sku_name` = 'TGIFRIDAYS025' where product.`product_description_id`=7 and product.price =25;
update product set product.`sku_name` = 'TGIFRIDAYS050' where product.`product_description_id`=7 and product.price =50;
update product set product.`sku_name` = 'TGIFRIDAYS100' where product.`product_description_id`=7 and product.price =100;
update product set product.`sku_name` = 'JCPENNEY010' where product.`product_description_id`=13 and product.price =10;
update product set product.`sku_name` = 'JCPENNEY025' where product.`product_description_id`=13 and product.price =25;
update product set product.`sku_name` = 'JCPENNEY050' where product.`product_description_id`=13 and product.price =50;
update product set product.`sku_name` = 'JCPENNEY100' where product.`product_description_id`=13 and product.price =100;
update product set product.`sku_name` = 'TJMAXX010' where product.`product_description_id`=22 and product.price =10;
update product set product.`sku_name` = 'TJMAXX025' where product.`product_description_id`=22 and product.price =25;
update product set product.`sku_name` = 'TJMAXX050' where product.`product_description_id`=22 and product.price =50;
update product set product.`sku_name` = 'TJMAXX100' where product.`product_description_id`=22 and product.price =100;
update product set product.`sku_name` = 'ITUNES025' where product.`product_description_id`=6 and product.price =25;
update product set product.`sku_name` = 'ITUNES050' where product.`product_description_id`=6 and product.price =50;
update product set product.`sku_name` = 'UNO010' where product.`product_description_id`=30 and product.price =10;
update product set product.`sku_name` = 'UNO025' where product.`product_description_id`=30 and product.price =25;
update product set product.`sku_name` = 'UNO100' where product.`product_description_id`=30 and product.price =50;
update product set product.`sku_name` = 'UNO010' where product.`product_description_id`=32 and product.price =10;
update product set product.`sku_name` = 'UNO050' where product.`product_description_id`=32 and product.price =50;
update product set product.`sku_name` = 'UNO100' where product.`product_description_id`=32 and product.price =100;
update product set product.`sku_name` = 'LANDSEND010' where product.`product_description_id`=15 and product.price =10;
update product set product.`sku_name` = 'LANDSEND025' where product.`product_description_id`=15  and product.price =25;
update product set product.`sku_name` = 'LANDSEND050' where product.`product_description_id`=15  and product.price =50;
update product set product.`sku_name` = 'PAPAJOHNS010' where product.`product_description_id`=29 and product.price =10;
update product set product.`sku_name` = 'PAPAJOHNS025' where product.`product_description_id`=29  and product.price =25;
update product set product.`sku_name` = 'PAPAJOHNS050' where product.`product_description_id`=29  and product.price =50;
update product set product.`sku_name` = 'POTTERY025' where product.`product_description_id`=29 and product.price =25;
update product set product.`sku_name` = 'POTTERY050' where product.`product_description_id`=29  and product.price =50;
update product set product.`sku_name` = 'POTTERY100' where product.`product_description_id`=29  and product.price =100;
update product set product.`sku_name` = 'OUTBACK010' where product.`product_description_id`=31 and product.price =10;
update product set product.`sku_name` = 'OUTBACK025' where product.`product_description_id`=31  and product.price =25;
update product set product.`sku_name` = 'OUTBACK050' where product.`product_description_id`=31  and product.price =50;
update product set product.`sku_name` = 'KOHLS050' where product.`product_description_id`=14  and product.price =50;
update product set product.`sku_name` = 'KOHLS100' where product.`product_description_id`=14  and product.price =100;
update product set product.`sku_name` = 'GAP025' where product.`product_description_id`=17  and product.price =25;
update product set product.`sku_name` = 'GAP050' where product.`product_description_id`=17  and product.price =50;
update product set product.`sku_name` = 'EDDIEBAUER025' where product.`product_description_id`=19  and product.price =25;
update product set product.`sku_name` = 'EDDIEBAUER050' where product.`product_description_id`=19  and product.price =50;
update product set product.`sku_name` = 'CHILIS010' where product.`product_description_id`=26 and product.price =10;
update product set product.`sku_name` = 'CHILIS025' where product.`product_description_id`=26  and product.price =25;
update product set product.`sku_name` = 'DUNKIN010' where product.`product_description_id`=28 and product.price =10;
update product set product.`sku_name` = 'DUNKIN025' where product.`product_description_id`=28  and product.price =25;
update product set product.`sku_name` = 'DAVEANDBST025' where product.`product_description_id`=8 and product.price =25;
update product set product.`sku_name` = 'DAVEANDBST050' where product.`product_description_id`=8  and product.price =50;
update product set product.`sku_name` = 'PANERABREA010' where product.`product_description_id`=25 and product.price =10;
update product set product.`sku_name` = 'PANERABREA025' where product.`product_description_id`=25 and product.price =25;
update product set product.`sku_name` = 'PANERABREA050' where product.`product_description_id`=25 and product.price =50;
update product set product.`sku_name` = 'PANERABREA100' where product.`product_description_id`=25 and product.price =100;
update product set product.`sku_name` = 'NIKE050' where product.`product_description_id`=16 and product.price =50;
update product set product.`sku_name` = 'NIKE100' where product.`product_description_id`=16  and product.price =100;


