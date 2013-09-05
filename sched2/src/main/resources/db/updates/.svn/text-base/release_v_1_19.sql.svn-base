/*SQL update script for release v1.19 */

/* *********************************** under shop category display TJMaxx and JcPenny 3 times only  *********************************** */
delete from product  WHERE sku_name='JCPENNEY010' ;
select @productCategoryId:=(select product_category_id from product_category where name = "Shop");

UPDATE product SET order_category = '34' WHERE product_category_id = @productCategoryId and sku_name='JCPENNEY025';
UPDATE product SET order_category = '35' WHERE product_category_id = @productCategoryId and sku_name='JCPENNEY050';
UPDATE product SET order_category = '36' WHERE product_category_id = @productCategoryId and sku_name='JCPENNEY100';

UPDATE product SET order_category = '37' WHERE product_category_id = @productCategoryId and sku_name='KOHLS050';
UPDATE product SET order_category = '38' WHERE product_category_id = @productCategoryId and sku_name='KOHLS100';

/*EDDIE BAUER */
UPDATE product SET order_category = '39' WHERE product_category_id = @productCategoryId and sku_name='EDDIEBAUER025';
UPDATE product SET order_category = '40' WHERE product_category_id = @productCategoryId and sku_name='EDDIEBAUER050';

/*NIKE */
UPDATE product SET order_category = '41' WHERE product_category_id = @productCategoryId and sku_name='NIKE050';
UPDATE product SET order_category = '42' WHERE product_category_id = @productCategoryId and sku_name='NIKE100';

/*Amazon */
UPDATE product SET order_category = '43' WHERE product_category_id = @productCategoryId and sku_name='AMAZON025';
/*Macy */
select @productDescriptionIdForMacy:=(select product_description_id from product_description where name = "Macy's");
INSERT INTO product VALUES (null, @productCategoryId, '10', @productDescriptionIdForMacy, 'US', '1.92', 'MACYS010', '44', '19');
INSERT INTO product VALUES (null, @productCategoryId, '25', @productDescriptionIdForMacy, 'US', '1.92', 'MACYS025', '45', null);
INSERT INTO product VALUES (null, @productCategoryId, '50', @productDescriptionIdForMacy, 'US', '1.92', 'MACYS050', '46', '28');


/*WALGREENs */
UPDATE product SET order_category = '47' WHERE product_category_id = @productCategoryId and sku_name='WALGREENS025';
UPDATE product SET order_category = '48' WHERE product_category_id = @productCategoryId and sku_name='WALGREENS050';
UPDATE product SET order_category = '49' WHERE product_category_id = @productCategoryId and sku_name='WALGREENS100';

/*TJMAXX */
delete from product  WHERE sku_name='TJMAXX010';
UPDATE product SET order_category = '50' WHERE product_category_id = @productCategoryId and sku_name='TJMAXX025';
UPDATE product SET order_category = '51' WHERE product_category_id = @productCategoryId and sku_name='TJMAXX050';
UPDATE product SET order_category = '52' WHERE product_category_id = @productCategoryId and sku_name='TJMAXX100';

/* *********************************** END  *********************************** */


/* wall mart 100 product is displaying two times, so delete two records and insert only one record */
select @productCategoryId:=(select product_category_id from product_category where name = "Shop");
select @product_description_id:=(select product_description_id from product_description where name = "Wal-Mart");
delete from product  WHERE sku_name='WALMART100' and product_description_id= @product_description_id and product_category_id = @productCategoryId;
INSERT INTO product VALUES (null, @productCategoryId, '100', @product_description_id, 'US', '1.92', 'WALMART100', '15', '2');

/* insert borders records which are missing */

select @productCategoryId:=(select product_category_id from product_category where name = "Shop");
UPDATE product SET order_category = '28', product_category_id = @productCategoryId, order_price=3 WHERE sku_name='BORDERS010' and order_category is null;
UPDATE product SET order_category = '29', product_category_id = @productCategoryId, order_price=5 WHERE sku_name='BORDERS025' and order_category is null;
UPDATE product SET order_category = '30', product_category_id = @productCategoryId, order_price=8 WHERE sku_name='BORDERS050' and order_category is null;

