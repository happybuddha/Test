/* Release 1.8 sql file */

ALTER TABLE `product` ADD COLUMN `country_code` VARCHAR(10) NOT NULL AFTER `image_url`;

update product set country_code = "US";

ALTER TABLE `product` ADD CONSTRAINT `FK_country_product` FOREIGN KEY `FK_country_product` (`country_code`)
    REFERENCES `country` (`country_code`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;
	
ALTER TABLE `product` DROP COLUMN `store_id`,
 DROP FOREIGN KEY `FK_login_store_product`;
 
DROP TABLE store;

CREATE TABLE `product_description` (
  `product_description_id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `choose_desc` TEXT NOT NULL,
  `disclamer_desc` TEXT NOT NULL,
  `confirm_desc` TEXT NOT NULL,
  `image_url` VARCHAR(512) NOT NULL,
  PRIMARY KEY(`product_description_id`)
)
ENGINE = InnoDB;

ALTER TABLE `product` ADD COLUMN `product_description_id` INTEGER NOT NULL AFTER `image_url`;
	
DELIMITER $$

DROP PROCEDURE IF EXISTS `fix_prodcuts_data` $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `fix_prodcuts_data`()
BEGIN

       declare no_more_rows boolean default false;
        declare productName       VARCHAR(100);
        declare productFetchedId       int;
        declare cursor1 cursor for
           SELECT distinct(name) FROM product;
		
        declare cursor2 cursor for
           select product.product_id from product
                       where product.name = productName limit 1;
        declare continue handler for not found
            set no_more_rows := true;

        open cursor1;
        LOOP1: loop
            fetch cursor1 into productName;
            if no_more_rows then
                close cursor1;
                leave LOOP1;
            end if;
            open cursor2;
            LOOP2: loop
                fetch cursor2 into productFetchedId;
                if no_more_rows then
                    set no_more_rows := false;
                    close cursor2;
                    leave LOOP2;
                end if;	

				insert into product_description (name, choose_desc, disclamer_desc, confirm_desc, image_url) (select name, choose_desc, disclamer_desc, confirm_desc, image_url from product where product.product_id = productFetchedId and product.`name` = productName);
				update product set product_description_id = LAST_INSERT_ID() where product.name = productName;
            end loop LOOP2;
        end loop LOOP1;

END $$

DELIMITER ;

call fix_prodcuts_data();

ALTER TABLE `product` DROP COLUMN `name`,
 DROP COLUMN `choose_desc`,
 DROP COLUMN `disclamer_desc`,
 DROP COLUMN `confirm_desc`,
 DROP COLUMN `image_url`;

ALTER TABLE `product` ADD CONSTRAINT `FK_product_description_product` FOREIGN KEY `FK_product_description_product` (`product_description_id`)
    REFERENCES `product_description` (`product_description_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

/* Track cross site promotion - Ticket #358 */

CREATE TABLE partner (
  partner_id varchar(50) NOT NULL,
  partner_address varchar(50) NOT NULL,
  PRIMARY KEY (partner_id)
)
type = InnoDB;

CREATE TABLE partner_statistics (
  partner_statistics_id bigint(20) NOT NULL AUTO_INCREMENT,
  partner_id varchar(50) NOT NULL,
  http_referrer varchar(50) DEFAULT NULL,
  ip_address varchar(50) NOT NULL,
  date datetime NOT NULL,
  PRIMARY KEY (partner_statistics_id)
)
type = InnoDB;

ALTER TABLE partner_statistics  ADD CONSTRAINT FK_partner_partner_statistics FOREIGN KEY (partner_id) REFERENCES partner (partner_id);	

ALTER TABLE parent_profile ADD partner_id VARCHAR( 50 ) NULL ;

ALTER TABLE parent_profile ADD CONSTRAINT FK_partner_parent_profile FOREIGN KEY (partner_id) REFERENCES partner (partner_id);

/* displaying distributor Logo on the first kid tab in parent home page Ticket#361 */

 CREATE TABLE distributor_company_info (
	company_id BIGINT( 20 ) NOT NULL ,
	company_logo VARCHAR( 255 ) NOT NULL ,
	company_url VARCHAR( 255 ) NOT NULL ,
PRIMARY KEY ( company_id )
) type = InnoDB ;



ALTER TABLE invitation_code ADD company_id BIGINT( 20 ) NOT NULL ;

ALTER TABLE `parent_profile` ADD `invitation_code` VARCHAR( 50 ) NULL ;

ALTER TABLE parent_profile ADD CONSTRAINT FK_invitation_code_parent_profile FOREIGN KEY ( invitation_code ) REFERENCES invitation_code( invitation_code ) ;

ALTER TABLE `parent_profile` ADD COLUMN `show_child_Details_Tips` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1;



delete from tip;
INSERT INTO `tip` (`tip_id`, `tip_section_id`, `tip_data`) VALUES
  (43, 'SAVE_SECTION', '<b>DID YOU KNOW ...</b> that some old dollar bills get recycled into stationery?'),
  (44, 'SAVE_SECTION', '<b>DID YOU KNOW ...</b> that <b>paper</b> money is mostly made of cotton?'),
  (45, 'SAVE_SECTION', '<b>DID YOU KNOW ...</b> that coins can last for 30 years, while paper money wears out after a year-and-a-half?'),
  (46, 'SPEND_SECTION', '<b>STALK THE SALES </b>  Are you a clothes hound? Try shopping at the end of the season, when prices are lowest.'),
  (47, 'SPEND_SECTION', '<b>STALK THE SALES  </b> Have your eye on something special? Ask a salesperson when it''s going on sale.'),
  (48, 'SPEND_SECTION', '<b>STALK THE SALES</b>   Check newspaper ads for sales. Most stores run big sales on the holiday...every holiday.'),
  (49, 'SPEND_SECTION', '<b>STALK THE SALES</b>   Shop during bonus hours during a sale (usually early morning) and use coupons to bring prices way down.'),
  (50, 'SPEND_SECTION', '<b>THINK AGAIN</b>   Don''t be impressed by big markdowns. Decide if an item is worth its current price...that''s what makes it a good deal.'),
  (51, 'SPEND_SECTION', '<b>THINK AGAIN</b>   Don''t feel pressured to buy just because stuff is on sale. Another sale will come along soon.'),
  (52, 'SPEND_SECTION', '<b>HIDDEN COSTS</b>    Look for extra charges...like fees for assembling or delivering an item. They''re all part of the total cost.   '),
  (53, 'SPEND_SECTION', '<b>HIDDEN COSTS</b>   Are batteries included? How about the special glue and paint for that model airplane? Add these in when figuring out the real cost.'),
  (54, 'SPEND_SECTION', '<b>YOU''RE THE BOSS</b>   Don''t let friends talk you into buying something because it''s <b>cool</b>.'),
  (55, 'SPEND_SECTION', '<b>YOU''RE THE BOSS</b>   Don''t let salespeople pressure you into making a decision. Take as much time as you need.'),
  (56, 'SPEND_SECTION', '<b>THE WAITING GAME</b>    DVDs get a lot cheaper just a few months after their release.'),
  (57, 'SPEND_SECTION', '<b>THE WAITING GAME</b>   Most books first come out in hardcover, but waiting for the paperback version cuts the cost in half.'),
  (58, 'SPEND_SECTION', '<b>THE WAITING GAME</b>    Find out if that electronic gadget you''re eyeing is coming out with a new model. You may want to wait for the latest version...or to grab the discount on the older model when the new one comes out.'),
  (59, 'SPEND_SECTION', '<b>KNOW YOURSELF</b>   If you can''t help spending everything in your pocket, carry only the money you''ll reasonably need.'),
  (60, 'SPEND_SECTION', '<b>KNOW YOURSELF</b>    If hanging out at the mall always turns into a shopping spree, find other ways to spend time with friends.'),
  (61, 'SPEND_SECTION', '<b>DOLLARS & SENSE</b>   Love to buy clothes? You''ll find good deals on brand names at outlet stores and second-hand shops.'),
  (62, 'SPEND_SECTION', '<b>DOLLARS & SENSE</b>    Bored with your old electronic games? Trade them in at a video game store.'),
  (63, 'SPEND_SECTION', '<b>DOLLARS & SENSE</b>   Shopping for a camera or other electronic gadget? Choose a model with features you''ll use, instead of paying for fancy bells and whistles.'),
  (64, 'SPEND_SECTION', '<b>SCOPE IT OUT</b>  If you''re looking for a big-ticket item like a game system, check the Internet for product reviews and price comparisons.'),
  (65, 'MONEY_MACHINE_SECTION', '<b>I.D. A NEED</b>   Look around the house for projects crying out to be done. If soccer balls rain down when you open the sports closet, offer to put everything in its place.'),
  (66, 'MONEY_MACHINE_SECTION', '<b>I.D. A NEED</b>   Parties require lots of work...and workers. If your parents are planning an event, offer to make invitations...decorate the house...hang up the guests'' coats.'),
  (67, 'MONEY_MACHINE_SECTION', '<b>I.D. A NEED</b> Think of services your neighbors might need. Could you rake the lawns, walk the dogs, help out at a garage sale?'),
  (68, 'MONEY_MACHINE_SECTION', '<b>STRUT YOUR STUFF</b>   Your business won''t grow if people don''t know. Tell friends and neighbors and ask your parents to help spread the word. Ask satisfied customers to recommend you.'),
  (69, 'MONEY_MACHINE_SECTION', '<b>STRUT YOUR STUFF</b>   Write a friendly e-mail describing your product or service, and send it to everyone who might be interested. Ask them to forward it to others.'),
  (70, 'MONEY_MACHINE_SECTION', '<b>STRUT YOUR STUFF</b>    Work with a parent to create an eye-catching flyer describing your business and how you can be reached. Post it on bulletin boards around town.'),
  (71, 'MONEY_MACHINE_SECTION', '<b>BE A PRO</b>   The first rule of business: Keep your customers happy. Be on time, wear a smile, and give it all you''ve got.'),
  (72, 'MONEY_MACHINE_SECTION', '<b>BE A PRO</b>   If your job involves caring for a pet or watering plants, ask a parent or friend to step in if you can''t make it.'),
  (73, 'MONEY_MACHINE_SECTION', '<b>HOLIDAY BU$INE$$ IDEAS</b>   Offer a service to make holidays less hectic: Wrap presents...help decorate...be a mother''s helper.'),
  (74, 'MONEY_MACHINE_SECTION', '<b>HOLIDAY BU$INE$$ IDEAS</b>   If friends or neighbors will be away for the holiday, offer to: Feed pets or walk dogs...water plants...take in mail and newspapers.'),
  (75, 'MONEY_MACHINE_SECTION', '<b>HOLIDAY BU$INE$$ IDEAS</b>   If friends or family are holding a holiday party, offer to: Take photos or video...look after young kids...help set up or clean up...create table centerpieces...be a DJ.'),
  (76, 'MONEY_MACHINE_SECTION', '<b>HOLIDAY BU$INE$$ IDEAS</b>   Create one-of-a-kind holiday cards and gift items to sell, such as jewelry, pet portraits, personalized tee shirts.'),
  (77, 'MONEY_MACHINE_SECTION', '<b>HOLIDAY BU$INE$$ IDEAS</b>   Take orders for your special brownies or muffins and deliver them fresh for holiday celebrations.'),
  (78, 'MONEY_MACHINE_SECTION', '<b>EXTREME MONEY</b>   Most millionaires own their own business...and started it from scratch. '),
  (79, 'MONEY_MACHINE_SECTION', '<b>EXTREME MONEY</b>   Four out of five millionaires weren''t born rich...they built their own fortunes.'),
  (80, 'MONEY_MACHINE_SECTION', '<b>EXTREME MONEY</b>   Want to be a millionaire? You can, if you start early and save regularly. Check out Millionaire Mania on your home page to see how.'),
  (81, 'MONEY_MACHINE_SECTION', '<b>EXTREME MONEY</b>   Think it takes a lifetime to earn a million? Some kids do it before they turn 20, by coming up with a great idea and working hard.'),
  (85, 'SHARE_SECTION', '<b>DID YOU KNOW ...</b> that charitable organizations get 75% of their funds from individuals, not from companies?'),
  (86, 'SHARE_SECTION', '<b>DID YOU KNOW ...</b> that even a few dollars can save a life in many parts of the world?'),
  (87, 'SHARE_SECTION', '<b>WHY SHARE?</b>  Because 13 MILLION kids in the U.S. go to bed hungry.'),
  (88, 'SHARE_SECTION', '<b>WHY SHARE?</b>  Because nearly ONE BILLION people around the world are hungry most of the time.'),
  (89, 'SHARE_SECTION', '<b>WHY SHARE?</b> Because global warming and melting sea ice are threatening penguin colonies in the Antarctic.'),
  (90, 'SHARE_SECTION', '<b>WHY SHARE?</b> Because giant pandas are losing their habitats and are in danger of extinction.'),
  (91, 'SHARE_SECTION', '<b>WHY SHARE?</b> Because ONE IN FOUR of the world''s mammals are in danger of disappearing forever.'),
  (92, 'SHARE_SECTION', '<b>WHY SHARE?</b> Because HALF of the world''s people - over 3.3 BILLION - live on less than $2 a day.'),
  (93, 'SHARE_SECTION', '<b>WHY SHARE?</b> Because more than ONE BILLION people in the world don''t have safe water to drink.'),
  (94, 'SHARE_SECTION', '<b>WHY SHARE?</b> Because ONE HUNDRED MILLION KIDS between ages 5 and 14 work full time, every day, all year round.'),
  (95, 'SHARE_SECTION', '<b>WHY SHARE?</b> Because 134 MILLION school-aged kids throughout the world have never been to school.'),
  (96, 'SHARE_SECTION', '<b>WHY SHARE?</b> Because 50 MILLION people across the globe have been forced from their homes by war, hunger, natural disasters, and more.'),
  (97, 'SHARE_SECTION', '<b>THE POWER OF ONE</b> 14-year-old Jacob Komar collects old computers, teaches prison inmates how to repair them, and distributes them to families without one.'),
  (98, 'SHARE_SECTION', '<b>THE POWER OF ONE</b>   16-year-old Rachel Lambin started a group that offers exercise sessions and healthy cooking classes to kids who are trying to lose weight.'),
  (99, 'SHARE_SECTION', '<b>THE POWER OF ONE</b>   Brandon Keefe ran his first book drive in third grade, and went on to help other kids do the same. Together they''ve built libraries in more than 400 youth centers, group homes, and inner-city schools.'),
  (100, 'SHARE_SECTION', '<b>THE POWER OF ONE</b>    At age six Ryan Hreljac took on extra chores to raise money for a water well in Africa. Since then he''s raised more than $800,000 to bring clean water to African towns.'),
  (101, 'SHARE_SECTION', '<b>GROW YOUR GREEN</b>   As old batteries die, replace them with rechargeable batteries. And ask your town about recycling them, since batteries can leak toxic metals into soil and water.'),
  (102, 'SHARE_SECTION', '<b>GROW YOUR GREEN</b>   Organize a community cleanup at playgrounds, parks, and elsewhere.'),
  (103, 'SHARE_SECTION', '<b>GROW YOUR GREEN</b>   Travel in carpools?or bike or walk!'),
  (104, 'SHARE_SECTION', '<b>GROW YOUR GREEN</b>   Pack a trash-free lunch!  Use a cloth napkin, reusable food containers, and a thermos for your drink.'),
  (105, 'SHARE_SECTION', '<b>GROW YOUR GREEN</b>   Ask your family to switch to cloth napkins.'),
  (106, 'SHARE_SECTION', '<b>GROW YOUR GREEN</b>   Turn old holiday cards into new cards and gift tags.'),
  (107, 'SHARE_SECTION', '<b>GROW YOUR GREEN</b>  Make your own wrapping paper from magazine covers, the Sunday comics, or department store bags.'),
  (108, 'SHARE_SECTION', '<b>HANDS-ON HELP</b>  Collect old towels and blankets for animals in shelters.'),
  (109, 'SHARE_SECTION', '<b>HANDS-ON HELP</b>   Prepare after-school or bedtime snacks for kids at shelters. Decorate paper lunch bags and fill them cereal bars, dried fruit, and other healthy treats.'),
  (110, 'SHARE_SECTION', '<b>HANDS-ON HELP</b>   Assemble birthday bags to donate to a food pantry. Fill each with small toys, candy, cake mix, and candles.'),
  (111, 'SHARE_SECTION', '<b>HANDS-ON HELP</b>   Offer to take in pets if friends or neighbors are in a jam.'),
  (112, 'SHARE_SECTION', '<b>HANDS-ON HELP</b>    Create cheerful holiday decorations for homeless shelters, daycare centers, and nursing homes.'),
  (113, 'SHARE_SECTION', '<b>HANDS-ON HELP</b>  Collect grocery coupons and bring them to a local food pantry.'),
  (114, 'SHARE_SECTION', '<b>HANDS-ON HELP</b>    Offer to pick up groceries or medicines for elderly neighbors.'),
  (115, 'SHARE_SECTION', '<b>FAVORITE FUNDRAISERS</b>   Car Wash: Choose a busy but safe location where you''ll have access to a hose. Bring soap, sponges, and lots of towels!'),
  (116, 'SHARE_SECTION', '<b>FAVORITE FUNDRAISERS</b>   Flea Market ? Invite friends to bring books, clothes, and household items to sell, and ask them to donate part of their profits to your cause.'),
  (117, 'SHARE_SECTION', '<b>FAVORITE FUNDRAISERS</b>    Bake Sale ? Set up a table at a spot with lots of foot traffic and ask everyone you know to contribute home-baked goods.'),
  (118, 'SHARE_SECTION', '<b>DID YOU KNOW ...</b> that 13 million U.S. teens volunteer 2 billion hours a year? That''s 153 hours a year per kid!'),
  (119, 'SAVE_SECTION', '<b>DID YOU KNOW...</b>that some old dollar bills get recycled into stationery?'),
  (120, 'SAVE_SECTION', '<b>DID YOU KNOW...</b>that it costs about 6 cents to produce each dollar bill?'),
  (121, 'SAVE_SECTION', '<b>DID YOU KNOW...</b>that to tear a dollar bill you''d have to fold it back and forth 8,000 times? (But why would you want to?!)'),
  (122, 'SAVE_SECTION', '<b>SUPERSIZE YOUR SAVINGS</b>   Your parents can match part or all of each dollar you save in your FiftyP savings account. Ask about it!'),
  (123, 'SAVE_SECTION', '<b>SUPERSIZE YOUR SAVINGS</b>   To save faster, change your allocations so more money gets sent to your Save account.'),
  (124, 'SAVE_SECTION', '<b>SUPERSIZE YOUR SAVINGS</b>   Check out ?Investment Options? on your Save page. You''ll find lots of ways to make your money grow!'),
  (125, 'SAVE_SECTION', '<b>SMART MOVES</b>   If your Piggy Bank is getting fat, you''re not making the most of your money. Try switching some to investments, where money earns money!'),
  (126, 'SAVE_SECTION', '<b>SMART MOVES</b>   Each time you buy something and get change, stash the coins in a cup. When the cup fills up deposit the money to your Save account.'),
  (127, 'SAVE_SECTION', '<b>SMART MOVES</b> Choose an investment with a high interest rate to really grow your money!'),
  (128, 'SAVE_SECTION', '<b>WHY SAVE?</b>  Think you may someday want to travel? Buy a car? Go to college? Saving can make it happen.'),
  (129, 'SAVE_SECTION', '<b>WHY SAVE?</b>  Because if you start now and keep at it you''ll have enough money to live the life you want.'),
  (130, 'SAVE_SECTION', '<b>MAKE IT HAPPEN</b>   Trying to save for something big? Click Goal Setting on your Home Page. We''ll help you count down the days till you have the money you need!'),
  (131, 'SAVE_SECTION', '<b>TRADE-OFFS</b>   When you invest in a CD (certificate of deposit), you agree to leave your money in for a period of time. The shorter the period, the lower the interest rate.'),
  (132, 'SAVE_SECTION', '<b>TRADE-OFFS</b>  Wish you could withdraw money from an investment before the agreed-upon date? You can, but you may lose part of the interest you''ve already earned.'),
  (133, 'SAVE_SECTION', '<b>SMART MOVES</b>     Wish you could put more money in investments? Transfer some from your Spend to your Save account!'),
  (134, 'SAVE_SECTION', '<b>TRADE-OFFS</b>  It''s fun to have lots of pocket money, but that leaves less for stuff you really want. Try carrying just what you need and put the rest in your Save account.'),
  (135, 'SAVE_SECTION', '<b>SWEET DEALS</b>  When you put money in a savings bank, you''re actually lending it. In return, you earn interest?extra money!'),
  (136, 'SAVE_SECTION', '<b>SWEET DEALS</b>   Some bank accounts offer compound interest: You earn interest in the money you put into the account, plus interest on the interest!'),
  (137, 'SAVE_SECTION', '<b>SMART MOVES</b>   Looking to invest your money? Pay attention to the interest rate. The higher the rate, the more your money will earn.'),
  (138, 'SAVE_SECTION', '<b>DID YOU KNOW ... </b>that <b>paper</b> money is mostly made of cotton?'),
  (139, 'SAVE_SECTION', '<b>DID YOU KNOW ... </b>that coins can last for 30 years, while paper money wears out after a year-and-a-half?');

/*  updates for the ticket #361 */

ALTER TABLE invitation_code CHANGE company_id company_id BIGINT( 20 ) NULL  ;

update invitation_code set company_id = null where company_id =0;

DROP TABLE IF EXISTS `promotional_code`;
CREATE TABLE  `promotional_code` (
  `promotional_code_id` int(11) NOT NULL auto_increment,
  `promotional_code` varchar(45) NOT NULL,
  `num_of_use` int(10) unsigned NOT NULL,
  `promotional_code_value` int(10) unsigned NOT NULL,
  `isPercentage` bit(1) NOT NULL,
  PRIMARY KEY  (`promotional_code_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `parent_profile` ADD COLUMN `promotional_code_id` INTEGER AFTER `show_child_Details_Tips`,
 ADD CONSTRAINT `FK_parent_profile_promotional_code` FOREIGN KEY `FK_parent_profile_promotional_code` (`promotional_code_id`)
    REFERENCES `promotional_code` (`promotional_code_id`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;

insert into promotional_code(promotional_code, num_of_use,
 promotional_code_value, isPercentage)
values ('AMS1234', 20, 12, 0),
       ('HMS1234', 20, 12, 0);
