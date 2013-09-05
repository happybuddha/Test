﻿/*SQL update script for release v1.15 */
update sys_template set design =
'<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">\r\n</head>\r\n<body>\r\n<table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">\r\n  <tr>\r\n    <td style="border-bottom:1px solid #7B2B83">\r\n      <table width="100%" border="0">\r\n        <tr>\r\n          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>\r\n          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>\r\n			Reminder: Tomorrow is allowance day for  ${childNames}!\r\n		  </b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style="padding:20px;font-size:12px; font-family:verdana;">\r\n	Dear ${parentName},<br/><br/>  This is to let you know that allowance will be posted on FiftyP tomorrow for ${childNames} along with other earnings or gifts that may be scheduled. Your credit card will not be charged. For more details, or to make changes to this posting, log in to <a href=''http://www.fiftyp.com''>www.fiftyp.com</a> and select ${personalPronoun} name.  \r\n	<br/><br/>	Thank you for being part of our community. We hope your family is enjoying FiftyP''s unique approach to teaching kids financial and social responsibility... and that you will tell your friends. The bigger our FiftyP community, the greater the interest in what it means to be a money-wise, caring kid.<br/><br/> Please let us know if you have any questions or suggestions for us. We are always looking to improve and enhance FiftyP. You can drop us an email at <a href=''http://www.fiftyp.com''>support@fiftyp.com</a> or log in to FiftyP and select Feedback from the Helpful Links menu. <br/><br/> With best wishes,<br>\r\n			The FiftyP Team<br>\r\n			<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>\r\n	  </p>\r\n	</td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>\r\n    </td>\r\n  </tr>\r\n</table>\r\n\r\n</body>'
where sys_template_id = 'ALLOWANCE_NOTIFICATION';

update sys_template set subject = 'Allowance notification'
where sys_template_id = 'ALLOWANCE_NOTIFICATION';

update sys_template set design =
'<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">\r\n</head>\r\n<body>\r\n<table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">\r\n  <tr>\r\n    <td style="border-bottom:1px solid #7B2B83">\r\n      <table width="100%" border="0">\r\n        <tr>\r\n          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>\r\n          <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>\r\n			Order confirmation of gift card\r\n		  </b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style="padding:20px;font-size:12px; font-family:verdana;">\r\n	<p>Dear ${parentName},</p>\r\n	<p>We''re writing to confirm your recent gift card purchase. Your payment has been processed. You can expect delivery by first-class mail within 7 to 10 business days. </p>\r\n	<p>\r\n		Purchase date: ${purchaseDate?string("MMMM d, yyyy")}\r\n		<br>\r\n      Confirmation #: ${orderNumber}</p>\r\n	  <p>Item: ${giftName} gift card <br>\r\n	  Value: $${giftPrice} <br>\r\n	  Merchant Charge : ${merchantValue}<br> \r\n	  Shipping &amp; handling: ${shippingCost} <br>\r\n	  Total: $${total}<br>\r\n	  Method of payment: ${paymentMethod}, \r\n\r\n\r\n card #${ccDisplayNumber}</p>\r\n	  <p> Shipping Address: <br>\r\n        ${buyerName} <br>\r\n        ${streetName} <br>\r\n        ${cityName} <br>\r\n        ${state} <br>\r\n        ${country} <br>\r\n      </p>\r\n	  <p>For questions about your child''s gift card purchase, or to learn more about our retail partners, go to www.fiftyp.com/faq?q=gift%20card . Still have questions? Email us at www.fiftyp.com/support . </p>\r\n	  <p>Please keep us informed of any changes to your email address. You can update your information by logging in to your FiftyP account and clicking on "Your Profile".</p>\r\n	  <p>Thanks for supporting your child in this purchase. Allowing our kids to make spending decisions gives them a great opportunity to practice money management skills. </p>\r\n	  \r\n	  With best wishes,<br>\r\n			Team FiftyP<br>\r\n			<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>\r\n	  	</td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>\r\n    </td>\r\n  </tr>\r\n</table>\r\n\r\n</body>'
where sys_template_id = 'ORDER_CONFIRMATION_GIFT_CARD';
 
