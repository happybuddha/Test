/*SQL update script for release v1.22 */
/*select @causeId:=(select cause_id from cause where name = "Soccer for Good");*/
UPDATE cause SET hos_full_txt = 'Scores One^for African Kids! African kids are crazy about soccerCM
 using anything that can be kicked for the sake of playing the game.
 So soccer is a natural starting point for a program that@ wants to make the world
 a better place for kids. The program is now operating in six African
 countriesCM where kids from disadvantaged communities come together to learn and
 play soccer - and much more.
 Each week they also learn about good nutritionCM sanitationCM and staying healthy.
 They take part in activities that teach them leadershipCM teamworkCM and respect for others.
 And they benefit from services such as mobile libraries and community gardens. <br><br>
 Programs like these depend on the help of people around the world - people like ChildName of
 FiftyPCM whose donation of dollaramount is making a difference for African kids. '
WHERE cause_id = 9;
UPDATE cause SET column1_fiftyp_times =  'FiftyP is making a difference! This month it will donate $amtValue1 to support programs
 that protect endangered animals and brighten the lives of children in need. FiftyP\\''s contribution will return endangered
 red wolves to the wild and help biologists study the amazing songs of male humpback whales.  The money will also provide
 a lifesaving food to severely undernourished babiesCM and will bring soccerCM educationCM and important community services
 to African children and their families.'
WHERE cause_id = 9;

/*select @causeId:=(select cause_id from cause where name = "Whale Songs");*/
UPDATE cause SET hos_full_txt = 'Captures^Whale Songs! Male humpback whales are known for their
 beautifulCM haunting songsCM some of the longest in the animal kingdom.
 Members of the same group all sing the same @ songCM but a whale will switch to
 a new song if it joins a different group.<br><br>
 Scientists want to learn more about the music of this endangered species:
 how humpbacks use songs to communicateCM for exampleCM and when and where they sing.
 Their songs may reveal where they migrate in the fall - which could lead to ways
 to protect them from danger.<br><br>   Thanks to ChildName of FiftyPCM the humpback
 melodies will continue to be heard. ChildName donated dollaramount from
 gender Share account to support the work of researchers who record and analyze these surprising songs.'
WHERE cause_id = 10;
UPDATE cause SET column1_fiftyp_times =  'FiftyP is making a difference! This month it will donate $amtValue1 to support programs
 that protect endangered animals and brighten the lives of children in need. FiftyP\\''s contribution will return endangered
 red wolves to the wild and help biologists study the amazing songs of male humpback whales.  The money will also provide
 a lifesaving food to severely undernourished babiesCM and will bring soccerCM educationCM and important community services
 to African children and their families.'
WHERE cause_id = 10;

/*select @causeId:=(select cause_id from cause where name = "Red Wolf Pups");*/
UPDATE cause SET hos_full_txt = 'Helps^Red Wolves Go Wild! 
Red wolves were once extinct in the wildCM but they\\''re making a comeback with help 
 from ChildName of FiftyP. ChildName donated dollaramount from gender Share account to
 @ support a program that plans to breed red wolves in captivity and release their pups into the wild.
 The wolf pups will be placed in a den of wild wolves that will raise them as their own.
 <br><br>As large predatorsCM wolves help keep the ecosystem in balance. 
 The loss of red wolves throughout the South allowed the deer population to growCM 
 which in turn caused serious damage to plantsCM treesCM and streams.   
 <br><br/>Restoring these rare red wolves to their native habitat can take 20 years or more. 
 ThanksCM ChildNameCM for your help in making it happen!'
WHERE cause_id = 11;
UPDATE cause SET column1_fiftyp_times =  'FiftyP is making a difference! This month it will donate $amtValue1 to support programs
 that protect endangered animals and brighten the lives of children in need. FiftyP\\''s contribution will return endangered
 red wolves to the wild and help biologists study the amazing songs of male humpback whales.  The money will also provide
 a lifesaving food to severely undernourished babiesCM and will bring soccerCM educationCM and important community services
 to African children and their families.'
WHERE cause_id = 11;

