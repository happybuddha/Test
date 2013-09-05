/*SQL update script for release v1.18 */

/* for fixing illegal characters in Canadian Gift Orders ticket 709 */
/* BEGIN */
UPDATE product_description SET choose_desc = '<p>Best Buy Gift Cards are great for anyone! Best Buy wants your shopping to be fun, with lots of things to try out while you shop. Take your time, we won''t pressure you. Best buy has lots of the latest music CDs, and DVD movies. Like games? Check out the selection of computer and video games at one our stores. Saving up for something bigger? We also have brand name Home Theatre, Home Office, Digital Audio, and Wireless Communications - all backed by our low price guarantee so you can get the best buy.<br>Gift Cards are available in various denominations, have no expiration date and no fees. Use your Best Buy Gift Card at any Best Buy store location across Canada. For a store near you, visit www.bestbuy.ca</p>' WHERE product_description.name ='Best Buy';
UPDATE product_description SET choose_desc = '<p>Birks is Canada''s most respected, premier designer and manufacturer of fine jewellery, timepieces, sterling silverware and gifts. With Birks history of trust, uncompromising quality and courteous service we offer historical references of the past and an innovative, dynamic and sharp focus on the future. <br>Whether it''s something for you or a gift for someone else, use your Birks gift card at 39 stores from coast to coast to meet your shopping needs.</p>' WHERE product_description.name = 'Birks';
UPDATE product_description SET choose_desc = '<p>Everyone loves popcorn...<br>Eat it naked.Eat it sweet. Eat it seasoned. Eat it with the flavour cranked up to the max! The card that turns into Kernels extraordinary popcorn. The fun, delicious and entertaining gift that has great taste!<br>Celebrating 20 years in the bag, Kernels Popcorn is Canada''s #1 gourmet popcorn chain. Use your Kernels Popcorn plastic card at all our retail store locations across Canada.Check us out at www.kernelspopcorn.com.<br>Kernels Popcorn gift cards are available for $10.00 each. These electronic gift cards can be used once, twice or as many times as you have cravings by reloading them at all of our locations.</p>' WHERE product_description.name ='Kernels Popcorn' ;
UPDATE product_description SET choose_desc = '<p>Red Lobster&reg; <br>Red Lobster is America''s favourite seafood restaurant.It offers a wide variety of freshly-prepared dishes, including fresh fish, shrimp, crab, and live Maine lobster. For the restaurant nearest you call 1-800-LOBSTER or visit www.redlobster.com</p>' WHERE product_description.name ='Red Lobster' ;

UPDATE product_description SET choose_desc = '<p>Gap has everything you need to express your personal style. From jeans and T''s to khakis and oxfords, you''ll find great clothes and accessories for men, women, boys, girls and baby. Use your gift card at over 2000 Gap, GapKids, babyGap and GapBody locations across Canada and the U.S. For the nearest store, call 1-800-GAP-STYLE, or shop our always open Gap.com store.<p>',
disclamer_desc = '<p>Unfortunately, gap.com does not accept Gift Certificates as payment at this time. Gap, GapKids, babyGap and GapBody are not affiliated with FiftyP and are not sponsors or co-sponsors with this promotion.</p>' WHERE product_description.name ='Gap / Baby Gap / Gap Kids';

UPDATE product_description SET choose_desc = '<p>Shopping is fun again.<br>Old Navy has been offering fun, fashion, and value since 1994. From streetwear to sleepwear, we''ve got the newest styles and plenty of basics, too. The Old Navy Gift Certificate is a great way to enjoy the Old Navy experience.<br>The Old Navy Gift Certificate is just like cash, only so much better.<br> <ul> <li>It''s versatile! The perfect gift for any occasion.</li><br><li>It''s valuable! Redeem it in any Old Navy store - or be nice and give it to a friend.</li></ul></p>Old Navy Gift Certificates are honored at all Old Navy stores. To find an Old Navy store near you, visit oldnavy.com and click on our handy and helpful Store Locator. Or call 1-800-OLD-NAVY.' WHERE product_description.name ='Old Navy' ;

UPDATE product_description SET disclamer_desc = '<p>Please direct any inquiries or concerns regarding your order to FiftP.com. Questions regarding Old Navy Gift Certificates should be directed to 1-800-OLD-NAVY. Old Navy Gift Certificates are redeemable for merchandise only. Unfortunately, oldnavy.com does not accept Gift Certificates as payment at this time.</p>Old Navy is not affiliated with FiftyP and is not a sponsor or co-sponsor with this promotion.' WHERE product_description.name='Old Navy';
/* END */
/*updating the donation amount for March*/
UPDATE fiftyp_donation SET amount = '186' WHERE fiftyp_donation.fiftyp_donation_id =3;

INSERT INTO fiftyp_donation( fiftyp_donation_id, amount, start_date, end_date )
VALUES (
'3', '186', '2009-03-01 00:00:00', '2009-03-31 23:59:59'
);
UPDATE fiftyp_donation SET amount = '185' WHERE fiftyp_donation.fiftyp_donation_id =3;

/* updated queries to ensure only Canadian Gift orders are updated*/
UPDATE product_description SET choose_desc = '<p>Best Buy Gift Cards are great for anyone! Best Buy wants your shopping to be fun, with lots of things to try out while you shop. Take your time, we won''t pressure you. Best buy has lots of the latest music CDs, and DVD movies. Like games? Check out the selection of computer and video games at one our stores. Saving up for something bigger? We also have brand name Home Theatre, Home Office, Digital Audio, and Wireless Communications - all backed by our low price guarantee so you can get the best buy.<br>Gift Cards are available in various denominations, have no expiration date and no fees. Use your Best Buy Gift Card at any Best Buy store location across Canada. For a store near you, visit www.bestbuy.ca</p>' 
WHERE product_description.name ='Best Buy' 
AND product_description.product_description_id IN ( SELECT product.product_description_id
FROM product
WHERE country_code= "CA");


UPDATE product_description SET choose_desc = '<p>Birks is Canada''s most respected, premier designer and manufacturer of fine jewellery, timepieces, sterling silverware and gifts. With Birks history of trust, uncompromising quality and courteous service we offer historical references of the past and an innovative, dynamic and sharp focus on the future. <br>Whether it''s something for you or a gift for someone else, use your Birks gift card at 39 stores from coast to coast to meet your shopping needs.</p>' 
WHERE product_description.name = 'Birks'
AND product_description.product_description_id IN ( SELECT product.product_description_id
FROM product
WHERE country_code= "CA");

UPDATE product_description SET choose_desc = '<p>Everyone loves popcorn...<br>Eat it naked.Eat it sweet. Eat it seasoned. Eat it with the flavour cranked up to the max! The card that turns into Kernels extraordinary popcorn. The fun, delicious and entertaining gift that has great taste!<br>Celebrating 20 years in the bag, Kernels Popcorn is Canada''s #1 gourmet popcorn chain. Use your Kernels Popcorn plastic card at all our retail store locations across Canada.Check us out at www.kernelspopcorn.com.<br>Kernels Popcorn gift cards are available for $10.00 each. These electronic gift cards can be used once, twice or as many times as you have cravings by reloading them at all of our locations.</p>' 
WHERE product_description.name ='Kernels Popcorn' 
AND product_description.product_description_id IN ( SELECT product.product_description_id
FROM product
WHERE country_code= "CA");


UPDATE product_description SET choose_desc = '<p>Red Lobster&reg; <br>Red Lobster is America''s favourite seafood restaurant.It offers a wide variety of freshly-prepared dishes, including fresh fish, shrimp, crab, and live Maine lobster. For the restaurant nearest you call 1-800-LOBSTER or visit www.redlobster.com</p>' 
WHERE product_description.name ='Red Lobster'
AND product_description.product_description_id IN ( SELECT product.product_description_id
FROM product
WHERE country_code= "CA");


UPDATE product_description SET choose_desc = '<p>Gap has everything you need to express your personal style. From jeans and T''s to khakis and oxfords, you''ll find great clothes and accessories for men, women, boys, girls and baby. Use your gift card at over 2000 Gap, GapKids, babyGap and GapBody locations across Canada and the U.S. For the nearest store, call 1-800-GAP-STYLE, or shop our always open Gap.com store.<p>',
disclamer_desc = '<p>Unfortunately, gap.com does not accept Gift Certificates as payment at this time. Gap, GapKids, babyGap and GapBody are not affiliated with FiftyP and are not sponsors or co-sponsors with this promotion.</p>' 
WHERE product_description.name ='Gap / Baby Gap / Gap Kids'
AND product_description.product_description_id IN ( SELECT product.product_description_id
FROM product
WHERE country_code= "CA");


UPDATE product_description SET choose_desc = '<p>Shopping is fun again.<br>Old Navy has been offering fun, fashion, and value since 1994. From streetwear to sleepwear, we''ve got the newest styles and plenty of basics, too. The Old Navy Gift Certificate is a great way to enjoy the Old Navy experience.<br>The Old Navy Gift Certificate is just like cash, only so much better.<br> <ul> <li>It''s versatile! The perfect gift for any occasion.</li><br><li>It''s valuable! Redeem it in any Old Navy store - or be nice and give it to a friend.</li></ul></p>Old Navy Gift Certificates are honored at all Old Navy stores. To find an Old Navy store near you, visit oldnavy.com and click on our handy and helpful Store Locator. Or call 1-800-OLD-NAVY.' 
WHERE product_description.name ='Old Navy'
AND product_description.product_description_id IN ( SELECT product.product_description_id
FROM product
WHERE country_code= "CA");


UPDATE product_description SET disclamer_desc = '<p>Please direct any inquiries or concerns regarding your order to FiftP.com. Questions regarding Old Navy Gift Certificates should be directed to 1-800-OLD-NAVY. Old Navy Gift Certificates are redeemable for merchandise only. Unfortunately, oldnavy.com does not accept Gift Certificates as payment at this time.</p>Old Navy is not affiliated with FiftyP and is not a sponsor or co-sponsor with this promotion.' 
WHERE product_description.name='Old Navy'
AND product_description.product_description_id IN ( SELECT product.product_description_id
FROM product
WHERE country_code= "CA");