update sys_template set design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">\r\n</head>\r\n<body>\r\n<table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">\r\n  <tr>\r\n    <td style="border-bottom:1px solid #7B2B83">\r\n      <table width="100%" border="0">\r\n        <tr>\r\n          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>\r\n          <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>\r\n			Order Confirmation of Membership Card Purchase\r\n		  </b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style="padding:20px;font-size:12px; font-family:verdana;">\r\n	<p>Dear ${parentName},</p>\r\n	<p>\r\n	  Thank you for your recent purchase of FiftyP Membership Cards. Your payment has been processed. You can expect delivery by first-class mail within 7 business days.    	<p>Here are the details:</p>\r\n	<p>Purchase date: ${purchaseDate?string("MMMM d, yyyy")} <br>\r\n	Order #: ${orderNumber}</p>\r\n	Quantity: ${quantity} Membership Cards <br>\r\n	Unit Price: $${unitPrice} per card <br>\r\n	Subtotal: $${subtotal} <br>\r\n	Shipping &amp; handling: $${shippingHandling} <br>\r\n	Total: $${total} <br>\r\n	Payment method: ${paymentMethod}, card #${ccDisplayNumber}\r\n	<p>Shipping Address: <br>\r\n	  ${buyerName} <br>\r\n	  ${streetName} <br>\r\n	  ${cityName}</p>\r\n	<p>To learn more about FiftyP, please visit us at <a href="http://www.fiftyp.com">www.fiftyp.com </a> or check our FAQs at www.fiftyp.com/faq?q=gift%20card. Still have questions? Email us at www.fiftyp.com/support . </p>\r\n	<p>Thank you for introducing FiftyP to your family, friends, colleagues and customers. We appreciate your support. </p>\r\n	<p>&nbsp;	  </p>\r\n	  <p>\r\n			With best wishes,<br>\r\n			Team FiftyP<br>\r\n			<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>\r\n	  </p>\r\n	</td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>\r\n    </td>\r\n  </tr>\r\n</table>\r\n\r\n</body>'
where sys_template_id = 'ORDER_CONFIRMATION_MEMBERSHIP_CARD_TRANSACTION';

UPDATE cause SET hos_full_txt = '<i>Protects</i>^ the Coast of India! Monkeys, herons, and other animals along the coast of India will soon have new mangrove trees to live in, thanks to ChildName of FiftyP. ChildName donated dollaramount from@ gender share account to the Carbon Fund\\''s Tree Planting Program, which plants trees to protect the short line and the many creatures that live there. Mangrove trees drink salt water, so they do well by the sea. Their root prevents mud and sand from being washed away, reducing damage from storms and allowing other plants to grow. Each mangrove is like an entire forest. Its branches provide food for monkeys and nesting sites for birds, while its tangled roots provide a surface for sponges and a hiding place for young fish.'
WHERE cause_id =1;

UPDATE cause SET hos_full_txt = 'Builds Forests,^ <i>Creates Habitats</i>! The destruction of forests is a double whammy for the environment. Animals lose their habitats, and the loss of trees which absorb harmful@ gases from airplanes, auto more makes global warming worse. Now ChildName of FiftyP is working to put things right. ChildName Donated dollaramount from gender share account to support Reforestation project that will return trees to land that once held healthy forests. One project, in Louisiana, will create a home for the threatened Louisiana black bear and many other threatened species. Another project will create safe habitats for mammals, birds and reptiles in Central America. The new forest will also pull harmful gases from the air, reducing the effect of global warming throughout the world.' 
WHERE cause_id =2;
 