/*select @causeId:=(select cause_id from cause where name = "Plumpy''nut");*/
UPDATE cause SET hos_full_txt = 'Provides^Hope to Hungry Children!
 In many parts of the worldCM countries affected by droughtCM floods and conflict face
 a severe shortage of food.
 Children under age two are the hardest hit by @ poor nutrition:
 They lose weightCM become weakCM and are more likely to get sick.
 <br><br>Babies suffering from severe malnutrition need special foods to help
 them quickly gain weight and build strength.
 Plumpy\\''nut is a high-energyCM ready-to-eat mixture in a squeezable foil pouch.
 It tastes like peanut butter and is packed with the calories and protein that babies need
 to regain their strength.<br><br>Thanks to ChildName of FiftyP and his donation
 of dollaramountCM children affected by hunger will get the nutrition support they need.'
WHERE cause_id = 12;
UPDATE cause SET column1_fiftyp_times =  'FiftyP is making a difference! This month it will donate $amtValue1 to support programs
 that protect endangered animals and brighten the lives of children in need. FiftyP\\''s contribution will return endangered
 red wolves to the wild and help biologists study the amazing songs of male humpback whales.  The money will also provide
 a lifesaving food to severely undernourished babiesCM and will bring soccerCM educationCM and important community services
 to African children and their families.'
WHERE cause_id = 12;

/* #849 */
ALTER TABLE `child_share` ADD COLUMN `fiftyp_donation_amount` DOUBLE NOT NULL AFTER `cause_name`;

/*change for 852*/
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email for confirming shipping");
UPDATE sys_template
SET design ='<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>                                    Shipping confirmation of gift card                               </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">                <p>${currentDate?string("MMMM d, yyyy")}</p>          <p></p>              <p>Dear ${userName},</p>       <p>Thank you for ordering a gift card from FiftyP. We''re pleased to let you know that your order has been shipped. You can expect delivery by first-class mail within 7 to 10 business days.</p>        <p>For your convenience we''re providing the details of your order, including your order number. We recommend that you retain this email for future reference                             <p>                                Purchase date: ${purchaseDate?string("MMMM d, yyyy")}                         <br>      Order #: ${orderNumber}</p>      <p>Item: ${itemName} <br>    Value: $${itemPrice} <br>            Shipping, Handling &amp; Merchant Charge: $${shippingCharges} <br>           Total: $${total}<br>         Payment Method : ${ccType},  card #${ccDisplayNumber}</p>            <p> Shipping Address: <br>        ${userName} ${lastName} <br>${shippingAddress?if_exists} <br>        ${shippingAddress1?if_exists} <br>  ${shippingAddress2?if_exists}, ${zip?if_exists}<br>     </p>      <p>For information about your child''s gift card purchase, please go to www.fiftyp.com/faq.  Still have questions? Email us at www.fiftyp.com/support</a>.</p>       <p>Thanks for being part of the FiftyP community! </p>                        With best wishes,<br>                                                The FiftyP Team<br>                                                <a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>                    </td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br></td> </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;

/*change for #83 */
select @causeId:=(select cause_id from cause where name = "School Bus Project");
UPDATE cause SET photo1_url = 'share/42.HoS_8.png'
WHERE cause_id = @causeId  ;
select @causeId:=(select cause_id from cause where name = "Name that Whale!");
UPDATE cause SET photo1_url = 'share/42.HoS_7.png '
WHERE cause_id = @causeId  ;

/* #799 */
ALTER TABLE `investment` ADD COLUMN `short_term` TINYINT(4) UNSIGNED NOT NULL DEFAULT 0 AFTER `color`,
 ADD COLUMN `long_term` TINYINT(4) UNSIGNED NOT NULL AFTER `short_term`,
 ADD COLUMN `points` INTEGER UNSIGNED NOT NULL DEFAULT 0 AFTER `long_term`;

ALTER TABLE `investment` DROP FOREIGN KEY `FK_investment_investment_category`;
ALTER TABLE `investment` DROP INDEX `FK_investment_investment_category`;
ALTER TABLE `investment` DROP COLUMN `investment_category_id`;
ALTER TABLE `investment_category` MODIFY COLUMN `id` VARCHAR(50) NOT NULL;

ALTER TABLE `investment` ADD COLUMN `investment_category_id` VARCHAR(50) NULL AFTER `description`,
    ADD CONSTRAINT `FK_investment_investment_category` FOREIGN KEY `FK_investment_investment_category` (`investment_category_id`)
      REFERENCES `investment_category` (`id`)
      ON DELETE RESTRICT
      ON UPDATE RESTRICT;

