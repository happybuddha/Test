﻿/*SQL update script for release v1.20 */

update subscription_type set price = 29.95 where subscription_type_id = 'YEARLY';
update subscription_type set price = 79.95 where subscription_type_id = 'THREE_YEARS';

/* Promotional code discount being increased from $2 to $5 */
update promotional_code set promotional_code_value = 5 where promotional_code_value = 2;
/* Promotional code discount being increased from $5 to $29.95 */
update promotional_code set promotional_code_value = 29.95 where promotional_code_value = 12;
/* for 564*/
update sys_template set design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			Order confirmation of gift card		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">	<p>Dear ${parentName},</p>	<p>We''re writing to confirm your recent gift card purchase. Your payment has been processed. You can expect delivery by first-class mail within 7 to 10 business days. </p>	<p>Here are the details:		<p>		Purchase date: ${purchaseDate?string("MMMM d, yyyy")}		<br>      Confirmation #: ${orderNumber}</p>	  <p>Item: ${giftName} gift card <br>	  Value: $${giftPrice} <br>	  Shipping, Handling &amp; Merchant Charge: ${shippingCost} <br>	  Total: $${total}<br>	  Payment Method : ${paymentMethod},  card #${ccDisplayNumber}</p>	  <p> Shipping Address: <br>        ${buyerName} <br>        ${streetName} <br>        ${cityName} <br>        ${state} <br>        ${country} <br>      </p>	  <p>For questions about your child''''s gift card purchase, or to learn more about our retail partners, go to www.fiftyp.com/faq?q=gift%20card . Still have questions? Email us at www.fiftyp.com/support . </p>	  <p>Please keep us informed of any changes to your email address. You can update your information by logging in to your FiftyP account and clicking on "Your Profile".</p>	  <p>Thanks for supporting your child in this purchase. Allowing our kids to make spending decisions gives them a great opportunity to practice money management skills. </p>	  	  With best wishes,<br>			Team FiftyP<br>			<a href=''''http://www.fiftyp.com''''>www.fiftyp.com</a><br>	  	</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''''http://www.fiftyp.com''''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>' where sys_template_id = 'ORDER_CONFIRMATION_GIFT_CARD';
INSERT INTO sys_template (sys_template_id, description, design, subject) VALUES
('ORDER_CONFIRMATION_SHARE_TRANSACTION_CANADA', 'Charging email for share confirmation for parents from Canada', '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>		  	<td align="right" style="padding:0px 0px 0px 50px" nowrap="nowrap">			<img src="cid:carbonFund.jpg"></td></tr>			<tr><td></td>          <td align="right" style="padding:0px 0px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>      Order confirmation of share transaction/tax deduct      </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">  <p>Dear ${parentName},</p>  <p>Thank you for your contribution of $${donationAmount} to ${organization} in support of ${donationCause}. Your family can be proud of supporting this organization and its important work.  <p>Your donation of $${donationAmount}  has been processed. Here are the details:  <br>      Date of Transaction: ${transactionDate?string("MMMM d, yyyy")}<br>      Transaction #: ${transactionId}<br>       Payment method: ${paymentMethod}, 	 card #${ccDisplayNumber} </p>	 <p>This letter confirms that no goods or services were provided to you in exchange, in whole or in part, for this charitable contribution. Your contribution may be tax deductible; please contact a professional tax advisor for tax-related questions.</p>    <p>To learn more about FiftyP and our commitment to raising social awareness, visit us at <a href="http://www.fiftyp.com">www.fiftyp.com </a> or check our FAQs at <a href="http://www.fiftyp.com/faq">www.fiftyp.com/faq </a>. Still have questions? Email us at www.fiftyp.com/support. </p>    <p>Please keep us informed of any changes to your email address. You can update your information by logging in to your FiftyP account and clicking on "Your Profile" .</p>    <p>We appreciate your commitment to making a difference! </p>      With best wishes,<br>      Team FiftyP<br>      <a href=''''http://www.fiftyp.com''''>www.fiftyp.com</a><br>  </td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href="mailto:support@fiftyp.com">	<font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>', 'Order confirmation of share transaction');

/* #779 alter statement to add child_id colum to new table*/

ALTER TABLE news ADD child_profileId BIGINT( 20 ) NOT NULL ;
/* Altering ngo_profile table for 564 */

ALTER TABLE ngo_profile CHANGE name ngo_name VARCHAR( 64 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL;  
ALTER TABLE ngo_profile DROP can_login;
ALTER TABLE ngo_profile CHANGE description ngo_description TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL;  
ALTER TABLE ngo_profile ADD payment_user_name VARCHAR( 64 ) NOT NULL,
ADD `payment_user_password` VARCHAR( 64 ) NOT NULL,
ADD `payment_signature` VARCHAR( 128 ) NOT NULL; 
ALTER TABLE `ngo_profile` DROP FOREIGN KEY `FK_login_ngo_profile`;

/* Altering login table and insert a new row in sys_template table for #445  */

INSERT INTO sys_template (sys_template_id, description, design, subject) VALUES
('CHANGE_EMAIL_ADDRESS', 'Email template for when email address changed', '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			Change of email address  		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">	<p>Dear ${parentName},</p>	<p>		This is to confirm your request to discontinue the use of 		this email address with regard to FiftyP.com, including its use as your login ID. If you did not make this request, please contact us as soon as possible at support@fiftyp.com.     </p>	<br/>	        	With best wishes,<br>		Team FiftyP<br>		<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>			</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>', 'Change of email address');
ALTER TABLE login ADD username_before_change VARCHAR( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ;

/* #738 */
insert into ngo_profile (ngo_profile_id, ngo_name, ngo_description, logo_url, payment_user_name, payment_user_password, payment_signature) values (1, 'Carbon Fund', 'Carbon Fund', 'frontPage/carbon_fund_logo.jpg', '', '', '');
insert into ngo_profile (ngo_profile_id, ngo_name, ngo_description, logo_url, payment_user_name, payment_user_password, payment_signature) values (2, 'WDCS', 'WDCS', 'frontPage/WDCS_logo.jpg', '', '', '');
update cause set ngo_profile_id = 1 where name = 'Tree Planting Program' or name = 'Reforestation' or name = 'Landfill Methane' or name = 'Renewable Energy Investments' or name = 'Greener Truck Stops' or name = 'School Bus Project';
update cause set ngo_profile_id = 2 where name = 'Save the Seals' or name = 'Name that Whale!';