UPDATE cause SET hos_full_txt = 'Puts the Wind^ <i>to Work!</i> While many people worry about the harmful effects of global warming, ChildName of FiftyP is doing something about it. ChildName donated dollaramount from@ gender share account to support Wind Power, one of the best ways to use nature as a clean energy source. gender\\''s contribution will help build wind turbines in Texas, Montana, and Iowa. These big machines, with blades that can be as big as a football field, collect breezes from oceans and open fields and convert them to electricity for businesses and homes. Wind power can reduce our use of oil and other fossil fuels, which contribute to rising temperatures, melting glaciers, and violent storms throughout the world.'
WHERE cause_id =4;

UPDATE cause SET photo1_url = 'share/42.HoS_4.png' WHERE cause_id =2;
UPDATE cause SET photo1_url = 'share/42.HoS_2.png' WHERE cause_id =4;

/* #619: ecards changes */
update sys_template set design = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>		\r\n	<title>FiftyP</title>\r\n</head>\r\n<body>\r\n<img  src="cid:logo_parent.gif"  /><br />\r\n<font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>${userName} has sent you an ecard from FiftyP </b></font> \r\n<img  src="cid:${imageName}" style="position:absolute;left:0px;top:120px;z-index:-1;" /> \r\n  <table width="250" align="left" >\r\n    <tr>\r\n        <td >\r\n          <p style="color:#77823B;font-family:verdana;font-size:14px;"><b>From ${userName}@fiftyp.com,</b>\r\n            <br />\r\n          </p>\r\n		<p style="font-family:verdana;font-size:13px;">${spreadTxt!""?cap_first?chop_linebreak}\r\n		</p>		\r\n		<p style="font-family:verdana;font-size:13px;">Check it out!<br>\r\n		<a target="_blank" href="http://www.fiftyp.com" style="color:#000000">www.fiftyp.com</a>\r\n		</p>\r\n  </tr>\r\n</table>\r\n<span style="position:absolute; left:15px; top:500px;"><p><font color="#F68B1F" size="1" style="font-size:14px;" face="verdana">${customMsg}</font></p></span></body>'
where sys_template_id = 'SPREAD_THE_WORD_CODE';

/*Themes */
insert into fp_theme (theme_id, name, description, theme_small_picture_url, theme_preview_picture_url) values ('kidshome4boy12', 'Kids Home For boy 12', '', 'themes/thumbnails/kidshome4boy12.png', 'themes/thumbnails/kidshome4boy12.png');
insert into fp_theme (theme_id, name, description, theme_small_picture_url, theme_preview_picture_url) values ('kidshome4boy13', 'Kids Home For Boy 13', '', 'themes/thumbnails/kidshome4boy13.png', 'themes/thumbnails/kidshome4boy13.png');
insert into fp_theme (theme_id, name, description, theme_small_picture_url, theme_preview_picture_url) values ('kidshome4boy14', 'Kids Home For Boy 14', '', 'themes/thumbnails/kidshome4boy14.png', 'themes/thumbnails/kidshome4boy14.png');
insert into fp_theme (theme_id, name, description, theme_small_picture_url, theme_preview_picture_url) values ('kidshome4boy15', 'Kids Home For Boy 15', '', 'themes/thumbnails/kidshome4boy15.png', 'themes/thumbnails/kidshome4boy15.png');
insert into fp_theme (theme_id, name, description, theme_small_picture_url, theme_preview_picture_url) values ('kidshome4boy16', 'Kids Home For Boy 16', '', 'themes/thumbnails/kidshome4boy16.png', 'themes/thumbnails/kidshome4boy16.png');
insert into fp_theme (theme_id, name, description, theme_small_picture_url, theme_preview_picture_url) values ('kidshome4boy17', 'Kids Home For Boy 17', '', 'themes/thumbnails/kidshome4boy17.png', 'themes/thumbnails/kidshome4boy17.png');

select @productDescriptionId:=(select product_description_id from product_description where name = "Gap / Baby Gap / Gap Kids");
insert into product (product_category_id,price,product_description_id,country_code,shipping_handling_cost,sku_name)
values (@productCategoryId,25,@productDescriptionId,'CA',1.92,1),
 (@productCategoryId,50,@productDescriptionId,'CA',1.92,2);