/* delete macy 's records which is having product_description_id of borders  and  borders whose category id is null*/
select @product_description_id:=(select product_description_id from product_description where name = "Borders");
delete from product  WHERE sku_name='BORDERS010' and product_description_id= @product_description_id and product_category_id is null;
delete from product  WHERE sku_name='BORDERS025' and product_description_id= @product_description_id and product_category_id is null;
delete from product  WHERE sku_name='BORDERS050' and product_description_id= @product_description_id and product_category_id is null;
delete from product  WHERE sku_name='MACYS010' and product_description_id= @product_description_id and product_category_id is null;
delete from product  WHERE sku_name='MACYS025' and product_description_id= @product_description_id and product_category_id is null;
delete from product  WHERE sku_name='MACYS050' and product_description_id= @product_description_id and product_category_id is null;


/* for Panera records in  Eat category */
/* inserting PANERA010 sku_name which is missing */
select @productCategoryIdForEat:=(select product_category_id from product_category where name = "Eat");
select @productDescriptionIdForPANERA:=(select product_description_id from product_description where name = "The Panera Card&#174;");
INSERT INTO product VALUES (null, @productCategoryIdForEat, '10', @productDescriptionIdForPANERA, 'US', '1.92', 'PANERABREA010', '22', '19');
UPDATE product SET order_category = '23' WHERE product_category_id = @productCategoryIdForEat and sku_name='PANERABREA025';
UPDATE product SET order_category = '24' WHERE product_category_id = @productCategoryIdForEat and sku_name='PANERABREA050';
Delete from product where product.sku_name='PANERABREA100' and product_category_id = @productCategoryIdForEat;

select @productCategoryIdForEat:=(select product_category_id from product_category where name = "Eat");
select @productCategoryIdForEntertain:=(select product_category_id from product_category where name = "Entertain");
select @productDescriptionIdForDAVE:=(select product_description_id from product_description where name = "Dave & Buster's");
select @productDescriptionIdForPANERA:=(select product_description_id from product_description where name = "The Panera Card&#174;");


delete from product  WHERE sku_name='DAVEANDBST010' and product_description_id= @productDescriptionIdForDAVE ;
delete from product  WHERE sku_name='DAVEANDBST010' and product_description_id= @productDescriptionIdForPANERA ;
delete from product  WHERE sku_name='DAVEANDBST025' and product_description_id= @productDescriptionIdForDAVE ;
delete from product  WHERE sku_name='DAVEANDBST050' and product_description_id= @productDescriptionIdForDAVE ;
delete from product  WHERE sku_name='DAVEANDBST100' and product_description_id= @productDescriptionIdForDAVE ;
delete from product  WHERE sku_name='DAVEANDBST100' and product_description_id= @productDescriptionIdForPANERA ;

INSERT INTO product VALUES (null, @productCategoryIdForEntertain, '10', @productDescriptionIdForDAVE, 'US', '1.92', 'DAVEANDBST010', '8', null);
INSERT INTO product VALUES (null, @productCategoryIdForEntertain, '25', @productDescriptionIdForDAVE, 'US', '1.92', 'DAVEANDBST025', '9', '6');
INSERT INTO product VALUES (null, @productCategoryIdForEntertain, '50', @productDescriptionIdForDAVE, 'US', '1.92', 'DAVEANDBST050', '10', '9');
INSERT INTO product VALUES (null, @productCategoryIdForEntertain, '100', @productDescriptionIdForDAVE, 'US', '1.92', 'DAVEANDBST100', '11', null);

INSERT INTO product VALUES (null, @productCategoryIdForEat, '10', @productDescriptionIdForDAVE, 'US', '1.92', 'DAVEANDBST010', '25', null);
INSERT INTO product VALUES (null, @productCategoryIdForEat, '25', @productDescriptionIdForDAVE, 'US', '1.92', 'DAVEANDBST025', '26', '6');
INSERT INTO product VALUES (null, @productCategoryIdForEat, '50', @productDescriptionIdForDAVE, 'US', '1.92', 'DAVEANDBST050', '27', '9');
INSERT INTO product VALUES (null, @productCategoryIdForEat, '100', @productDescriptionIdForDAVE, 'US', '1.92', 'DAVEANDBST100', '28', null);

