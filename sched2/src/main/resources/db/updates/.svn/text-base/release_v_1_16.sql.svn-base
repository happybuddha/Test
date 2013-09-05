/*SQL update script for release v1.16 */

ALTER TABLE cause ADD COLUMN month INTEGER UNSIGNED NOT NULL DEFAULT 0 AFTER helpus_image_url;

/*
 * 1. cause id
 * 2. cause category
 * 3. ngo_profile_id
 * 4. name
 * 5. description
 * 6. icon_url
 * 7. photo1_url
 * 8. photo2_url
 * 9. rating_photo_url
 * 10. cause_rating_color
 * 11. video1_url
 * 12. cause_state_id
 * 13. pos_x
 * 14. pos_y
 * 15. confirmation_txt
 * 16. hos_summary_txt
 * 17. hos_full_txt
 * 18. location
 * 19. helpus_image_url
 * 20. month
 */
INSERT INTO cause VALUES (
	5,
	'ENVIRONMENT',
	NULL,
	'Save the Seals',
	'Have you ever seen seals hanging out at the beach? Seals spend part of their time on land, stretching out to rest or to warm up in the sun. They also climb out of the water to give birth, and sometimes leave their pups on land while searching for their next meal.',
	'share/wdcs_iconsseal.png',
	'',
	'',
	'',
	'56A5EC',
	NULL,
	'VOTE_INITIAL',
	345,
	533,
	'Thank you!',
	'',
	'',
	'Cape Cod, MA',
	'',
  2);

INSERT INTO cause VALUES (
	6,
	'ENVIRONMENT',
	NULL,
	'Greener Truck Stops',
	'The truckers who haul food and other goods across the country often spend days on the road - and nights in their big rigs. And they keep their engine running even when they''re asleep, to heat or air-condition the truck, to run kitchen appliances, and to keep refrigerated cargo cold. Idling engines burn up to a gallon of diesel fuel an hour, releasing harmful greenhouse gases without moving an inch!',
	'share/carbonfund_iconstruck.png',
	'',
	'',
	'',
	'4CC417',
	NULL,
	'VOTE_INITIAL',
	345,
	533,
	'Thank you!',
	'',
	'',
	'Nationwide US',
	'',
  2);

INSERT INTO cause VALUES (
	7,
	'ENVIRONMENT',
	NULL,
	'Name that Whale!',
	'Whales are among the biggest creatures on earth, but they''re in constant danger of getting hit by ships or caught in fishing nets. That''s why scientists like to give each whale a name. By identifying and keeping track of individual whales, they learn about their safety and health and whether they''re growing in number or dying out.   Many whales are named for their distinct natural markings. Each humpback, for example, has a tail pattern all its own (like a human fingerprint). The whale in the photo is named "Walrus" because of the walrus moustache in the center of its tail fluke. Blue whales have patterns of freckles; orcas have a saddle patch on their back. Whales are also named for the nicks or scratches they sometimes receive from natural predators like orcas, or from human entanglements (like ships and nets). To track the whales year after year, biologists take lots of photos of these big beauties. Your support keeps their important work going: $5.00 helps identify an already-named whale, $10.00 lets them get to know a new one.',
	'share/wdcs_iconswhale.png',
	'',
	'',
	'',
	'FD7303',
	NULL,
	'VOTE_INITIAL',
	345,
	533,
	'Thank you!',
	'',
	'',
	'The Gulf of Maine',
	'',
  2);

INSERT INTO cause VALUES (
	8,
	'ENVIRONMENT',
	NULL,
	'School Bus Project',
	'Did you know that each of us has a carbon footprint? Just by going about our daily lives we''re adding to the release of gases that contribute to global warming. Maybe you''re keeping your carbon footprint small by recycling or using energy-efficient light bulbs. But what can you do about those fumes from your big yellow school bus?  Each year your daily ride adds about a half-ton of greenhouse gases to the air! But even if you can''t walk or bike to school, you can still go green - by supporting projects that cancel out the effect of those bus fumes. We''re talking about projects that create clean energy, like wind and solar power, or plant new forests, which absorb harmful gases.  A $5.00 donation cancels out a year of riding the school bus - and keeps your carbon footprint from growing. So the next time you see that big yellow bus coming...think GREEN!',
	'share/carbonfund_iconsbus_icon.png',
	'',
	'',
	'',
	'9B30FF',
	NULL,
	'VOTE_INITIAL',
	345,
	533,
	'Thank you!',
	'',
	'',
	'North America',
	'',
  2);

update cause set month = 1 where cause_id in (1,2,3,4);
update cause set month = 2 where cause_id in (5,6,7,8);