update investment_category set id = 'Parent_Bond' where name = 'Parent Bond';
update investment_category set id = 'CD' where name = 'CD';
update investment_category set id = 'Double_Up' where name = 'Double Up';
update investment_category set id = 'HI_Yield' where name = 'High Yield';
insert into investment_category values ('Piggy_Bank', 'Piggy Bank', 2);

update investment set investment_category_id = 'Parent_Bond' where investment_id like 'Parent_Bond%';
update investment set investment_category_id = 'CD' where investment_id like 'CD%';
update investment set investment_category_id = 'HI_Yield' where investment_id like 'Hi_Yield%';

/*   This sql contains well tested  subject and body  of all emails temaplet as per the attached documnet.
 its also inlcude nclude  ORDER_CONFIRMATION_SHARE_TRANSACTION(For Canada and USA)   */
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email for adding new child for one or three year member ship");
UPDATE sys_template 
SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			New account member		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">	<p>Dear ${parentName},</p>	<p>	  Thank you for adding another child to your FiftyP account. Our FiftyP community grows stronger with each new member.    	<p>This new ${membershipType} membership has been activated as of ${activationDate?string("MMMM d, yyyy")}. Have your child jump in and get started.</p>	<p>Questions? Please email us at <a href="mailto:support@fiftyp.com">support@fiftyp.com </a>.	Thanks for putting your child on the right path! </p>	With best wishes,<br>	Team FiftyP<br>	<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>	</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;
 
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email for adding new child for one or three year member ship");
UPDATE sys_template 
SET subject = 'New account member' 
WHERE sys_template_id = @systemTemplateId  ;
 
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email for adding new child for free member ship");
UPDATE sys_template 
SET subject = 'Child added to free account'
WHERE sys_template_id = @systemTemplateId  ;
 
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email for adding new child for free member ship");
UPDATE sys_template 
SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			Child added to free account		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">	<p>Dear FiftyP parent,</p>	<p>	  Thank you for adding another child to your FiftyP account. You have activated a free membership as of ${activationDate?string("MMMM d, yyyy")}.    	<p>This free membership introduces your child to basic money management skills and charitable causes, and makes it easy for you to keep track of allowance and extra earnings.</p>	<p>If you''d like ${personalPronoun} to get even more out of FiftyP, consider switching to a one-year or three-year membership plan. Both give kids hands-on experience with saving, spending, and sharing- the best way to learn.</p>	<p>You can upgrade your child''s membership at any time: Log in at www.fiftyp.com and click the <strong>Membership </strong>button.</p>	<p>Questions? Please email us at <a href="mailto:support@fiftyp.com">support@fiftyp.com </a>. </p>	 <p>With best wishes,<br>	  Team FiftyP<br>	  <a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>	  </p>	</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;
 
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for account cancellation notification");
UPDATE sys_template
SET subject = 'Family account cancellation'
WHERE sys_template_id = @systemTemplateId  ;
 
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for account cancellation notification");
UPDATE sys_template 
SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			Family account cancellation		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">	Dear ${parentEmail},<br/><br/>  We received your request to cancel your family''s FiftyP account as of ${cancellationDate?string("MMMM d, yyyy")}. We''re sorry to see you go! 	<br/><br/>	Beginning today you will no longer be able to log in to FiftyP or to access your account information. Please note that because half our profits are donated to charitable causes there can be no refunds.<br/><br/> Should you wish to reinstate your membership, please contact us by ${reinstateDate?string("MMMM d, yyyy")} at <a href=''http://www.fiftyp.com''>support@fiftyp.com.</a> After that date your account information will be permanently deleted. <br/><br/>	Please know that you are welcome to rejoin FiftyP at any time.	<br/><br/>	With best wishes,<br>			The FiftyP Team<br>			<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>	  </p>	</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;
 
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template of child's request sent to parent");
UPDATE sys_template 
SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			${request}		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">	<p>Dear ${parentName},</p>	<p>		<b>A request is awaiting your approval at FiftyP.com!</b>		<br/> 		<b>${childName}</b> ${childRequest} For details, log in to <a href=''http://www.fiftyp.com''>www.fiftyp.com</a> and check your message center.</p>With best wishes,<br>Team FiftyP<br><a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>			</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;
 
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for Allowance notification");
UPDATE sys_template 
SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			 Reminder: ${childNames} gets allowance tomorrow		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">	Dear ${parentName},<br/><br/>  This is to let you know that allowance will be posted tomorrow along with other earnings or gifts that may be scheduled. <b>Your credit card will not be charged</b>.  	<br/><br/>Thanks for being part of our community, where we help kids develop a healthy relationship with money.<br/><br/> Please let us know if you have any questions or suggestions. We are always looking to improve FiftyP.<br/><br/> With best wishes,<br>			The FiftyP Team<br>			<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>	  </p>	</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;