/* *********************************** Wear  *********************************** */

/* macy is not displaying in integration but i have tested it in local  it is displaying in local but any way i am writing insert queries for this also */
select @productCategoryIdForWear:=(select product_category_id from product_category where name = "Wear");
select @productDescriptionIdForMacy:=(select product_description_id from product_description where name = "Macy's");
INSERT INTO product VALUES (null, @productCategoryIdForWear, '10', @productDescriptionIdForMacy, 'US', '1.92', 'MACYS010', '11', '19');
INSERT INTO product VALUES (null, @productCategoryIdForWear, '25', @productDescriptionIdForMacy, 'US', '1.92', 'MACYS025', '12', null);
INSERT INTO product VALUES (null, @productCategoryIdForWear, '50', @productDescriptionIdForMacy, 'US', '1.92', 'MACYS050', '13', '28');


/* *********************************** updating $10 category after deleting JcPenny and TJMax  *********************************** */
UPDATE product SET order_price = '9' WHERE sku_name = 'LANDSEND010' and price = '10';

/*APPLEBEES010*/
UPDATE product SET order_price = '10' WHERE sku_name = 'APPLEBEES010' and price = '10';

/*DARDEN010*/
UPDATE product SET order_price = '11' WHERE sku_name = 'DARDEN010' and price = '10';

/*AMCTHEATRES010*/
UPDATE product SET order_price = '12' WHERE sku_name = 'AMCTHEATRES010' and price = '10';

/*DUNKIN010*/
UPDATE product SET order_price = '13' WHERE sku_name = 'DUNKIN010' and price = '10';

/*2nd carousel*/

/*walmart*/
UPDATE product SET order_price = '14' WHERE sku_name = 'WALMART010' and price = '10';

/*outback */
UPDATE product SET order_price = '15' WHERE  sku_name = 'OUTBACK010' and price = '10' ;
/*papajohn */
UPDATE product SET order_price = '16'  WHERE sku_name = 'PAPAJOHNS010' LIMIT 1 ;
/*panera */
UPDATE product SET order_price = '17' WHERE sku_name ='PANERABREA010' and price = '10'; 
/*UNO */
UPDATE product SET order_price = '18' WHERE sku_name ='UNO010' and price = '10'; 
/*Macy */
UPDATE product SET order_price = '19' WHERE sku_name ='MACYS010' and price = '10'; 

/* macys is missing in $100 category  instead Lands_End is displaying*/
delete from product where sku_name='LANDSEND100';
UPDATE product SET order_price = '6' WHERE sku_name ='MACYS100' and price = '100';

/* ************************************** For Macy cards*************************************************************** */
select @productCategoryIdForWear:=(select product_category_id from product_category where name = "Wear");
select @productDescriptionIdForMacy:=(select product_description_id from product_description where name = "Macy's");

delete from product  WHERE sku_name='MACYS010' and product_description_id= @productDescriptionIdForMacy and product_category_id = @productCategoryIdForWear;
delete from product  WHERE sku_name='MACYS025' and product_description_id= @productDescriptionIdForMacy and product_category_id = @productCategoryIdForWear;
delete from product  WHERE sku_name='MACYS050' and product_description_id= @productDescriptionIdForMacy and product_category_id = @productCategoryIdForWear;

INSERT INTO product VALUES (null, @productCategoryIdForWear, '10', @productDescriptionIdForMacy, 'US', '1.92', 'MACYS010', '11', '19');
INSERT INTO product VALUES (null, @productCategoryIdForWear, '25', @productDescriptionIdForMacy, 'US', '1.92', 'MACYS025', '12', null);
INSERT INTO product VALUES (null, @productCategoryIdForWear, '50', @productDescriptionIdForMacy, 'US', '1.92', 'MACYS050', '13', '28');