/* #635 */
DROP TABLE IF EXISTS `withdrawal_request`;
CREATE TABLE `withdrawal_request` (
  `withdrawal_request_id` bigint(20) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`withdrawal_request_id`),
  CONSTRAINT `FK_child_request_withdrawal_request` FOREIGN KEY (`withdrawal_request_id`) REFERENCES `child_request` (`child_request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* help_us_url column on longer needed since we are using naming convention of images/share/causes/{cause id}_thumb_small.png instead */
alter table cause drop column helpus_image_url;

/* Ticket #660 for welcome email update query */
UPDATE sys_template SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">\r\n<html>\r\n<head>\r\n<title>FiftyP</title>\r\n<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">\r\n<style type="text/css">\r\n<!--\r\n.verdana {\r\n	font-family: Verdana, Geneva, sans-serif;\r\n}\r\n-->\r\n</style>\r\n</head>\r\n<div>\r\n<body >\r\n<table  width="744" border="0">\r\n	<tr>\r\n		<td>\r\n			<table width="744" border="0" align="left" cellpadding="0" cellspacing="0" style="border-left:15px solid #7B2B83;">\r\n			  <tr>\r\n			    <td width="635" style="border-bottom:0px solid #7B2B83">\r\n			      <table width="100%" border="0">\r\n			        <tr>\r\n			          <td width="50%"><img src="cid:logo_parent.gif" width="294" height="84"></td>\r\n			          <td width="50%" align="center" valign="top" style="padding:15px 10px 0px 0px;font-family:verdana;font-size:12px;" >\r\n			             <br /> Welcome to FiftyP!<br/>\r\n			              We''re glad you''re here!\r\n			          </td>\r\n			        </tr>\r\n			    </table></td>\r\n			  </tr>\r\n			  <tr >\r\n			    <td style="padding:0px 10px 0px 15px;font-size:12px; font-family:verdana;">\r\n				    <p><b>Thanks for joining our growing community of families raising money-wise,   caring kids.</b> <br />\r\n				      To help you jumpstart your kids'' progress here''s what   other FiftyP parents recommend:</p>\r\n				      <p><img src="cid:welcome_email_logo.jpg" width="600" height="508"><br />\r\n				        <br/>\r\n				      Because FiftyP is also about sharing, your kids can start to make a difference   right away. <STRONG>We give away 50% of our profits </STRONG>to charity so   encourage your kids to rate our <A href="http://www.fiftyp.com/fiftyp.do?pageName=causes" target="_blank">four featured causes</A> to help direct FiftyP''s monthly donation.</p>\r\n				      <p>Let FiftyP begin working for your family today. To log in, go to <A href="http://www.fiftyp.com" target="_blank">http://www.fiftyp.com</A>. And, click <A href="http://www.fiftyp.com/swf/parentDemo/parentDemo.html" target="_blank">here</A> if you haven''t watched our Parent demo yet.<BR>\r\n				        <br/>\r\n				        Our best to your family and thanks again for joining,<BR>\r\n				      The FiftyP Team<br/><br />\r\n				        ************************************************************************************<BR>\r\n				        <b>A   Special Offer for FiftyP Members: </b>FiftyP has teamed up with Scholastic   for a great offer! Get 20% off your purchase at the <A href="http://store.scholastic.com/webapp/wcs/stores/servlet/HomeView?storeId=10052&catalogId=10051" target="_blank">Scholastic Store Online</A>. &nbsp;Use code FTP09 through 3/9/09 at   checkout on any purchase of $49 or more!<BR>\r\n				        <br>\r\n				    </p>\r\n				</td>\r\n			  </tr>\r\n			  <tr>\r\n			    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">\r\n					For more information please contact our support team at </font><a href=''mailto:support@fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>\r\n			    </td>\r\n			  </tr>\r\n			</table>\r\n	</td>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n			<div style="padding-left:15px;font-family:verdana;font-size:12px;">\r\n            <br />\r\n				<p>OPT OUT: You are receiving this message because you are a member of FiftyP.com. <BR>\r\n				  If you do not wish to receive these messages in the future,<BR>\r\n				  please send   us an email at <A href="mailto:support@fiftyp.com" target="_blank">support@fiftyp.com</A> with unsubscribe in the subject   line.<BR>\r\n				  <BR>\r\n				  You are currently listed in our mailing list as: <A href=mailto:${userName?split("@")[0]}@fiftyp.com target="_blank">${userName?split("@")[0]}@fiftyp.com</A><BR>\r\n				  <BR>\r\n				  FiftyP,   Inc.<BR>\r\n				  114 Washington Street<BR>\r\n				  South Norwalk, CT 06854<BR>\r\n				</p>\r\n			</div>\r\n	    </td>\r\n	</tr>\r\n</table>\r\n</body>' WHERE sys_template_id = 'WELCOME_CODE' ;