select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for Allowance notification");
UPDATE sys_template
SET subject = 'Reminder: %s gets allowance tomorrow'
WHERE sys_template_id = @systemTemplateId  ;

select @systemTemplateId:=(select sys_template_id from sys_template where description = "Charging email for gift card confirmation");
UPDATE sys_template 
SET subject = 'Gift card order' 
WHERE sys_template_id = @systemTemplateId  ;

select @systemTemplateId:=(select sys_template_id from sys_template where description = "Charging email for gift card confirmation");
UPDATE sys_template 
SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr><td style="border-bottom:1px solid #7B2B83"> <table width="100%" border="0"> <tr> <td><img src="cid:logo_parent.gif" width="294" height="84"></td>  <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"> <font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"> <b>Gift Card order</b></font></td> </tr> </table></td>  </tr>  <tr>  <td style="padding:20px;font-size:12px; font-family:verdana;"> <p>${purchaseDate?string("MMMM d, yyyy")}</p> <p>Dear ${parentName},</p> <p>We''re writing to confirm your recent gift card purchase. Your payment has been processed. You can expect delivery by first-class mail within 7 to 10 business days. </p>	 <p>Here are the details: <p>Purchase date: ${purchaseDate?string("MMMM d, yyyy")} <br>  Confirmation #: ${orderNumber}</p> <p>Item: ${giftName} gift card  <br> Value: $${giftPrice}  <br> Shipping, Handling &amp; Merchant Charge: ${shippingCost}  <br>Total: $${total} <br> Payment Method : ${paymentMethod},  card #${ccDisplayNumber}</p> <p> Shipping Address:  <br>${buyerName}  <br>${streetName}<br>${cityName} <br>${state} <br>${country} <br> </p>	 <p>For questions about your child''s gift card purchase, or to learn more about our retail partners, go to www.fiftyp.com/faq?q=gift%20card . Still have questions? Email us at www.fiftyp.com/support . </p>	 	  With best wishes,<br>			Team FiftyP<br>			<a href=''''http://www.fiftyp.com''''>www.fiftyp.com</a><br>	  	</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''''http://www.fiftyp.com''''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;

select @systemTemplateId:=(select sys_template_id from sys_template where description = "Charging email for membership card purchase");
UPDATE sys_template
SET subject = 'Membership Card order'
WHERE sys_template_id = @systemTemplateId  ;

select @systemTemplateId:=(select sys_template_id from sys_template where description = "Charging email for membership card purchase");
UPDATE sys_template 
SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			Membership Card order		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">	<p>Dear ${parentName},</p>	<p>	  Thank you for your recent purchase of FiftyP Membership Cards. Your payment has been processed. You can expect delivery by first-class mail within 7 business days.    	<p>Here are the details:</p>	<p>Purchase date: ${purchaseDate?string("MMMM d, yyyy")} <br>	Order #: ${orderNumber}</p>	Quantity: ${quantity} Membership Cards <br>	Unit Price: $${unitPrice} per card <br>	Subtotal: $${subtotal} <br>	Shipping &amp; handling: $${shippingHandling} <br>	Total: $${total} <br>	Payment method: ${paymentMethod}, card #${ccDisplayNumber}	<p>Shipping Address: <br>	  ${buyerName} <br>	  ${streetName} <br>	  ${cityName}</p>	<p>Thank you for introducing FiftyP to your family, friends, and colleagues. We appreciate your support. </p>	  <p>			With best wishes,<br>			Team FiftyP<br>			<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>	  </p>	</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;