/*  ***************update the image path for the Macy's gift card in product description table  ******************************** */
select @productDescriptionIdForMacy:=(select product_description_id from product_description where name = "Macy's");
update product_description set image_url='giftCards/macys.png' where product_description_id= @productDescriptionIdForMacy;

/* **************************** delete  East Side Mario's which is not in the excel sheet  ********************************* */
select @productDescriptionIdForESM:=(select product_description_id from product_description where name = "East Side Mario's");
delete from product where product_description_id = @productDescriptionIdForESM;

/* ************************************correcting spelling mistake of the FiftyP in old navy disclaimar description ************************************ */
select @productDescriptionIdForOldNavy:=(select product_description_id from product_description where name = "Old Navy");
update product_description set disclamer_desc='<p>Please direct any inquiries or concerns regarding your order to FiftyP.com. Questions regarding Old Navy Gift Certificates should be directed to 1-800-OLD-NAVY. Old Navy Gift Certificates are redeemable for merchandise only. Unfortunately, oldnavy.com does not accept Gift Certificates as payment at this time.</p>Old Navy is not affiliated with FiftyP and is not a sponsor or co-sponsor with this promotion.' where product_description_id= @productDescriptionIdForOldNavy;


/* #568 */
CREATE TABLE card_details (
card_details_id INT( 10 ) NOT NULL AUTO_INCREMENT ,
invitation_code VARCHAR( 50 ) NOT NULL ,
submission_time DATETIME NOT NULL ,
status VARCHAR( 50 ) NOT NULL ,
PRIMARY KEY ( card_details_id )
);

/* #707 */
/* delete cineplex of price 10 as mentioned in the entertainment.  Remove entries from child_request and child_spend as well since there foreign keys to the product table. */
delete from child_request where child_request_id in (select child_spend_id from child_spend where store_product_id in (select product_id from product where sku_name=25 and country_code='CA'));
delete from child_spend where store_product_id in (select product_id from product where sku_name=25 and country_code='CA');
delete from product where sku_name=25 and country_code='CA';

/*  for cineplex under Eat category */
select @productCategoryId:=(select product_category_id from product_category where name = "Eat");
UPDATE product SET `order_category` = '11' WHERE product_category_id = @productCategoryId and sku_name = 208;

UPDATE product SET `order_category` = '12' WHERE product_category_id = @productCategoryId and sku_name = 171;