select @productDescriptionId:=(select product_description_id from product_description where name = "La Senza");
insert into product (product_category_id,price,product_description_id,country_code,shipping_handling_cost,sku_name)
values (@productCategoryId,25,@productDescriptionId,'CA',1.92,50),
 (@productCategoryId,50,@productDescriptionId,'CA',1.92,51);

select @productDescriptionId:=(select product_description_id from product_description where name = "Mark's Work Wearhouse");
insert into product (product_category_id,price,product_description_id,country_code,shipping_handling_cost,sku_name)
values (@productCategoryId,10,@productDescriptionId,'CA',1.92,251),
 (@productCategoryId,25,@productDescriptionId,'CA',1.92,55),
 (@productCategoryId,50,@productDescriptionId,'CA',1.92,56),
 (@productCategoryId,100,@productDescriptionId,'CA',1.92,156);

select @productDescriptionId:=(select product_description_id from product_description where name = "East Side Mario's");
insert into product (product_category_id,price,product_description_id,country_code,shipping_handling_cost,sku_name)
values (@productCategoryId,25,@productDescriptionId,'CA',1.92,351),
 (@productCategoryId,50,@productDescriptionId,'CA',1.92,352);

select @productDescriptionId:=(select product_description_id from product_description where name = "La Senza");
insert into product (product_category_id,price,product_description_id,country_code,shipping_handling_cost,sku_name)
values (@productCategoryId,25,@productDescriptionId,'CA',1.92,50),
 (@productCategoryId,50,@productDescriptionId,'CA',1.92,51);

select @productDescriptionId:=(select product_description_id from product_description where name = "Mark's Work Wearhouse");
insert into product (product_category_id,price,product_description_id,country_code,shipping_handling_cost,sku_name)
values (@productCategoryId,10,@productDescriptionId,'CA',1.92,251),
 (@productCategoryId,25,@productDescriptionId,'CA',1.92,55),
 (@productCategoryId,50,@productDescriptionId,'CA',1.92,56),
 (@productCategoryId,100,@productDescriptionId,'CA',1.92,156);

select @productDescriptionId:=(select product_description_id from product_description where name = "Black's Photography");
insert into product (product_category_id,price,product_description_id,country_code,shipping_handling_cost,sku_name)
values (@productCategoryId,10,@productDescriptionId,'CA',1.92,126),
 (@productCategoryId,25,@productDescriptionId,'CA',1.92,341),
 (@productCategoryId,50,@productDescriptionId,'CA',1.92,128);

/* Recurring Chores */
CREATE TABLE chore_state_entry (
chore_entry_id BIGINT NOT NULL AUTO_INCREMENT ,
chore_request_id BIGINT NOT NULL ,
child_id BIGINT NOT NULL ,
chore_state VARCHAR( 20 ) NULL DEFAULT NULL ,
entry_date DATE NOT NULL ,
amount DOUBLE NULL DEFAULT NULL ,
PRIMARY KEY ( chore_entry_id )
) ENGINE = InnoDB;

ALTER TABLE chore_state_entry ADD CONSTRAINT FK_child_mm_chore_chore_state_entry FOREIGN KEY ( chore_request_id )  REFERENCES child_mm_chore( child_mm_chore_id ) ON DELETE RESTRICT ON UPDATE RESTRICT ;
ALTER TABLE chore_state_entry ADD CONSTRAINT FK_mm_state_chore_state_entry FOREIGN KEY ( chore_state ) REFERENCES mm_state( mm_state_id ) ON DELETE RESTRICT ON UPDATE RESTRICT ; 
ALTER TABLE chore_state_entry ADD CONSTRAINT FK_child_profile_chore_state_entry FOREIGN KEY ( child_id ) REFERENCES child_profile( child_profile_id ) ON DELETE RESTRICT ON UPDATE RESTRICT ;

ALTER TABLE `credit_card_type` ADD COLUMN `canadian_percentage_trans_cost` DOUBLE NOT NULL DEFAULT 3.9 AFTER `additional_trans_cost`;