/* #712 */
ALTER TABLE login ADD lastlogout DATETIME NULL AFTER lastlogin ;

/*updates for ticket 696 -- Goal Setting Mail*/
INSERT INTO sys_template (sys_template_id, description, design, subject) VALUES
('CHILD_GOAL_SETTING', 'Goal setting email', '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			GOAL SETTING		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">	Dear FiftyP parent,<br/><br/> We thought you''d like to know that ${kidName} is using FiftyP''s Goal Setting feature to help ${objectPronouns} save for something special.  	<br/><br/>	${kidName}''s goal: ${goalSettingItem}.	<br/><br/>  ${kidName}''s estimate of its cost: ${goalSettingAmount}.    <br/><br/>	Days until ${possesivePronoun} goal is reached: ${days} days	<br/><br/>  To help kids reach their financial goals, FiftyP provides a countdown of the days until enough funds have been saved. ${kidName} currently has ${totalSpendAmount} in ${possesivePronoun} Spend account. Based on allowance, and on currently scheduled projects and gifts that are allocated to ${possesivePronoun} Spend account, ${kidName} will reach ${possesivePronoun} goal in ${days} days.	<br/><br/>  This is great opportunity to reinforce values like delayed gratification and thoughtful spending, and to work with ${kidName} on how to reach ${possesivePronoun} goal even faster. FiftyP makes it easy to earn extra money by making investments, taking on paying projects, and asking for gifts that can be put toward the goal.	<br/><br/>  We wish ${kidName} good luck!	<br/><br/> With best wishes,<br>			The FiftyP Team<br>			<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>	  </p>	</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>', 'Child goal setting');
UPDATE sys_template SET subject = 'Goal setting' WHERE CONVERT( sys_template.sys_template_id USING utf8 ) = 'CHILD_GOAL_SETTING' LIMIT 1 ;

/* #722 */
update cause set photo2_url = 'share/wdcs_iconsseal.png' where cause_id = 5;
update cause set photo2_url = 'share/carbonfund_iconstruck.png' where cause_id = 6;
update cause set photo2_url = 'share/wdcs_iconswhale.png' where cause_id = 7;
update cause set photo2_url = 'share/carbonfund_iconsbus_icon.png' where cause_id = 8;

/* Update for ticket #693 -- FiftypTimes news for new causes */
UPDATE cause SET 
photo1_url = 'share/42.HoS_5.png',
photo2_url = 'share/sealZoom.png' 
WHERE cause.cause_id =5  ;

UPDATE cause SET 
photo2_url = 'share/wdcs_iconsseal.png'
WHERE 
cause.cause_id =5  ;

UPDATE cause SET 
photo1_url = 'share/42.HoS_6.png ',
photo2_url = 'share/carbonfund_iconstruck.png'
WHERE cause_id =6  ;

UPDATE cause SET 
photo1_url = 'share/42.HoS_7.png ',
photo2_url = 'share/wdcs_iconswhale.png'
 WHERE cause_id =7  ;

UPDATE cause SET 
photo1_url = 'share/42.HoS_8.png',
photo2_url = 'share/carbonfund_iconsbus_icon.png'
WHERE cause.cause_id =8  ;

ALTER TABLE cause ADD 
column1_fiftyp_times TEXT;

 UPDATE cause 
 SET column1_fiftyp_times = 'FiftyP took a stand against global warming today with $amtValue1 donation in support of environmental programs around the world. FiftyP\\''s contribution will go toward planting forestsCM which suck harmful gases from the air and provide habitats for birdsCM animalsCM insectsCM and other living creatures. The money will also help build Wind Farms fields of modern day windmills that turn blowing breezes into clean energy. FinallyCM FiftyP will be helping to create electricity from smelly trashCM using our landfills to protect the environment!' 
 WHERE cause_id =1  ;
 
 UPDATE cause SET column1_fiftyp_times = 'FiftyP took a stand against global warming today with $amtValue1 donation in support of environmental programs around the world. FiftyP\\''s contribution will go toward planting forestsCM which suck harmful gases from the air and provide habitats for birdsCM animalsCM insectsCM and other living creatures. The money will also help build Wind Farms fields of modern day windmills that turn blowing breezes into clean energy. FinallyCM FiftyP will be helping to create electricity from smelly trashCM using our landfills to protect the environment!'
 WHERE cause_id =2  ;
 
 UPDATE cause SET column1_fiftyp_times = 'FiftyP took a stand against global warming today with $amtValue1 donation in support of environmental programs around the world. FiftyP\\''s contribution will go toward planting forestsCM which suck harmful gases from the air and provide habitats for birdsCM animalsCM insectsCM and other living creatures. The money will also help build Wind Farms fields of modern day windmills that turn blowing breezes into clean energy. FinallyCM FiftyP will be helping to create electricity from smelly trashCM using our landfills to protect the environment!' 
 WHERE cause_id =3  ;
 
 UPDATE cause SET column1_fiftyp_times = 'FiftyP took a stand against global warming today with $amtValue1 donation in support of environmental programs around the world. FiftyP\\''s contribution will go toward planting forestsCM which suck harmful gases from the air and provide habitats for birdsCM animalsCM insectsCM and other living creatures. The money will also help build Wind Farms fields of modern day windmills that turn blowing breezes into clean energy. FinallyCM FiftyP will be helping to create electricity from smelly trashCM using our landfills to protect the environment!' 
 WHERE cause_id =4  ;
 
 UPDATE cause SET column1_fiftyp_times = 'FiftyP is making a difference! This month it will donate $amtValue1 to support programs that protect marine mammals and prevent global warming. FiftyP\\''s contribution will save seals that get stranded on beaches and help biologists identify and keep track of whales a first step in making sure that they\\''re healthy and safe. The money will also aid efforts to slow climate changeCM by making it possible for truckers to use less fuel and by supporting projects that create clean energy and plant new forests.' 
 WHERE cause_id =5  ;
 
 UPDATE cause SET column1_fiftyp_times = 'FiftyP is making a difference! This month it will donate $amtValue1 to support programs that protect marine mammals and prevent global warming. FiftyP\\''s contribution will save seals that get stranded on beaches and help biologists identify and keep track of whales a first step in making sure that they\\''re healthy and safe. The money will also aid efforts to slow climate changeCM by making it possible for truckers to use less fuel and by supporting projects that create clean energy and plant new forests.' 
 WHERE cause_id =6  ;
 
 UPDATE cause SET column1_fiftyp_times = 'FiftyP is making a difference! This month it will donate $amtValue1 to support programs that protect marine mammals and prevent global warming. FiftyP\\''s contribution will save seals that get stranded on beaches and help biologists identify and keep track of whales a first step in making sure that they\\''re healthy and safe. The money will also aid efforts to slow climate changeCM by making it possible for truckers to use less fuel and by supporting projects that create clean energy and plant new forests.' 
 WHERE cause_id =7  ;

 UPDATE cause SET column1_fiftyp_times = 'FiftyP is making a difference! This month it will donate $amtValue1 to support programs that protect marine mammals and prevent global warming. FiftyP\\''s contribution will save seals that get stranded on beaches and help biologists identify and keep track of whales a first step in making sure that they\\''re healthy and safe. The money will also aid efforts to slow climate changeCM by making it possible for truckers to use less fuel and by supporting projects that create clean energy and plant new forests.' 
 WHERE cause_id =8  ;
 
 
 UPDATE cause SET hos_full_txt = '<i>Protects</i>^ the Coast of India! MonkeysCM heronsCM and other animals along the coast of India will soon have new mangrove trees to live inCM thanks to ChildName of FiftyP. ChildName donated dollaramount from@ gender share account to the Carbon Fund\\''s Tree Planting ProgramCM which plants trees to protect the shoreline and the many creatures that live there. Mangrove trees drink salt waterCM so they do well by the sea. Their roots prevents mud and sand from being washed awayCM reducing damage from storms and allowing other plants to grow. Each mangrove is like an entire forest. Its branches provide food for monkeys and nesting sites for birdsCM while its tangled roots provide a surface for sponges and a hiding place for young fish.'
 WHERE cause_id =1  ;
 
 UPDATE cause SET hos_full_txt = 'Builds ForestsCM^ <i>Creates Habitats</i>! The destruction of forests is a double whammy for the environment. Animals lose their habitatsCM and the loss of trees which absorb harmful@ gases from airplanesCM auto more makes global warming worse. Now ChildName of FiftyP is working to put things right. ChildName Donated dollaramount from gender share account to support Reforestation project that will return trees to land that once held healthy forests. One projectCM in LouisianaCM will create a home for the threatened Louisiana black bear and many other threatened species. Another project will create safe habitats for mammalsCM birds and reptiles in Central America. The new forest will also pull harmful gases from the airCM reducing the effect of global warming throughout the world.' 
 WHERE cause_id =2  ;
 
 UPDATE cause SET hos_full_txt = 'Turns Trash^ <i>into Energy!</i> Garbage landfills are not only stinky. They are a danger to the environment. As the trash decays it releases methaneCM a gas that contributes@ to global warming. But thanks to ChildName of FiftyPCM who donated dollaramount from gender share accountCM programs in New Hampshire and Massachusetts are using methane to create electricity. The methane is captured from landfills before it can escape into the airCM and burned to form less dangerous gases. These gases are used to power turbinesCM which produce the electricity that heats homesCM runs computersCM and much more. So ChildName\\''s contribution is helping turn trash into energyCM and at the same time protecting the earth from methane\\''sCM harmful effects.' 
 WHERE cause_id =3  ;
 
 UPDATE cause SET hos_full_txt = 'Puts the Wind^ <i>to Work!</i> While many people worry about the harmful effects of global warmingCM ChildName of FiftyP is doing something about it. ChildName donated dollaramount from@ gender share account to support Wind PowerCM one of the best ways to use nature as a clean energy source. gender contribution will help build wind turbines in TexasCM MontanaCM and Iowa. These big machinesCM with blades that can be as big as a football fieldCM collect breezes from oceans and open fields and convert them to electricity for businesses and homes. Wind power can reduce our use of oil and other fossil fuelsCM which contribute to rising temperaturesCM melting glaciersCM and violent storms throughout the world.' 
 WHERE cause_id =4  ;
 
 UPDATE cause SET hos_full_txt = 'Rescues^ Stranded Seals! Seals often climb out of the water to spend time on the beachCM stretching out for a nap or warming up in the sun. But sometimes a seal on the beach is stranded - @too sick or injured to get back to the waterCM or entangled in a fisherman\\''s net. Although bystanders may want to help an animal in distressCM a stranded seal needs the aid of a trained scientistCM who can guide it back to the waterCM transport it to an animal hospitalCM or keep it calm until it\\''s ready to swim again. Because of ChildName of FiftyPCM stranded seals will be rescued: ChildName donated dollaramount from gender Share account to help send a marine biologist to the scene. ' 
 WHERE cause_id =5  ;
 
 UPDATE cause SET hos_full_txt = 'Helps Truckers^ Go Green! When long-distance truckers pull into truck stops to spend the nightCM they keep their engines running to heat or cool the big rig and to keep refrigerated cargo cold. @ Each night the truck burns 10 gallons of diesel fuelCM sending harmful gases into the air while parked in a lot. But thanks to ChildName of FiftyPCM who donated dollaramount from gender Share account to support the Truck Stop Electrification projectCM more truckers can turn off their engines at night and use greener electric energy to power the inside of the truck. With more than a million drivers pulling into truck stops each nightCM the Electrification project can reduce the use of diesel fuel by 10 million gallons a day. Thank you ChildName! '
 WHERE cause_id =6  ;
 
 UPDATE cause SET hos_full_txt = 'Makes^ Each Whale Count! The whales off the coast of Massachusetts don\\''t know itCM but they\\''re being followed and photographed and protectedCM thanks to ChildName of FiftyP.@ ChildName donated dollaramount from gender Share account to support the work of biologists who identify individual whales and track them year after year. That\\''s how they learn about the health and safety of these huge mammals that play an important role in our oceans\\'' ecosystemsCM having an impact on us all! Biologists identify each whale by its distinct natural markingsCM like freckles or tail patternsCM or by scars from injuries it may have received in the past. Each whale is named and then photographed over the course of its lifetime part of the effort to make sure that these ancient species survive. ' 
 WHERE cause_id =7  ;
 
 UPDATE cause SET hos_full_txt = 'Reduces gender^ Carbon Footprint! Each yearCM every child who takes a bus to school adds about a half-ton of greenhouse gases to the air. It\\''s part of their carbon footprintCM and it makes global @ warming worse. But even kids who can\\''t walk or bike to school can go green by supporting programs that cancel out the effect of those harmful bus fumes. That\\''s what ChildName of FiftyP did by donating dollaramount from gender Share account to the School Bus Project. gender donation is supporting programs that promote clean energy like wind and solar-power and plant new forestsCM which absorb harmful gases. And though ChildName still takes the yellow school bus each dayCM his donation cancels out the impact of that half-ton of harmful gases that used to be part of his carbon footprint. '
 WHERE cause_id =8  ;