select @systemTemplateId:=(select sys_template_id from sys_template where description = "Goal setting email");
UPDATE sys_template 
SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83"><tr><td style="border-bottom:1px solid #7B2B83"><table width="100%" border="0"> <tr> <td><img src="cid:logo_parent.gif" width="294" height="84"></td> <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>	Goal setting </b></font></td> </tr> </table></td> </tr> <tr> <td style="padding:20px;font-size:12px; font-family:verdana;">	Dear FiftyP parent,<br/><br/> We thought you''d like to know that ${kidName} is using FiftyP''s Goal Setting feature to help ${objectPronouns} save for something special. <br/><br/>${kidName}''s goal: ${goalSettingItem}	<br/><br/>  ${kidName}''s estimate of its cost: ${goalSettingAmount}    <br/><br/>	Days until ${possesivePronoun} goal is reached: ${days} days<br/><br/> <b>${kidName} currently has ${totalSpendAmount} in ${possesivePronoun} Spend account</b>. Goal Setting is a great feature that reinforces values like delayed gratification and thoughtful spending.	<br/><br/>  We wish ${kidName} good luck!	<br/><br/> With best wishes,<br>			The FiftyP Team<br>			<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>	  </p>	</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br> </td> </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;

select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email for confirming shipping");
UPDATE sys_template 
SET design ='<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">  <tr>  <td><img src="cid:logo_parent.gif" width="294" height="84"></td>   <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"> <font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"> <b>Gift Card shipped </b></font></td> </tr>    </table></td>  </tr>   <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">	 <p>${currentDate?string("MMMM d, yyyy")}</p>	 <p></p>	<p>Dear ${userName},</p>	 <p>Thank you for ordering a gift card from FiftyP. We''re pleased to let you know that your order has been shipped. You can expect delivery by first-class mail within 7 to 10 business days.</p> <p>Here are the details of your order, including your Order Number. We recommend that you retain this email for future reference.	 <p>		Purchase date: ${purchaseDate?string("MMMM d, yyyy")}	 <br>      Order #: ${orderNumber}</p>	  <p>Item: ${itemName} gift card <br>	  Value: $${itemPrice}  <br>	  Shipping, Handling &amp; Merchant Charge: ${shippingCharges}  <br>	  Total: $${total}<br>	  Payment Method : ${paymentMethod},  card #${ccDisplayNumber}</p>	 <p> Shipping Address: <br>        ${userName} <br>   ${shippingAddress} <br>        ${shippingAddress1} <br>   ${shippingAddress2}, ${zip}<br>     </p>  <p>Thanks for being part of the FiftyP community! </p>	  With best wishes,<br>	 Team FiftyP<br>	 <a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>	 </td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px">  <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff"> For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;
 
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email for confirming shipping");
UPDATE sys_template 
SET subject = 'Gift Card shipped'
WHERE sys_template_id = @systemTemplateId  ;
  
/*  For this sql script  images are  displaying even thgough i am using <img src="cid:${ngoURL}"> */

select @systemTemplateId:=(select sys_template_id from sys_template where description = "Charging email for share confirmation");
UPDATE sys_template 
SET design ='<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>  <td align="right" style="padding:0px 0px 0px 50px" nowrap="nowrap"> <img   src="cid:${ngoURL}" /> </td></tr>                                                <tr><td></td>          <td align="right" style="padding:0px 0px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>Charitable donation</b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;"> <p>${transactionDate?string("MMMM d, yyyy")}</p> <p>Dear ${parentName},</p><p>Thank you for your contribution to ${organization} in support of ${donationCause}. Your family can be proud of supporting this organization and its important work.<p>Your donation of $${donationAmount}  has been processed. Here are the details:<br><br/>Date of Transaction: ${transactionDate?string("MMMM d, yyyy")}<br>Transaction #: ${transactionId}<br>Payment method: ${paymentMethod}, card #${ccDisplayNumber} </p><p>This letter confirms that no goods or services were provided to you in exchange, in whole or in part, for this charitable contribution. This contribution is fully deductible to the extent allowed by law.<p>We appreciate your commitment to making a difference! </p>   With best wishes,<br> Team FiftyP<br><a href=''''http://www.fiftyp.com''''>www.fiftyp.com</a><br>      </td>  </tr>  <tr><td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href="mailto:support@fiftyp.com"><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;

select @systemTemplateId:=(select sys_template_id from sys_template where description = "Charging email for share confirmation");
UPDATE sys_template 
SET subject = 'Charitable donation'
WHERE sys_template_id = @systemTemplateId  ;