/* #599 */
UPDATE cause SET hos_full_txt = '<i>Protects</i>^ the Coast of India! Monkeys, herons, and other animals along the coast of India will soon have new mangrove trees to live in, thanks to ChildName of FiftyP. ChildName donated dollaramount from@ gender share account to the Carbon Fund\\''s Tree Planting Program, which plants trees to protect the shoreline and the many creatures that live there. Mangrove trees drink salt water, so they do well by the sea. Their roots prevents mud and sand from being washed away, reducing damage from storms and allowing other plants to grow. Each mangrove is like an entire forest. Its branches provide food for monkeys and nesting sites for birds, while its tangled roots provide a surface for sponges and a hiding place for young fish.'
WHERE cause_id = 1;

UPDATE cause SET hos_full_txt = 'Turns Trash^ <i>into Energy!</i> Garbage landfills are not only stinky. They are a danger to the environment. As the trash decays it releases methane, a gas that contributes@ to global warming. But thanks to ChildName of FiftyP, who donated dollaramount from gender share account, programs in New Hampshire and Massachusetts are using methane to create electricity. The methane is captured from landfills before it can escape into the air, and burned to form less dangerous gases. These gases are used to power turbines, which produce the electricity that heats homes, runs computers, and much more. So ChildName\\''s contribution is helping turn trash into energy, and at the same time protecting the earth from methane\\''s, harmful effects.'
WHERE cause_id = 3;

UPDATE cause SET hos_full_txt = 'Puts the Wind^ <i>to Work!</i> While many people worry about the harmful effects of global warming, ChildName of FiftyP is doing something about it. ChildName donated dollaramount from@ gender share account to support Wind Power, one of the best ways to use nature as a clean energy source. gender contribution will help build wind turbines in Texas, Montana, and Iowa. These big machines, with blades that can be as big as a football field, collect breezes from oceans and open fields and convert them to electricity for businesses and homes. Wind power can reduce our use of oil and other fossil fuels, which contribute to rising temperatures, melting glaciers, and violent storms throughout the world.'
WHERE cause_id = 4;

/* #521 */
UPDATE sys_template SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">\r\n</head>\r\n<body>\r\n<table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">\r\n  <tr>\r\n    <td style="border-bottom:1px solid #7B2B83">\r\n      <table width="100%" border="0">\r\n        <tr>\r\n          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>\r\n          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>\r\n			Welcome to FiftyP\r\n		  </b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style="padding:20px;font-size:12px; font-family:verdana;">\r\n	Dear ${userName},<br/><br/>  Welcome to FiftyP!  You have activated a free membership as of ${registrationDate?string("MMMM d, yyyy")}.  \r\n	<br/><br/>Login ID: ${userName}.<br/><br/> Your free membership introduces your ${childPronoun} to basic money management skills and to charitable causes where ${personalPronoun} can make a difference. FiftyP also makes it easy for you to keep track of ${possesivePronoun} allowance and extra earnings.<br/><br/>\r\n	If you''d like ${objectPronouns} to get even more out of FiftyP, consider switching to a one-year or three-year membership plan. Both give kids hands-on experience with saving, spending, and sharing-the best way to learn. Now''s the time to help ${objectPronouns} form healthy habits!\r\n	<br/><br/>You can upgrade your membership at any time: Log in to your FiftyP account at <a href=''http://www.fiftyp.com''>www.fiftyp.com</a> and click the Membership button.<br/><br/>\r\n	If you wish to cancel your family''s account, log in to your FiftyP account and click the Edit Profile button.<br/><br/>\r\n	Questions? Please email us at <a href=''http://www.fiftyp.com''>support@fiftyp.com</a>.<br/><br/>\r\n	With best wishes,<br>\r\n			The FiftyP Team<br>\r\n			<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>\r\n	 \r\n	</td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>\r\n    </td>\r\n  </tr>\r\n</table>\r\n\r\n</body>' where sys_template_id = 'WELCOME_CODE';