/* BEGIN #707 */

/* --------------------------- U.S. Gift Cards ----------------------------- */

/** Add order_category and price_category columns in the product table **/
ALTER TABLE product ADD order_category INT( 5 ) NULL ,
ADD order_price MEDIUMINT( 5 ) NULL ;

/* deleting D& B from db, updating as we need D&B for cat shop */
select @productDescId:=(select product_description_id from product_description where name = "D&B");
select @updateProductDescId:=(select product_description_id from product_description where name = "Dave & Buster's");
Delete from product where product_description_id = @productDescId;
DELETE FROM product_description WHERE name = 'D&B';

select @product_description_id:=(select product_description_id from product_description where name = "Borders");

INSERT INTO product VALUES (null, @product_category_id, '10', @product_description_id, 'US', '1.92', 'BORDERS010', '28', NULL);

/* updating the category names in the `product_category` table */
select @productCategoryId:=(select product_category_id from product_category where name = "Groove'n");
UPDATE product_category SET `name` = 'Entertain' WHERE product_category_id = @productCategoryId;

select @productCategoryId:=(select product_category_id from product_category where name = "Shop'n");
UPDATE product_category SET name = 'Shop' WHERE product_category_id = @productCategoryId;

select @productCategoryId:=(select product_category_id from product_category where name = "Eat'n");
UPDATE product_category SET name = 'Eat' WHERE product_category_id = @productCategoryId;

select @productCategoryId:=(select product_category_id from product_category where name = "Wear'n");
UPDATE product_category SET name = 'Wear' WHERE product_category_id = @productCategoryId;

select @productCategoryId:=(select product_category_id from product_category where name = "Sport'n");
UPDATE product_category SET name = 'Sport' WHERE product_category_id = @productCategoryId;

/*Borders for Shop Cat */
select @product_description_id:=(select product_description_id from product_description where name = "Borders");
INSERT INTO product VALUES (null, @product_category_id, '10', @product_description_id, 'US', '1.92', 'BORDERS010', '28', NULL);
INSERT INTO product VALUES (null, @product_category_id, '25', @product_description_id, 'US', '1.92', 'BORDERS025', '29', NULL);
INSERT INTO product VALUES (null, @product_category_id, '50', @product_description_id, 'US', '1.92', 'BORDERS050', '30', NULL);

/* macys */
/* these are new inserts for category for SHOP */
INSERT INTO product VALUES (null, @product_category_id, '10', @product_description_id, 'US', '1.92', 'MACYS010', '45', NULL);
INSERT INTO product VALUES (null, @product_category_id, '25', @product_description_id, 'US', '1.92', 'MACYS025', '46', NULL);
INSERT INTO product VALUES (null, @product_category_id, '50', @product_description_id, 'US', '1.92', 'MACYS050', '47', NULL);



/* adding 10 and 100 $ D&B to Entertain Cat */
select @product_description_id:=(select product_description_id from product_description where name = "Dave & Buster's");
select @product_category_id:=(select product_category_id from product_category where name='Entertain');
INSERT INTO product VALUES (null, @product_category_id, '10', @product_description_id, 'US', '1.92', 'DAVEANDBST010', '8', NULL);
INSERT INTO product VALUES (null, @product_category_id, '100', @product_description_id, 'US', '1.92', 'DAVEANDBST100', '11', NULL);


/* updating from pottery to papajohns */
select @product_description_id:=(select product_description_id from product_description where name = "Papa John's");
UPDATE product SET sku_name = 'PAPAJOHNS025' WHERE product_description_id = @product_description_id and price = 25 ;
UPDATE product SET sku_name = 'PAPAJOHNS050' WHERE product_description_id = @product_description_id and price = 50 ;
/* updating from blank to pottery */
select @product_description_id:=(select product_description_id from product_description where name = "Pottery Barn/ Pottery Barn Kids");
UPDATE product SET sku_name = 'POTTERY025' WHERE product_description_id = @product_description_id and price = 25;
UPDATE product SET sku_name = 'POTTERY050' WHERE product_description_id = @product_description_id and price = 50;
UPDATE product SET sku_name = 'POTTERY100' WHERE product_description_id = @product_description_id and price = 100;


/*for 10$*/
/*1st carousel*/

/*toysrus*/
UPDATE product SET order_price = '1'  WHERE sku_name = 'TOYS010' and price = '10';

/*blockbuster*/
UPDATE product SET order_price = '2' WHERE sku_name = 'BLOCKBUSTR010' and price = '10';


/*Border*/
UPDATE product SET order_price = '3' WHERE sku_name = 'BORDERS010' and price = '10';

/*TGIF*/
UPDATE product SET order_price = '4' WHERE sku_name = 'TGIFRIDAYS010' and price = '10';


/*Maggiano*/

UPDATE product SET order_price = '5' WHERE sku_name = 'CHILIS010' and price = '10';

/*Barnes and noble*/
UPDATE product SET order_price = '6'  WHERE sku_name = 'BARNES010' and price = '10';

/*BATHBODY*/
UPDATE product SET order_price = '7'  WHERE sku_name = 'BATHBODY010' and price = '10'; 

/*FOOTLOCKER010*/
UPDATE product SET order_price = '8' WHERE sku_name = 'FOOTLOCKER010' and price = '10'; 

/*JCPENNEY010*/
UPDATE product SET order_price = '9' WHERE sku_name = 'JCPENNEY010' and price = '10';


/*LANDSEND010*/
UPDATE product SET order_price = '10' WHERE sku_name = 'LANDSEND010' and price = '10';


/*TJMAXX010*/
UPDATE product SET order_price = '11' WHERE sku_name = 'TJMAXX010' and price = '10';

/*APPLEBEES010*/
UPDATE product SET order_price = '12' WHERE sku_name = 'APPLEBEES010' and price = '10';

/*DARDEN010*/
UPDATE product SET order_price = '13' WHERE sku_name = 'DARDEN010' and price = '10';

/*AMCTHEATRES010*/
UPDATE product SET order_price = '14' WHERE sku_name = 'AMCTHEATRES010' and price = '10';

/*DUNKIN010*/
UPDATE product SET order_price = '15' WHERE sku_name = 'DUNKIN010' and price = '10';

/*2nd carousel*/

/*walmart*/
UPDATE product SET order_price = '16' WHERE sku_name = 'WALMART010' and price = '10';

/*outback */
UPDATE product SET order_price = '17' WHERE  sku_name = 'OUTBACK010' and price = '10' ;
/*papajohn */
UPDATE product SET order_price = '18'  WHERE sku_name = 'PAPAJOHNS010' LIMIT 1 ;
/*panera */
UPDATE product SET order_price = '19' WHERE sku_name ='PANERABREA010' and price = '10'; 
/*UNO */
UPDATE product SET order_price = '20' WHERE sku_name ='UNO010' and price = '10'; 
/*Macy */
UPDATE product SET order_price = '20' WHERE sku_name ='MACYS010' and price = '10'; 



/* for 25$ */ 
/*1st carousel */ 