/*  for $10 category **/
UPDATE product SET `order_price` = '2' WHERE sku_name = 282;
UPDATE product SET `order_price` = '3' WHERE sku_name = 99;
UPDATE product SET `order_price` = '4' WHERE sku_name = 69;
UPDATE product SET `order_price` = '5' WHERE sku_name = 58;
UPDATE product SET `order_price` = '6' WHERE sku_name = 197;
/* for changes in the welcome mail */
UPDATE sys_template SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">\r\n<style type="text/css">\r\n<!--\r\n.verdana {\r\n	font-family: Verdana, Geneva, sans-serif;\r\n}\r\n-->\r\n</style>\r\n</head>\r\n<div>\r\n<body >\r\n<table  width="744" border="0">\r\n	<tr>\r\n		<td>\r\n			<table width="744" border="0" align="left" cellpadding="0" cellspacing="0" style="border:15px solid #7B2B83;border-bottom:0px;">\r\n			  <tr>\r\n			    <td width="635" style="border-bottom:0px solid #7B2B83">\r\n			      <table width="100%" border="0">\r\n			        <tr>\r\n			          <td width="50%"><img src="cid:logo_parent.gif" width="294" height="84"></td>\r\n			          <td width="50%" align="center" valign="top" style="padding:15px 10px 0px 0px;font-family:verdana;font-size:12px;" >\r\n			             <br /> Welcome to FiftyP!<br/>\r\n			              We''re glad you''re here!\r\n			          </td>\r\n			        </tr>\r\n			    </table></td>\r\n			  </tr>\r\n			  <tr >\r\n			    <td style="padding-left:15px;font-size:12px; font-family:verdana;">\r\n				    <p><b>Thanks for joining our growing community of families raising money-wise,   caring kids.</b> <br />\r\n				      To help you jumpstart your kids'' progress here''s what   other FiftyP parents recommend:</p>\r\n				      <p><img src="cid:welcome_email_logo.jpg" width="600" height="508"><br />\r\n				       
<br/>\r\nBecause FiftyP is also about sharing, your kids can start to make a difference   right away. <STRONG>We give away 50% of our profits </STRONG>to charity so   encourage your kids to rate our <A href="http://www.fiftyp.com/fiftyp.do?pageName=${causeMonth}" target="_blank">four featured causes</A> to help direct FiftyP''s monthly donation.<br/></p>\r\n				      <p>Let FiftyP begin working for your family today. To log in, go to <A href="http://www.fiftyp.com" target="_blank">http://www.fiftyp.com</A>. And, click <A href="http://www.fiftyp.com/swf/parentDemo/parentDemo.html" target="_blank">here</A> if you haven''t watched our Parent demo yet.<BR>\r\n				        <br/>\r\n				        Our best to your family and thanks again for joining,<BR>\r\n				      The FiftyP Team<br/><br />\r\n				        ************************************************************************************<BR>\r\n				        <b>A   Special Offer for FiftyP Members: </b>FiftyP has teamed up with Scholastic   for a great offer! Get 20% off your purchase at the <A href="http://store.scholastic.com/webapp/wcs/stores/servlet/HomeView?storeId=10052&catalogId=10051" target="_blank">Scholastic Store Online</A>. &nbsp;Use code FTP09 through ${scholasticDate} at   checkout on any purchase of $49 or more!<BR>\r\n				        <br>\r\n				    </p>\r\n				</td>\r\n			  </tr>\r\n			  <tr>\r\n			    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">\r\n					For more information please contact our support team at </font><a href=''mailto:support@fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>\r\n			    </td>\r\n			  </tr>\r\n			</table>\r\n	</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<div style="padding-left:15px;font-family:verdana;font-size:12px;">\r\n            <br />\r\n				<p>OPT OUT: You are receiving this message because you are a member of FiftyP.com. <BR>\r\n				  If you do not wish to receive these messages in the future,<BR>\r\n				  please send   us an email at <A href="mailto:support@fiftyp.com" target="_blank">support@fiftyp.com</A> with unsubscribe in the subject   line.<BR>\r\n				  <BR>\r\n				  You are currently listed in our mailing list as: <A href=mailto:${userName?split("@")[0]}@fiftyp.com target="_blank">${userName?split("@")[0]}@fiftyp.com</A><BR>\r\n				  <BR>\r\n				  FiftyP,   Inc.<BR>\r\n				  114 Washington Street<BR>\r\n				  South Norwalk, CT 06854<BR>\r\n				</p>\r\n			</div>\r\n	    </td>\r\n	</tr>\r\n</table>\r\n</body>' WHERE sys_template_id = 'WELCOME_CODE';

/* #695 */
ALTER TABLE child_profile ADD COLUMN show_pledge TINYINT(1) UNSIGNED NOT NULL DEFAULT 0;

/* for ticket#711*/

CREATE TABLE fiftyp_news (
news_id BIGINT NOT NULL AUTO_INCREMENT ,
description VARCHAR( 50 ) NOT NULL ,
news_content TEXT NULL DEFAULT NULL ,
posted_date DATETIME NOT NULL ,
PRIMARY KEY ( news_id )
) ENGINE = InnoDB;


 CREATE TABLE child_fiftyp_news_deleted (
entry_id BIGINT NOT NULL AUTO_INCREMENT ,
news_id BIGINT NOT NULL ,
child_id BIGINT NOT NULL ,
PRIMARY KEY ( entry_id )
) ENGINE = InnoDB; 

/* for ticket#726*/
ALTER TABLE news ADD profile_photoId BIGINT( 20 ) NOT NULL ;