select @systemTemplateId:=(select sys_template_id from sys_template where description = "Charging email for share confirmation for parents from Canada");
UPDATE sys_template 
SET design ='<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83"><tr><td style="border-bottom:1px solid #7B2B83">  <table width="100%" border="0"> <tr><td><img src="cid:logo_parent.gif" width="294" height="84"></td> <td align="right" style="padding:0px 0px 0px 50px" nowrap="nowrap"> <img   src="cid:${ngoURL}" /> </td></tr> <tr><td></td> <td align="right" style="padding:0px 0px 0px 0px" nowrap="nowrap"> <font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"> <b>Charitable donation  </b></font></td>  </tr>    </table></td>  </tr>   <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;"> <p>${transactionDate?string("MMMM d, yyyy")}</p> <p>Dear ${parentName},</p> <p>Thank you for your contribution to ${organization} in support of ${donationCause}. Your family can be proud of supporting this organization and its important work.  <p>Your donation of $${donationAmount}  has been processed. Here are the details:<br> <br/>Date of Transaction: ${transactionDate?string("MMMM d, yyyy")} <br>      Transaction #: ${transactionId} <br>       Payment method: ${paymentMethod}, 	 card #${ccDisplayNumber} </p> <p>This letter confirms that no goods or services were provided to you in exchange, in whole or in part, for this charitable contribution.  Your contribution may be tax deductible; please contact a professional tax advisor for tax-related questions.</p>   <p>We appreciate your commitment to making a difference! </p> With best wishes,<br>      Team FiftyP<br> <a href=''''http://www.fiftyp.com''''>www.fiftyp.com</a><br>  </td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href="mailto:support@fiftyp.com">	<font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;

select @systemTemplateId:=(select sys_template_id from sys_template where description = "Charging email for share confirmation for parents from Canada");
UPDATE sys_template 
SET subject = 'Charitable donation'
WHERE sys_template_id = @systemTemplateId  ;
 
select @ngoProfileId:=(select ngo_profile_id from ngo_profile where ngo_name = "Carbon Fund");
UPDATE ngo_profile 
SET logo_url = 'carbon_fund_logo.jpg' 
WHERE ngo_profile_id = @ngoProfileId  ;
 
select @ngoProfileId:=(select ngo_profile_id from ngo_profile where ngo_name = "WDCS"); 
UPDATE ngo_profile 
SET logo_url = 'WDCS_logo.jpg' 
WHERE ngo_profile_id = @ngoProfileId  ;

select @ngoProfileId:=(select ngo_profile_id from ngo_profile where ngo_name = "Play Soccer Nonprofit International"); 
UPDATE ngo_profile 
SET logo_url = 'play_soccer_logo.jpg ' 
WHERE ngo_profile_id = @ngoProfileId  ;

select @ngoProfileId:=(select ngo_profile_id from ngo_profile where ngo_name = "Wolf Conservation Center"); 
UPDATE ngo_profile 
SET logo_url = 'wolf_logo.jpg' 
WHERE ngo_profile_id = @ngoProfileId  ;

select @ngoProfileId:=(select ngo_profile_id from ngo_profile where ngo_name = "Save the Children"); 
UPDATE ngo_profile 
SET logo_url = 'save_the_children.jpg' 
WHERE ngo_profile_id = @ngoProfileId  ;

/* #799: Save Overhaul */

ALTER TABLE `investment` ADD COLUMN `active` TINYINT(4) UNSIGNED NOT NULL DEFAULT 0 AFTER `points`;

/* Parent Bonds */
insert into investment values ('Parent_Bond_1', '$2 Parent Bond', '', 'Parent_Bond', 1014, 4, 0, 2, 0.5, 1.80, 1.80, '', 1, 1, '', 1, 0, 2, 1);
insert into investment values ('Parent_Bond_2', '$3 Parent Bond', '', 'Parent_Bond', 802, 7, 0, 3, 0.5, 2.60, 2.60, '', 1, 2, '', 1, 0, 2, 1);
insert into investment values ('Parent_Bond_3', '$10 Parent Bond', '', 'Parent_Bond', 290, 14, 0, 10, 0.5, 9, 9, '', 1, 3, '', 1, 0, 2, 1);
insert into investment values ('Parent_Bond_4', '$25 Parent Bond', '', 'Parent_Bond', 172, 21, 0, 25, 0.5, 22.75, 22.75, '', 1, 4, '', 1, 0, 2, 1);
insert into investment values ('Parent_Bond_5', '$50 Parent Bond', '', 'Parent_Bond', 106, 30, 0, 50, 0.5, 46, 46, '', 1, 5, '', 0, 1, 2, 1);
insert into investment values ('Parent_Bond_6', '$75 Parent Bond', '', 'Parent_Bond', 90, 45, 0, 75, 0.5, 65.50, 67.50, '', 1, 6, '', 0, 1, 2, 1);
insert into investment values ('Parent_Bond_7', '$100 Parent Bond', '', 'Parent_Bond', 87, 60, 0, 100, 0.5, 87.50, 87.50, '', 1, 7, '', 0, 1, 2, 1);
insert into investment values ('Parent_Bond_8', '$200 Parent Bond', '', 'Parent_Bond', 45, 90, 0, 200, 0.5, 180, 180, '', 1, 8, '', 0, 1, 2, 1);