/*AMAZON025 */ 
UPDATE product SET order_price = '1' WHERE sku_name ='AMAZON025' and price = '25'; 
/*TOYS025 */ 
UPDATE product SET order_price = '2' WHERE sku_name ='TOYS025' and price = '25'; 
/*AMCTHEATRES025 */ 
UPDATE product SET order_price = '3' WHERE sku_name ='AMCTHEATRES025' and price = '25'; 
/*BLOCKBUSTR025 */ 
UPDATE product SET order_price = '4' WHERE sku_name ='BLOCKBUSTR025' and price = '25'; 
/*BORDERS025 */
UPDATE product SET order_price = '5' WHERE sku_name ='BORDERS025' and price = '25'; 
/*DAVEANDBST025 */
UPDATE product SET order_price = '6' WHERE sku_name ='DAVEANDBST025' and price = '25'; 
/*TGIFRIDAYS025 */
UPDATE product SET order_price = '7' WHERE sku_name ='TGIFRIDAYS025' and price = '25'; 
/*WALMART025 */
UPDATE product SET order_price = '8' WHERE sku_name ='WALMART025' and price = '25'; 
/*BANANA025 */
UPDATE product SET order_price = '9' WHERE sku_name ='BANANA025' and price = '25'; 
/*BARNES025 */
UPDATE product SET order_price = '10' WHERE sku_name ='BARNES025' and price = '25'; 
/*BATHBODY025 */
UPDATE product SET order_price = '11' WHERE sku_name ='BATHBODY025' and price = '25'; 
/*EDDIEBAUER025 */
UPDATE product SET order_price = '12' WHERE sku_name ='EDDIEBAUER025' and price = '25'; 
/*FOOTLOCKER025 */
UPDATE product SET order_price = '13' WHERE sku_name ='FOOTLOCKER025' and price = '25'; 
/*ITUNES025 */
UPDATE product SET order_price = '14' WHERE sku_name ='ITUNES025' and price = '25'; 

/*2nd Carousel */
/*GAP025 */
UPDATE product SET order_price = '15' WHERE sku_name ='GAP025' and price = '25'; 
/*JCPENNEY025 */
UPDATE product SET order_price = '16' WHERE sku_name ='JCPENNEY025' and price = '25'; 
/*LANDSEND025 */
UPDATE product SET order_price = '17' WHERE sku_name ='LANDSEND025' and price = '25'; 
/*POTTERY025 */
UPDATE product SET order_price = '18' WHERE sku_name ='POTTERY025' and price = '25'; 
/*TJMAXX025 */
UPDATE product SET order_price = '19' WHERE sku_name ='TJMAXX025' and price = '25'; 
/*WALGREENS025 */
UPDATE product SET order_price = '20' WHERE sku_name ='WALGREENS025' and price = '25'; 
/*APPLEBEES025 */
UPDATE product SET order_price = '21' WHERE sku_name ='APPLEBEES025' and price = '25'; 
/*Maggiano */
UPDATE product SET order_price = '22' WHERE sku_name ='CHILIS025' and price = '25'; 
/*DARDEN025 */
UPDATE product SET order_price = '23' WHERE sku_name ='DARDEN025' and price = '25'; 
/*OUTBACK025 */
UPDATE product SET order_price = '24' WHERE sku_name ='OUTBACK025' and price = '25'; 
/*PapaJohn  */

/*PANERABREA025 */
UPDATE product SET order_price = '25' WHERE sku_name ='PANERABREA025' and price = '25'; 
/*UNO025 */
UPDATE product SET order_price = '26' WHERE sku_name ='UNO025' and price = '25'; 
/*DUNKIN025 */
UPDATE product SET order_price = '27' WHERE sku_name ='DUNKIN025' and price = '25'; 
 
/*50$ */
/*1st carousel */
/*ITUNES050 */
UPDATE product SET order_price = '1' WHERE sku_name ='ITUNES050' and price = '50'; 
/*FOOTLOCKER050 */
UPDATE product SET order_price = '2' WHERE sku_name ='FOOTLOCKER050' and price = '50'; 
/*TOYS050 */
UPDATE product SET order_price = '3' WHERE sku_name ='TOYS050' and price = '50';
/*BANANA050 */
UPDATE product SET order_price = '4' WHERE sku_name ='BANANA050' and price = '50';
/*BARNES050 */
UPDATE product SET order_price = '5' WHERE sku_name ='BARNES050' and price = '50';
/* Bed and Bath - Present in the db with the nmame of BATHBODY050 */
UPDATE product SET order_price = '6' WHERE sku_name ='BATHBODY050' and price = '50';
/*EDDIEBAUER050 */
UPDATE product SET order_price = '7' WHERE sku_name ='EDDIEBAUER050' and price = '50';
/*BORDERS050 */
UPDATE product SET order_price = '8' WHERE sku_name ='BORDERS050' and price = '50';
/*D&B -- is found under DAVEANDBST050 in the db */
UPDATE product SET order_price = '9' WHERE sku_name ='DAVEANDBST050' and price = '50';
/*TGIFRIDAYS050 */
UPDATE product SET order_price = '10' WHERE sku_name ='TGIFRIDAYS050' and price = '50';
/*JCPENNEY050 */
UPDATE product SET order_price = '11' WHERE sku_name ='JCPENNEY050' and price = '50';
/*WALMART050 */
UPDATE product SET order_price = '12' WHERE sku_name ='WALMART050' and price = '50';
/*BLOCKBUSTR050 */
UPDATE product SET order_price = '13' WHERE sku_name ='BLOCKBUSTR050' and price = '50';

/*2nd carousel */
/*GAP050 */
UPDATE product SET order_price = '14' WHERE sku_name ='GAP050' and price = '50';
/*NIKE050 */
UPDATE product SET order_price = '15' WHERE sku_name ='NIKE050' and price = '50';
/*KOHLS050 */
UPDATE product SET order_price = '16' WHERE sku_name ='KOHLS050' and price = '50';
/*LANDSEND050 */
UPDATE product SET order_price = '17' WHERE sku_name ='LANDSEND050' and price = '50';
/*POTTERY050 */
UPDATE product SET order_price = '18' WHERE sku_name ='POTTERY050' and price = '50';
/*TJMAXX050 */
UPDATE product SET order_price = '19' WHERE sku_name ='TJMAXX050' and price = '50';
/*WALGREENS050 */
UPDATE product SET order_price = '20' WHERE sku_name ='WALGREENS050' and price = '50';
/*APPLEBEES050 */
UPDATE product SET order_price = '21' WHERE sku_name ='APPLEBEES050' and price = '50';
/*DARDEN050  */
UPDATE product SET order_price = '22' WHERE sku_name ='DARDEN050' and price = '50';
/*OUTBACK050 */
UPDATE product SET order_price = '23' WHERE sku_name ='OUTBACK050' and price = '50';
/*PapaJohn */

/*PANERABREA050 */
UPDATE product SET order_price = '24' WHERE sku_name ='PANERABREA050' and price = '50';
/*UNO100 */
UPDATE product SET order_price = '25' WHERE sku_name ='UNO100' and price = '50';

/*Macy's  */
UPDATE product SET order_price = '26' WHERE sku_name ='MACY050' and price = '50';


/*100$ */
/*TOYS100 */
UPDATE product SET order_price = '1' WHERE sku_name ='TOYS100' and price = '100';
/*WALMART100 */
UPDATE product SET order_price = '2' WHERE sku_name ='WALMART100' and price = '100';
/*BANANA100 */
UPDATE product SET order_price = '3' WHERE sku_name ='BANANA100' and price = '100';
/*BARNES100 */
UPDATE product SET order_price = '4' WHERE sku_name ='BARNES100' and price = '100';
/*FOOTLOCKER100 */
UPDATE product SET order_price = '5' WHERE sku_name ='FOOTLOCKER100' and price = '100';
/*Macy */
select @product_description_id:=(select product_description_id from product_description where name = "Macy's");
Update product set sku_name = 'MACYS100' where sku_name='UNO100' and product_description_id= @product_description_id;
UPDATE product SET order_price = '6' WHERE sku_name ='MACYS100' and price = '100';

/*JCPENNEY100 */
UPDATE product SET order_price = '7' WHERE sku_name ='JCPENNEY100' and price = '100';
/*KOHLS100 */
UPDATE product SET order_price = '8' WHERE sku_name ='KOHLS100' and price = '100';
/*Potter Barn  -- should have been pottery barn */

/*TJMAXX100 */
UPDATE product SET order_price = '10' WHERE sku_name ='TJMAXX100' and price = '100';
/*WALGREENS100 */
UPDATE product SET order_price = '11' WHERE sku_name ='WALGREENS100' and price = '100';
/*TGIFRIDAYS100 */
UPDATE product SET order_price = '12' WHERE sku_name ='TGIFRIDAYS100' and price = '100';
/*PANERABREA100 */
select @product_description_id:=(select product_description_id from product_description where name = "The Panera Card&#174;");
select @product_category_id:=(select product_category_id from product_category where name='Eat');
INSERT INTO product VALUES (null, @product_category_id, '10', @product_description_id, 'US', '1.92', 'DAVEANDBST010', NULL, NULL);
INSERT INTO product VALUES (null, @product_category_id, '100', @product_description_id, 'US', '1.92', 'DAVEANDBST100', NULL, NULL);

INSERT INTO product VALUES (null, @product_category_id, '100', @product_description_id, 'US', '1.92', 'PANERABREA100', NULL, NULL);
UPDATE product SET order_price = '13' WHERE sku_name ='PANERABREA100' and price = '100';

/*NIKE100 */
UPDATE product SET order_price = '14' WHERE sku_name ='NIKE100' and price = '100';



/* CATEGORY ORDER  */

/* For Category Shop */
select @productCategoryId:=(select product_category_id from product_category where name = "Shop");
/*Toys R Us */
UPDATE product SET order_category = '1' WHERE product_category_id = @productCategoryId and sku_name='TOYS010' ;
UPDATE product SET order_category = '2' WHERE product_category_id = @productCategoryId and sku_name='TOYS025' ;
UPDATE product SET order_category = '3' WHERE product_category_id = @productCategoryId and sku_name='TOYS050';
UPDATE product SET order_category = '4' WHERE product_category_id = @productCategoryId and sku_name='TOYS100';