UPDATE sys_template SET subject = 'Getting started on FiftyP' WHERE sys_template_id = 'WELCOME_CODE';

INSERT INTO sys_template (sys_template_id, description, design, subject) VALUES
('WELCOME_CODE_ONE_YEAR_MEMBERSHIP', 'Email template for new paying user for one year', '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">\r\n</head>\r\n<body>\r\n<table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">\r\n  <tr>\r\n    <td style="border-bottom:1px solid #7B2B83">\r\n      <table width="100%" border="0">\r\n        <tr>\r\n          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>\r\n          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>\r\n			Welcome to FiftyP\r\n		  </b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style="padding:20px;font-size:12px; font-family:verdana;">\r\n	Dear ${userName},<br/><br/>  Welcome to FiftyP! We''re delighted to be your partner in raising [a money-wise, caring child/money-wise, caring kids]. Your one-year membership has been activated as of ${registrationDate?string("MMMM d, yyyy")}. Have your ${childPronoun} jump in and get started!.  \r\n	<br/><br/>Login ID: ${userName}.<br/><br/> On FiftyP kids get hands-on experience with earning, saving, and spending - the best way of forming healthy financial habits that last a lifetime. They also get to see the world beyond their doorstep and to open their hearts to others with donations that make a difference.\r\n	<br/><br/>If at any time you wish to alter your membership, log in to your FiftyP account at <a href=''http://www.fiftyp.com''>www.fiftyp.com</a> and click the Membership button.<br/><br/>\r\n	You may also cancel your family''s account by logging in to your FiftyP account and clicking the Edit Profile button.<br/><br/>\r\n	Please note that because half our profits are donated to charitable causes there can be no refunds.<br/><br/>\r\n	Questions? Please email us at <a href=''http://www.fiftyp.com''>support@fiftyp.com</a>.<br/><br/>\r\n	With best wishes,<br>\r\n			The FiftyP Team<br>\r\n			<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>\r\n	 \r\n	</td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>\r\n    </td>\r\n  </tr>\r\n</table>\r\n\r\n</body>', 'Getting started on FiftyP'),
('WELCOME_CODE_THREE_YEAR_MEMBERSHIP', 'Email template for new paying user for three year', '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">\r\n</head>\r\n<body>\r\n<table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">\r\n  <tr>\r\n    <td style="border-bottom:1px solid #7B2B83">\r\n      <table width="100%" border="0">\r\n        <tr>\r\n          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>\r\n          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>\r\n			Welcome to FiftyP\r\n		  </b></font></td>\r\n        </tr>\r\n    </table></td>\r\n  </tr>\r\n  <tr>\r\n    <td style="padding:20px;font-size:12px; font-family:verdana;">\r\n	Dear ${userName},<br/><br/>  Welcome to FiftyP! We''re delighted to be your partner in raising [a money-wise, caring child/money-wise, caring kids]. Your three-year membership has been activated as of ${registrationDate?string("MMMM d, yyyy")}. Have your ${childPronoun} jump in and get started!  \r\n	<br/><br/>Login ID: ${userName}.<br/><br/> On FiftyP kids get hands-on experience with earning, saving, and spending - the best way of forming healthy financial habits that last a lifetime. They also get to see the world beyond their doorstep, and to open their hearts to others with donations that make a difference.\r\n	<br/><br/>If at any time you wish to cancel your family''s account, log in to your FiftyP account and click the Edit Profile button.<br/><br/>\r\n	Please note that because half our profits are donated to charitable causes there can be no refunds.<br/><br/>\r\n	Questions? Please email us at <a href=''http://www.fiftyp.com''>support@fiftyp.com</a>.<br/><br/>\r\n	With best wishes,<br>\r\n			The FiftyP Team<br>\r\n			<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>\r\n	 \r\n	</td>\r\n  </tr>\r\n  <tr>\r\n    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>\r\n    </td>\r\n  </tr>\r\n</table>\r\n\r\n</body>', 'Getting started on FiftyP');