/* CDs */
insert into investment values ('CD_1', '$3 CD', '', 'CD', 1043, 7, 0, 3, 0.5, 2.50, 2.50, '', 1, 1, '', 1, 0, 2, 1);
insert into investment values ('CD_2', '$6 CD', '', 'CD', 521, 14, 0, 6, 0.5, 5, 5, '', 1, 2, '', 1, 0, 2, 1);
insert into investment values ('CD_3', '$9 CD', '', 'CD', 348, 21, 0, 9, 0.5, 7.50, 7.50, '', 1, 3, '', 1, 0, 2, 1);
insert into investment values ('CD_4', '$12.50 CD', '', 'CD', 304, 30, 0, 12.50, 0.5, 10, 10, '', 1, 4, '', 0, 1, 2, 1);
insert into investment values ('CD_5', '$20 CD', '', 'CD', 261, 60, 0, 20, 0.5, 14, 14, '', 1, 4, '', 0, 1, 2, 1);
insert into investment values ('CD_6', '$35 CD', '', 'CD', 162, 90, 0, 35, 0.5, 25, 25, '', 1, 5, '', 0, 1, 2, 1);

/* Double Ups */
insert into investment values ('Double_Up_1', '$0.10 Double Up', '', 'Double_Up', 12167, 3, 0, 0.1, 0.5, 0.05, 0.05, '', 1, 1, '', 1, 0, 2, 1);
insert into investment values ('Double_Up_2', '$0.20 Double Up', '', 'Double_Up', 5214, 7, 0, 0.2, 0.5, 0.1, 0.1, '', 1, 2, '', 1, 0, 2, 1);
insert into investment values ('Double_Up_3', '$1 Double Up', '', 'Double_Up', 2607, 14, 0, 1, 0.5, 0.5, 0.5, '', 1, 3, '', 1, 0, 2, 1);
insert into investment values ('Double_Up_4', '$4 Double Up', '', 'Double_Up', 1217, 30, 0, 4, 0.5, 2, 2, '', 1, 4, '', 0, 1, 2, 1);
insert into investment values ('Double_Up_5', '$10 Double Up', '', 'Double_Up', 608, 60, 0, 10, 0.5, 5, 5, '', 1, 5, '', 0, 1, 2, 1);
insert into investment values ('Double_Up_6', '$20 Double Up', '', 'Double_Up', 406, 90, 0, 20, 0.5, 10, 10, '', 1, 6, '', 0, 1, 2, 1);

/* Hi-Yield Savings */
insert into investment values ('HI_Yield_1', '4% Hi-Yield Savings', '', 'HI_Yield', 4, 0, 0, 0, 0, 0.5, 24, '', 1, 1, '', 1, 1, 2, 1);
insert into investment values ('HI_Yield_2', '6% Hi-Yield Savings', '', 'HI_Yield', 6, 0, 0, 0, 0, 25, 49, '', 1, 2, '', 1, 1, 2, 1);
insert into investment values ('HI_Yield_3', '8% Hi-Yield Savings', '', 'HI_Yield', 8, 0, 0, 0, 0, 50, 74, '', 1, 3, '', 1, 1, 2, 1);
insert into investment values ('HI_Yield_4', '10% Hi-Yield Savings', '', 'HI_Yield', 10, 0, 0, 0, 0, 75, 99, '', 1, 4, '', 1, 1, 2, 1);
insert into investment values ('HI_Yield_5', '15% Hi-Yield Savings', '', 'HI_Yield', 15, 0, 0, 0, 0, 100, 9999.99, '', 1, 5, '', 1, 1, 2, 1);