/*Barnes and Nobles */
UPDATE product SET order_category = '5' WHERE product_category_id = @productCategoryId and sku_name='BARNES010';
UPDATE product SET order_category = '6' WHERE product_category_id = @productCategoryId and sku_name='BARNES025';
UPDATE product SET order_category = '7' WHERE product_category_id = @productCategoryId and sku_name='BARNES050';
UPDATE product SET order_category = '8' WHERE product_category_id = @productCategoryId and sku_name='BARNES100';

/*Bath and body */
UPDATE product SET order_category = '9'  WHERE product_category_id = @productCategoryId and sku_name='BATHBODY010';
UPDATE product SET order_category = '10' WHERE product_category_id = @productCategoryId and sku_name='BATHBODY025';
UPDATE product SET order_category = '11' WHERE product_category_id = @productCategoryId and sku_name='BATHBODY050';

/*WalMart */
UPDATE product SET order_category = '12' WHERE product_category_id = @productCategoryId and sku_name='WALMART010';
UPDATE product SET order_category = '13' WHERE product_category_id = @productCategoryId and sku_name='WALMART025';
UPDATE product SET order_category = '14' WHERE product_category_id = @productCategoryId and sku_name='WALMART050';
UPDATE product SET order_category = '15' WHERE product_category_id = @productCategoryId and sku_name='WALMART100';

/*2nd Carousel */
/*GAP */
UPDATE product SET order_category = '16' WHERE product_category_id = @productCategoryId and sku_name='GAP025';
UPDATE product SET order_category = '17' WHERE product_category_id = @productCategoryId and sku_name='GAP050';

/*Banana Republic */
UPDATE product SET order_category = '18' WHERE product_category_id = @productCategoryId and sku_name='BANANA025';
UPDATE product SET order_category = '19' WHERE product_category_id = @productCategoryId and sku_name='BANANA050';
UPDATE product SET order_category = '20' WHERE product_category_id = @productCategoryId and sku_name='BANANA100';

/*Pottery Barn Kids */
UPDATE product SET order_category = '21' WHERE product_category_id = @productCategoryId and sku_name='POTTERY010';
UPDATE product SET order_category = '22' WHERE product_category_id = @productCategoryId and sku_name='POTTERY025';
UPDATE product SET order_category = '23' WHERE product_category_id = @productCategoryId and sku_name='POTTERY050';


/*FOOTLOCKER010 */
UPDATE product SET order_category = '24' WHERE product_category_id = @productCategoryId and sku_name='FOOTLOCKER010';
UPDATE product SET order_category = '25' WHERE product_category_id = @productCategoryId and sku_name='FOOTLOCKER025';
UPDATE product SET order_category = '26' WHERE product_category_id = @productCategoryId and sku_name='FOOTLOCKER050';
UPDATE product SET order_category = '27' WHERE product_category_id = @productCategoryId and sku_name='FOOTLOCKER100';

/*Borders */


/*3rd Carousel*/
/*Lands end */
UPDATE product SET order_category = '31' WHERE product_category_id = @productCategoryId and sku_name='LANDSEND010';
UPDATE product SET order_category = '32' WHERE product_category_id = @productCategoryId and sku_name='LANDSEND025';
UPDATE product SET order_category = '33' WHERE product_category_id = @productCategoryId and sku_name='LANDSEND050';

/*JCPEnny */
UPDATE product SET order_category = '34' WHERE product_category_id = @productCategoryId and sku_name='JCPENNEY010';
UPDATE product SET order_category = '35' WHERE product_category_id = @productCategoryId and sku_name='JCPENNEY025';
UPDATE product SET order_category = '36' WHERE product_category_id = @productCategoryId and sku_name='JCPENNEY050';
UPDATE product SET order_category = '37' WHERE product_category_id = @productCategoryId and sku_name='JCPENNEY100';

/*KOHLS */
UPDATE product SET order_category = '38' WHERE product_category_id = @productCategoryId and sku_name='KOHLS050';
UPDATE product SET order_category = '39' WHERE product_category_id = @productCategoryId and sku_name='KOHLS100';

/*EDDIE BAUER */
UPDATE product SET order_category = '40' WHERE product_category_id = @productCategoryId and sku_name='EDDIEBAUER025';
UPDATE product SET order_category = '41' WHERE product_category_id = @productCategoryId and sku_name='EDDIEBAUER050';

/*NIKE */
UPDATE product SET order_category = '42' WHERE product_category_id = @productCategoryId and sku_name='NIKE050';
UPDATE product SET order_category = '43' WHERE product_category_id = @productCategoryId and sku_name='NIKE100';


/*4th Caraousel */
/*Amazon */
UPDATE product SET order_category = '44' WHERE product_category_id = @productCategoryId and sku_name='AMAZON025';
/*Macy */

/*WALGREENs */
UPDATE product SET order_category = '48' WHERE product_category_id = @productCategoryId and sku_name='WALGREENS025';
UPDATE product SET order_category = '49' WHERE product_category_id = @productCategoryId and sku_name='WALGREENS050';
UPDATE product SET order_category = '50' WHERE product_category_id = @productCategoryId and sku_name='WALGREENS100';

/*TJMAXX */
UPDATE product SET order_category = '51' WHERE product_category_id = @productCategoryId and sku_name='TJMAXX010';
UPDATE product SET order_category = '52' WHERE product_category_id = @productCategoryId and sku_name='TJMAXX025';
UPDATE product SET order_category = '53' WHERE product_category_id = @productCategoryId and sku_name='TJMAXX050';
UPDATE product SET order_category = '54' WHERE product_category_id = @productCategoryId and sku_name='TJMAXX100';


/* FOR EAT CATEGORY (9) */
select @productCategoryId:=(select product_category_id from product_category where name = "Eat");

/*Dunkin Donuts */
UPDATE product SET order_category = '1' WHERE product_category_id = @productCategoryId and sku_name='DUNKIN010';
UPDATE product SET order_category = '2' WHERE product_category_id = @productCategoryId and sku_name='DUNKIN025';

/*Out Back */
UPDATE product SET order_category = '3' WHERE product_category_id = @productCategoryId and sku_name='OUTBACK010';
UPDATE product SET order_category = '4' WHERE product_category_id = @productCategoryId and sku_name='OUTBACK025';
UPDATE product SET order_category = '5' WHERE product_category_id = @productCategoryId and sku_name='OUTBACK050';
/* maggiano */

UPDATE product SET order_category = '6' WHERE product_category_id = @productCategoryId and sku_name='CHILIS010' and price = '10'; 
UPDATE product SET order_category = '7' WHERE product_category_id = @productCategoryId and sku_name='CHILIS025' and price = '25'; 


/*Uno */
/* renaming sku to its correct naming convention
select @productDescriptionId:=(select product_description_id from product_description where name = "Uno Chicago Grill&#174; Gift Card");
UPDATE product SET sku_name = 'UNO050' WHERE product_description_id = @product_description_id and price = '50' ;


/*TGI  */
UPDATE product SET order_category = '9' WHERE product_category_id = @productCategoryId and sku_name='TGIFRIDAYS010'; 
UPDATE product SET order_category = '10' WHERE product_category_id = @productCategoryId and sku_name='TGIFRIDAYS025';
UPDATE product SET order_category = '11' WHERE product_category_id = @productCategoryId and sku_name='TGIFRIDAYS050';
UPDATE product SET order_category = '12' WHERE product_category_id = @productCategoryId and sku_name='TGIFRIDAYS100';

/*Apple by's */
UPDATE product SET order_category = '13' WHERE product_category_id = @productCategoryId and sku_name='APPLEBEES010';
UPDATE product SET order_category = '14' WHERE product_category_id = @productCategoryId and sku_name='APPLEBEES025';
UPDATE product SET order_category = '15' WHERE product_category_id = @productCategoryId and sku_name='APPLEBEES050';


/*2nd Carosel */
UPDATE product SET order_category = '16' WHERE product_category_id = @productCategoryId and sku_name='DARDEN010';
UPDATE product SET order_category = '17' WHERE product_category_id = @productCategoryId and sku_name='DARDEN025';
UPDATE product SET order_category = '18' WHERE product_category_id = @productCategoryId and sku_name='DARDEN050';

/*Papa johns */
/* ONLY ONE ENTRY IN DB */
UPDATE product SET order_category = '19' WHERE product_category_id = @productCategoryId and sku_name='PAPAJOHNS010';
UPDATE product SET order_category = '19' WHERE product_category_id = @productCategoryId and sku_name='PAPAJOHNS025';
UPDATE product SET order_category = '19' WHERE product_category_id = @productCategoryId and sku_name='PAPAJOHNS050';

/*PANERABREA010 */
UPDATE product SET order_category = '22' WHERE product_category_id = @productCategoryId and sku_name='PANERABREA010';
UPDATE product SET order_category = '23' WHERE product_category_id = @productCategoryId and sku_name='PANERABREA025';
UPDATE product SET order_category = '24' WHERE product_category_id = @productCategoryId and sku_name='PANERABREA050';
Delete from product where product.sku_name='PANERABREA100' and product_category_id = @productCategoryId;


/*D&B */
UPDATE product SET order_category = '25' WHERE product_category_id = @productCategoryId and sku_name='DAVEANDBST010';
UPDATE product SET order_category = '26' WHERE product_category_id = @productCategoryId and sku_name='DAVEANDBST025';
UPDATE product SET order_category = '27' WHERE product_category_id = @productCategoryId and sku_name='DAVEANDBST050';
UPDATE product SET order_category = '28' WHERE product_category_id = @productCategoryId and sku_name='DAVEANDBST100';


/*uno */
UPDATE product SET order_category = '29' WHERE product_category_id = @productCategoryId and sku_name='UNO010';
UPDATE product SET order_category = '30' WHERE product_category_id = @productCategoryId and sku_name='UNO025';
UPDATE product SET order_category = '8' WHERE product_category_id = @productCategoryId and sku_name='UNO100' and price = '50';

/*  FOR WEAR CATEGORY (10) */
select @productCategoryId:=(select product_category_id from product_category where name = "Wear");
/* 1ST CAROUSEL */
/*Banana Republic */
UPDATE product SET order_category = '1' WHERE product_category_id = @productCategoryId and sku_name='BANANA025';
UPDATE product SET order_category = '2' WHERE product_category_id = @productCategoryId and sku_name='BANANA050';

/*lands end */
UPDATE product SET order_category = '3' WHERE product_category_id = @productCategoryId and sku_name='LANDSEND010';
UPDATE product SET order_category = '4' WHERE product_category_id = @productCategoryId and sku_name='LANDSEND025';
UPDATE product SET order_category = '5' WHERE product_category_id = @productCategoryId and sku_name='LANDSEND050';

/*EDDIE BAUER */
UPDATE product SET order_category = '6' WHERE product_category_id = @productCategoryId and sku_name='EDDIEBAUER025';
UPDATE product SET order_category = '7' WHERE product_category_id = @productCategoryId and sku_name='EDDIEBAUER050';

/*Jc Penny */
Delete from product where product.sku_name='JCPENNEY010' and product_category_id=10;
UPDATE product SET order_category = '8' WHERE product_category_id = @productCategoryId and sku_name='JCPENNEY025';
UPDATE product SET order_category = '9' WHERE product_category_id = @productCategoryId and sku_name='JCPENNEY050';
UPDATE product SET order_category = '10' WHERE product_category_id = @productCategoryId and sku_name='JCPENNEY100';

/*Macy  */


/*GAP */
UPDATE product SET order_category = '14' WHERE product_category_id = @productCategoryId and sku_name='GAP025';
UPDATE product SET order_category = '15' WHERE product_category_id = @productCategoryId and sku_name='GAP050';

/*2 nd Carousel */
/*Foot Lockers */

UPDATE product SET order_category = '16' WHERE product_category_id = @productCategoryId and sku_name='FOOTLOCKER010';
UPDATE product SET order_category = '17' WHERE product_category_id = @productCategoryId and sku_name='FOOTLOCKER025';
UPDATE product SET order_category = '18' WHERE product_category_id = @productCategoryId and sku_name='FOOTLOCKER050';
UPDATE product SET order_category = '19' WHERE product_category_id = @productCategoryId and sku_name='FOOTLOCKER100';

/*Kohl */
UPDATE product SET order_category = '20' WHERE product_category_id = @productCategoryId and sku_name='KOHLS050';
UPDATE product SET order_category = '21' WHERE product_category_id = @productCategoryId and sku_name='KOHLS100';


/*TJMAxx */
Delete from product where product.sku_name='TJMAXX010' and product_category_id = @productCategoryId;
UPDATE product SET order_category = '22' WHERE product_category_id = @productCategoryId and sku_name='TJMAXX025';
UPDATE product SET order_category = '23' WHERE product_category_id = @productCategoryId and sku_name='TJMAXX050';
UPDATE product SET order_category = '24' WHERE product_category_id = @productCategoryId and sku_name='TJMAXX100';

/*NIke */
UPDATE product SET order_category = '25' WHERE product_category_id = @productCategoryId and sku_name='NIKE050';
UPDATE product SET order_category = '26' WHERE product_category_id = @productCategoryId and sku_name='NIKE100';

/*walmart */
UPDATE product SET order_category = '27' WHERE product_category_id = @productCategoryId and sku_name='WALMART010';
UPDATE product SET order_category = '28' WHERE product_category_id = @productCategoryId and sku_name='WALMART025';
UPDATE product SET order_category = '29' WHERE product_category_id = @productCategoryId and sku_name='WALMART050';
UPDATE product SET order_category = '30' WHERE product_category_id = @productCategoryId and sku_name='WALMART100';

/* FOr Sport Category */
select @productCategoryId:=(select product_category_id from product_category where name = "Sport");
/*Nike */
UPDATE product SET order_category = '1' WHERE product_category_id = @productCategoryId and sku_name='NIKE050';
UPDATE product SET order_category = '2' WHERE product_category_id = @productCategoryId and sku_name='NIKE100';

/*wal mart */
UPDATE product SET order_category = '3' WHERE product_category_id = @productCategoryId and sku_name='WALMART010';
UPDATE product SET order_category = '4' WHERE product_category_id = @productCategoryId and sku_name='WALMART025';
UPDATE product SET order_category = '5' WHERE product_category_id = @productCategoryId and sku_name='WALMART050';
UPDATE product SET order_category = '6' WHERE product_category_id = @productCategoryId and sku_name='WALMART100';

/*FOOT LOCKER */
UPDATE product SET order_category = '7' WHERE product_category_id = @productCategoryId and sku_name='FOOTLOCKER010';
UPDATE product SET order_category = '8' WHERE product_category_id = @productCategoryId and sku_name='FOOTLOCKER025';
UPDATE product SET order_category = '9' WHERE product_category_id = @productCategoryId and sku_name='FOOTLOCKER050';
UPDATE product SET order_category = '10' WHERE product_category_id = @productCategoryId and sku_name='FOOTLOCKER100';

/* For Category Entertain (7) */
select @productCategoryId:=(select product_category_id from product_category where name = "Entertain");
/*Itunes */
UPDATE product SET order_category = '1' WHERE product_category_id = @productCategoryId and sku_name='ITUNES025';
UPDATE product SET order_category = '2' WHERE product_category_id = @productCategoryId and sku_name='ITUNES050';

/*BLOCKBUSTR */
UPDATE product SET order_category = '3' WHERE product_category_id = @productCategoryId and sku_name='BLOCKBUSTR010';
UPDATE product SET order_category = '4' WHERE product_category_id = @productCategoryId and sku_name='BLOCKBUSTR025';
UPDATE product SET order_category = '5' WHERE product_category_id = @productCategoryId and sku_name='BLOCKBUSTR050';

/*AMC */
UPDATE product SET order_category = '6' WHERE product_category_id = @productCategoryId and sku_name='AMCTHEATRES010';
UPDATE product SET order_category = '7' WHERE product_category_id = @productCategoryId and sku_name='AMCTHEATRES025';

/*D&B */
/* MEntinoed 4 in excel sheet however, only 2 records found in DB */

UPDATE product SET order_category = '9' WHERE product_category_id = @productCategoryId and sku_name='DAVEANDBST025';
UPDATE product SET order_category = '10' WHERE product_category_id = @productCategoryId and sku_name='DAVEANDBST050';


/*Amazon */
UPDATE product SET order_category = '12' WHERE product_category_id = @productCategoryId and sku_name='AMAZON025';

UPDATE product SET order_price = '9' WHERE sku_name ='POTTERY100' and price = '100';

/* ------------------------ CANADA GIFT CARDS ----------------------------- */
select @productCategoryId:=(select product_category_id from product_category where name = "Sport");
select @productDescriptionIdForSportCheck:=(select product_description_id from product_description where name = "SportChek");
select @productDescriptionIdForSportMart:=(select product_description_id from product_description where name = "SportMart");
select @productDescriptionIdForSGH:=(select product_description_id from product_description where name = "Sunglass Hut");
select @productCategoryIdForShop:=(select product_category_id from product_category where name = "Shop");
select @productDescriptionIdForGAP:=(select product_description_id from product_description where name = "GAP");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryId, '10', @productDescriptionIdForSportCheck, 'CA', '1.92', '197', NULL, NULL),
( @productCategoryId, '25', @productDescriptionIdForSportCheck, 'CA', '1.92', '72', NULL, NULL),
( @productCategoryId, '50', @productDescriptionIdForSportCheck, 'CA', '1.92', '73', NULL, NULL),
( @productCategoryId, '100', @productDescriptionIdForSportCheck, 'CA', '1.92', '74', NULL, NULL), 
( @productCategoryId, '25', @productDescriptionIdForSportMart, 'CA', '1.92', '204', NULL, NULL),
( @productCategoryId, '50', @productDescriptionIdForSportMart, 'CA', '1.92', '205', NULL, NULL),
( @productCategoryId, '10', @productDescriptionIdForSGH, 'CA', '1.92', '282', NULL, NULL),
( @productCategoryId, '25', @productDescriptionIdForSGH, 'CA', '1.92', '283', NULL, NULL),
( @productCategoryId, '50', @productDescriptionIdForSGH, 'CA', '1.92', '284', NULL, NULL),
( @productCategoryIdForShop, '25', @productDescriptionIdForGAP, 'CA', '1.92', '1', NULL, NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForGAP, 'CA', '1.92', '2', NULL, NULL);

/** For category under Entertainment category **/

select @productCategoryId:=(select product_category_id from product_category where name = "Entertain");
/** for best buy **/
UPDATE product SET `order_category` = '1' WHERE product_category_id = @productCategoryId and sku_name = 279;

UPDATE product SET `order_category` = '2' WHERE product_category_id = @productCategoryId and sku_name = 280;

UPDATE product SET `order_category` = '3' WHERE product_category_id = @productCategoryId and sku_name = 281;

 /** for chapters **/

UPDATE product SET `order_category` = '4' WHERE product_category_id = @productCategoryId and sku_name = 122;

UPDATE product SET `order_category` = '5' WHERE product_category_id = @productCategoryId and sku_name = 22;

UPDATE product SET `order_category` = '6' WHERE product_category_id = @productCategoryId and sku_name = 23;

/** for HMV **/

UPDATE product SET `order_category` = '7' WHERE product_category_id = @productCategoryId and sku_name = 40;

UPDATE product SET `order_category` = '8' WHERE product_category_id = @productCategoryId and sku_name = 41;

/** for future shop **/

UPDATE product SET `order_category` = '9' WHERE product_category_id = @productCategoryId and sku_name = 37;

UPDATE product SET `order_category` = '10' WHERE product_category_id = @productCategoryId and sku_name = 38;

UPDATE product SET `order_category` = '11' WHERE product_category_id = @productCategoryId and sku_name = 39;

/** for Galaxy  **/

UPDATE product SET `order_category` = '12' WHERE product_category_id = @productCategoryId and sku_name = 327;

UPDATE product SET `order_category` = '13' WHERE product_category_id = @productCategoryId and sku_name = 328;

/** for cineplex **/

UPDATE product SET `order_category` = '14' WHERE product_category_id = @productCategoryId and sku_name = 208;

UPDATE product SET `order_category` = '15' WHERE product_category_id = @productCategoryId and sku_name = 171;

/**-------------------- Cagegory 2 : For Shop category -------------------------- **/
select @productCategoryId:=(select product_category_id from product_category where name = "Shop");
/** for future shop **/

UPDATE product SET `order_category` = '1' WHERE product_category_id = @productCategoryId and sku_name = 37;
       
UPDATE product SET `order_category` = '2' WHERE product_category_id = @productCategoryId and sku_name = 38;
       
UPDATE product SET `order_category` = '3' WHERE product_category_id = @productCategoryId and sku_name = 39;
       
/** for Roots **/

UPDATE product SET `order_category` = '4' WHERE product_category_id = @productCategoryId and sku_name = 69;

UPDATE product SET `order_category` = '5' WHERE product_category_id = @productCategoryId and sku_name = 70;

UPDATE product SET `order_category` = '6' WHERE product_category_id = @productCategoryId and sku_name = 71;

/** for sport check **/

UPDATE product SET `order_category` = '7' WHERE product_category_id = @productCategoryId and sku_name = 197;

UPDATE product SET `order_category` = '8' WHERE product_category_id = @productCategoryId and sku_name = 72;

UPDATE product SET `order_category` = '9' WHERE product_category_id = @productCategoryId and sku_name = 73;

UPDATE product SET `order_category` = '10' WHERE product_category_id = @productCategoryId and sku_name = 74;

/**  for GAP **/

UPDATE product SET `order_category` = '11' WHERE product_category_id = @productCategoryId and sku_name = 1;

UPDATE product SET `order_category` = '12' WHERE product_category_id = @productCategoryId and sku_name = 2;


/**  for kernels popcorn **/

UPDATE product SET `order_category` = '13' WHERE product_category_id = @productCategoryId and sku_name = 199;

/** for HMV **/

UPDATE product SET `order_category` = '14' WHERE product_category_id = @productCategoryId and sku_name = 40;

UPDATE product SET `order_category` = '15' WHERE product_category_id = @productCategoryId and sku_name = 41;

/** ********************************* for second carousel ********************************* */
/** for chapters **/

UPDATE product SET `order_category` = '16' WHERE product_category_id = @productCategoryId and sku_name = 122;

UPDATE product SET `order_category` = '17' WHERE product_category_id = @productCategoryId and sku_name = 22;

UPDATE product SET `order_category` = '18' WHERE product_category_id = @productCategoryId and sku_name = 23;

/** for oldNavy **/

UPDATE product SET `order_category` = '19' WHERE product_category_id = @productCategoryId and sku_name = 99;

UPDATE product SET `order_category` = '20' WHERE product_category_id = @productCategoryId and sku_name = 59;

/** for besy buy **/

UPDATE product SET `order_category` = '21' WHERE product_category_id = @productCategoryId and sku_name = 279;

UPDATE product SET `order_category` = '22' WHERE product_category_id = @productCategoryId and sku_name = 280;

UPDATE product SET `order_category` = '23' WHERE product_category_id = @productCategoryId and sku_name = 281;

/** for sportMat **/

UPDATE product SET `order_category` = '24' WHERE product_category_id = @productCategoryId and sku_name = 204;

UPDATE product SET `order_category` = '25' WHERE product_category_id = @productCategoryId and sku_name = 205;

/** for birks **/

UPDATE product SET `order_category` = '26' WHERE product_category_id = @productCategoryId and sku_name = 293;

UPDATE product SET `order_category` = '27' WHERE product_category_id = @productCategoryId and sku_name = 294;

/** for pottery barn kids **/

UPDATE product SET `order_category` = '28' WHERE product_category_id = @productCategoryId and sku_name = 240;

UPDATE product SET `order_category` = '29' WHERE product_category_id = @productCategoryId and sku_name = 241;

UPDATE product SET `order_category` = '30' WHERE product_category_id = @productCategoryId and sku_name = 242;

/** ****************************** Cagegory 3 : For EAT category ****************************** **/
select @productCategoryId:=(select product_category_id from product_category where name = "Eat");
/**  for Red Lobster **/

UPDATE product SET `order_category` = '1' WHERE product_category_id = @productCategoryId and sku_name = 138;

UPDATE product SET `order_category` = '2' WHERE product_category_id = @productCategoryId and sku_name = 176;

/**  for Olive Garden **/

UPDATE product SET `order_category` = '3' WHERE product_category_id = @productCategoryId and sku_name = 58;

UPDATE product SET `order_category` = '4' WHERE product_category_id = @productCategoryId and sku_name = 139;

UPDATE product SET `order_category` = '5' WHERE product_category_id = @productCategoryId and sku_name = 155;

/**  for Laura Secord **/

UPDATE product SET `order_category` = '6' WHERE product_category_id = @productCategoryId and sku_name = 271;
UPDATE product SET `order_category` = '7' WHERE product_category_id = @productCategoryId and sku_name = 272;

/**  for Kernels **/

UPDATE product SET `order_category` = '8' WHERE product_category_id = @productCategoryId and sku_name = 199;

/**  for Galaxy cinemas **/

UPDATE product SET `order_category` = '9' WHERE product_category_id = @productCategoryId and sku_name = 327;

UPDATE product SET `order_category` = '10' WHERE product_category_id = @productCategoryId and sku_name = 328;

/**  for cineplex **/

UPDATE product SET `order_category` = '11' WHERE product_category_id = @productCategoryId and sku_name = 25;

UPDATE product SET `order_category` = '12' WHERE product_category_id = @productCategoryId and sku_name = 208;

UPDATE product SET `order_category` = '13' WHERE product_category_id = @productCategoryId and sku_name = 171;

/** ****************************** Cagegory 4 : For WEAR category ****************************** **/
select @productCategoryId:=(select product_category_id from product_category where name = "Wear");

/** for GAP **/

UPDATE product SET `order_category` = '1' WHERE product_category_id = @productCategoryId and sku_name = 1;

UPDATE product SET `order_category` = '2' WHERE product_category_id = @productCategoryId and sku_name = 2;

/** for OldNavy **/

UPDATE product SET `order_category` = '3' WHERE product_category_id = @productCategoryId and sku_name = 99;

UPDATE product SET `order_category` = '4' WHERE product_category_id = @productCategoryId and sku_name = 59;

/**  for Birks **/

UPDATE product SET `order_category` = '5' WHERE product_category_id = @productCategoryId and sku_name = 293;

UPDATE product SET `order_category` = '6' WHERE product_category_id = @productCategoryId and sku_name = 294;

/**  for SGH **/

UPDATE product SET `order_category` = '7' WHERE product_category_id = @productCategoryId and sku_name = 282;

UPDATE product SET `order_category` = '8' WHERE product_category_id = @productCategoryId and sku_name = 283;

UPDATE product SET `order_category` = '9' WHERE product_category_id = @productCategoryId and sku_name = 284;

/**  for Roots **/

UPDATE product SET `order_category` = '10' WHERE product_category_id = @productCategoryId and sku_name =69;

UPDATE product SET `order_category` = '11' WHERE product_category_id = @productCategoryId and sku_name =70;

UPDATE product SET `order_category` = '12' WHERE product_category_id = @productCategoryId and sku_name =71;

/** ****************************** Cagegory 4 : For SPORTS category ****************************** **/
select @productCategoryId:=(select product_category_id from product_category where name = "Sport");
/**  for sport chek **/

UPDATE product SET `order_category` = '1' WHERE product_category_id = @productCategoryId and sku_name =197;

UPDATE product SET `order_category` = '2' WHERE product_category_id = @productCategoryId and sku_name =72;

UPDATE product SET `order_category` = '3' WHERE product_category_id = @productCategoryId and sku_name =73;

UPDATE product SET `order_category` = '4' WHERE product_category_id = @productCategoryId and sku_name =74;

/**  for sport Mat **/

UPDATE product SET `order_category` = '5' WHERE product_category_id = @productCategoryId and sku_name =204;

UPDATE product SET `order_category` = '6' WHERE product_category_id = @productCategoryId and sku_name =205;

/**  for SGH **/

UPDATE product SET `order_category` = '7' WHERE product_category_id = @productCategoryId and sku_name =282;

UPDATE product SET `order_category` = '8' WHERE product_category_id = @productCategoryId and sku_name =283;

UPDATE product SET `order_category` = '9' WHERE product_category_id = @productCategoryId and sku_name =284;

/** ******************** for price category *****************/
/* for $10  */
UPDATE product SET `order_price` = '1' WHERE sku_name=122;
UPDATE product SET `order_price` = '2' WHERE sku_name = 25;
UPDATE product SET `order_price` = '3' WHERE sku_name=282;
UPDATE product SET `order_price` = '4' WHERE sku_name = 99;
UPDATE product SET `order_price` = '5' WHERE sku_name = 69;
UPDATE product SET `order_price` = '6' WHERE sku_name = 58;
UPDATE product SET `order_price` = '7' WHERE sku_name = 197;

/* * for $25 **/
UPDATE product SET `order_price` = '1' WHERE  sku_name = 70;
UPDATE product SET `order_price` = '2' WHERE  sku_name = 279;
UPDATE product SET `order_price` = '3' WHERE  sku_name = 22;
UPDATE product SET `order_price` = '4' WHERE  sku_name = 139;
UPDATE product SET `order_price` = '5' WHERE  sku_name = 37;
UPDATE product SET `order_price` = '6' WHERE  sku_name = 327;
UPDATE product SET `order_price` = '7' WHERE  sku_name = 283;
UPDATE product SET `order_price` = '8' WHERE  sku_name = 240;
UPDATE product SET `order_price` = '9' WHERE  sku_name = 204;
UPDATE product SET `order_price` = '10' WHERE sku_name = 59;
UPDATE product SET `order_price` = '11' WHERE sku_name = 271;
UPDATE product SET `order_price` = '12' WHERE sku_name = 138;
UPDATE product SET `order_price` = '13' WHERE sku_name = 208;
UPDATE product SET `order_price` = '14' WHERE sku_name = 72;
UPDATE product SET `order_price` = '15' WHERE sku_name = 40;

/** for $50 **/
UPDATE product SET `order_price` = '1' WHERE  sku_name = 2;
UPDATE product SET `order_price` = '2' WHERE  sku_name = 38;
UPDATE product SET `order_price` = '3' WHERE  sku_name = 241;
UPDATE product SET `order_price` = '4' WHERE  sku_name = 171;
UPDATE product SET `order_price` = '5' WHERE  sku_name = 23;
UPDATE product SET `order_price` = '6' WHERE  sku_name = 280;
UPDATE product SET `order_price` = '7' WHERE  sku_name = 328;
UPDATE product SET `order_price` = '8' WHERE  sku_name = 41;
UPDATE product SET `order_price` = '9' WHERE  sku_name = 73;
UPDATE product SET `order_price` = '10' WHERE sku_name = 205;
UPDATE product SET `order_price` = '11' WHERE sku_name = 284;
UPDATE product SET `order_price` = '12' WHERE sku_name = 293;
UPDATE product SET `order_price` = '13' WHERE sku_name = 155;
UPDATE product SET `order_price` = '14' WHERE sku_name = 176;
UPDATE product SET `order_price` = '15' WHERE sku_name = 71;

/** for $100 **/
UPDATE product SET `order_price` = '1' WHERE sku_name = 281;
UPDATE product SET `order_price` = '2' WHERE sku_name = 39;
UPDATE product SET `order_price` = '3' WHERE sku_name = 74;
UPDATE product SET `order_price` = '4' WHERE sku_name = 294;
UPDATE product SET `order_price` = '5' WHERE sku_name = 242;


/* END #707 */


/* #607 */
DROP TABLE IF EXISTS `app_property`;
CREATE TABLE  `app_property` (
  `property_key` varchar(200) NOT NULL,
  `value` varchar(200) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`property_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into app_property
values('path1','http://www.fiftyp.com/',
'Path 1 for gif/png','IMAGES_PATH');

insert into app_property
values('path2','http://www.fiftyp.com/',
'Path 2 for gif/png','IMAGES_PATH');

insert into app_property
values('path3','http://www.fiftyp.com/',
'Path 3 for gif/png','IMAGES_PATH');

insert into app_property
values('path4','http://www.fiftyp.com/',
'Path 4 for gif/png','IMAGES_PATH');

insert into app_property
values('s_path1','https://www.fiftyp.com/',
'Secure path 1 for gif/png','IMAGES_PATH');

insert into app_property
values('s_path2','https://www.fiftyp.com/',
'Secure path 2 for gif/png','IMAGES_PATH');

insert into app_property
values('s_path3','https://www.fiftyp.com/',
'Secure path 3 for gif/png','IMAGES_PATH');

/* #707 (Updates to clean up product table) */

/* for Dave and Busters*/
UPDATE product SET order_category = '8' WHERE product_category_id = @productCategoryId and sku_name='DAVEANDBST010';
UPDATE product SET order_category = '9' WHERE product_category_id = @productCategoryId and sku_name='DAVEANDBST025';
UPDATE product SET order_category = '10' WHERE product_category_id = @productCategoryId and sku_name='DAVEANDBST050';
UPDATE product SET order_category = '11' WHERE product_category_id = @productCategoryId and sku_name='DAVEANDBST100';

/*Pottery Barn Kids are missing in the shop category under carousel 2  */
select @productCategoryId:=(select product_category_id from product_category where name = "Shop");
UPDATE product SET order_category = '21' WHERE product_category_id = @productCategoryId and sku_name='POTTERY025';
UPDATE product SET order_category = '22' WHERE product_category_id = @productCategoryId and sku_name='POTTERY050';
UPDATE product SET order_category = '23' WHERE product_category_id = @productCategoryId and sku_name='POTTERY100';

/* borders are missing in the shop category under carousel 2 */
select @productCategoryId:=(select product_category_id from product_category where name = "Shop");
UPDATE product SET order_category = '28' WHERE product_category_id = @productCategoryId and sku_name='BORDERS010';
UPDATE product SET order_category = '29' WHERE product_category_id = @productCategoryId and sku_name='BORDERS025';
UPDATE product SET order_category = '30' WHERE product_category_id = @productCategoryId and sku_name='BORDERS050';

/* panere is displaying 4 times */
select @productCategoryId:=(select product_category_id from product_category where name = "Eat");
Delete from product where product.sku_name='PANERABREA010' and product_category_id = @productCategoryId;
Delete from product where product.sku_name='PANERABREA100' and product_category_id = @productCategoryId;
UPDATE product SET order_category = '22' WHERE product_category_id = @productCategoryId and sku_name='PANERABREA010';

/* 6. updating category id for Macy  for Wear Cat   */
select @product_category_id:=(select product_category_id from product_category where name='Wear');
select @product_description_id:=(select product_description_id from product_description where name = "Macy's");
INSERT INTO product VALUES (null, @product_category_id, '10', @product_description_id, 'US', '1.92', 'MACYS010', '11', NULL);
INSERT INTO product VALUES (null, @product_category_id, '25', @product_description_id, 'US', '1.92', 'MACYS025', '12', NULL);
INSERT INTO product VALUES (null, @product_category_id, '50', @product_description_id, 'US', '1.92', 'MACYS050', '13', NULL);


/* under eat category */
select @productCategoryId:=(select product_category_id from product_category where name = "Eat");
UPDATE product SET order_category = '19' WHERE product_category_id = @productCategoryId and sku_name='PAPAJOHNS010';
UPDATE product SET order_category = '20' WHERE product_category_id = @productCategoryId and sku_name='PAPAJOHNS025';
UPDATE product SET order_category = '21' WHERE product_category_id = @productCategoryId and sku_name='PAPAJOHNS050';

/* price 10 */
UPDATE product SET order_price = '1'  WHERE sku_name = 'TOYS010' and price = '10';
UPDATE product SET order_price = '2'  WHERE sku_name = 'BLOCKBUSTR010' and price = '10';
UPDATE product SET order_price = '3'  WHERE sku_name = 'BORDERS010' and price = '10';
UPDATE product SET order_price = '4'  WHERE sku_name = 'TGIFRIDAYS010' and price = '10';
UPDATE product SET order_price = '5'  WHERE sku_name = 'CHILIS010' and price = '10';
UPDATE product SET order_price = '6'  WHERE sku_name = 'BARNES010' and price = '10';
UPDATE product SET order_price = '7'  WHERE sku_name = 'BATHBODY010' and price = '10'; 
UPDATE product SET order_price = '8'  WHERE sku_name = 'FOOTLOCKER010' and price = '10'; 
UPDATE product SET order_price = '9'  WHERE sku_name = 'LANDSEND010' and price = '10';
UPDATE product SET order_price = '10' WHERE sku_name = 'APPLEBEES010' and price = '10';
UPDATE product SET order_price = '11' WHERE sku_name = 'DARDEN010' and price = '10';
UPDATE product SET order_price = '12' WHERE sku_name = 'AMCTHEATRES010' and price = '10';
UPDATE product SET order_price = '13' WHERE sku_name = 'DUNKIN010' and price = '10';
UPDATE product SET order_price = '14' WHERE sku_name = 'WALMART010' and price = '10';
UPDATE product SET order_price = '15' WHERE  sku_name = 'OUTBACK010' and price = '10' ;
UPDATE product SET order_price = '16' WHERE sku_name = 'PAPAJOHNS010' and price = '10' ;
UPDATE product SET order_price = '17' WHERE sku_name ='PANERABREA010' and price = '10'; 
UPDATE product SET order_price = '18' WHERE sku_name ='UNO010' and price = '10'; 
UPDATE product SET order_price = '19' WHERE sku_name ='MACYS010' and price = '10'; 

/* missing papa john under 25 */
UPDATE product SET order_price = '25' WHERE sku_name ='PAPAJOHNS025' and price = '25';
UPDATE product SET order_price = '26' WHERE sku_name ='PANERABREA025' and price = '25'; 
UPDATE product SET order_price = '27' WHERE sku_name ='UNO025' and price = '25'; 
UPDATE product SET order_price = '28' WHERE sku_name ='DUNKIN025' and price = '25'; 

/* missing papa john under 50*/
UPDATE product SET order_price = '24' WHERE sku_name ='PAPAJOHNS050' and price = '50';
UPDATE product SET order_price = '25' WHERE sku_name ='PANERABREA050' and price = '50';
UPDATE product SET order_price = '26' WHERE sku_name ='UNO100' and price = '50';
UPDATE product SET order_price = '27' WHERE sku_name ='MACY050' and price = '50';

/* under 100 panera should not be there */
Delete from product where product.sku_name='PANERABREA100';
UPDATE product SET order_price = '13' WHERE sku_name ='NIKE100' and price = '100';

/*Records which are in database and not in Excel sheet */
select @productDescriptionIdForColes:=(select product_description_id from product_description where name = "Coles");
select @productDescriptionIdForIndigo:=(select product_description_id from product_description where name = "Indigo");
select @productDescriptionIdForLaSenza:=(select product_description_id from product_description where name = "La Senza");
select @productDescriptionIdForMWH:=(select product_description_id from product_description where name = "Mark's Work Wearhouse");
select @productDescriptionIdForBPGR:=(select product_description_id from product_description where name = "Black's Photography");

/* Records removing from the product table */
delete from product where product_description_id =@productDescriptionIdForColes and country_code='CA';
delete from product where product_description_id =@productDescriptionIdForIndigo and country_code='CA';
delete from product where product_description_id =@productDescriptionIdForLaSenza and country_code='CA';
delete from product where product_description_id =@productDescriptionIdForMWH and country_code='CA';
delete from product where product_description_id =@productDescriptionIdForBPGR and country_code='CA';

/* products removing from the product_description table */

delete from product_description where product_description_id =@productDescriptionIdForColes ;
delete from product_description where product_description_id =@productDescriptionIdForIndigo ;
delete from product_description where product_description_id =@productDescriptionIdForLaSenza ;
delete from product_description where product_description_id =@productDescriptionIdForMWH ;
delete from product_description where product_description_id =@productDescriptionIdForBPGR ;

/* END #707 (Updates to clean up product table) */