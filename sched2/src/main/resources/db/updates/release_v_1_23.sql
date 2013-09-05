/*SQL update script for release v1.23 */

/* #863 */
update investment set minimum_amount = 67.5 where investment_id = 'Parent_Bond_6';

/* fix for prod error - since msg_text column was varchar in mail_inbox and mail_sent tables, so changing it to text from varchar*/
ALTER TABLE `mail_inbox` CHANGE `msg_text` `msg_text` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL;
ALTER TABLE `mail_sent` CHANGE `msg_text` `msg_text` TEXT CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ;

/* #863:  set maximum amount to null for the high yield investments.  The flex application will set the max amount to the current max amount in the user's account. */
ALTER TABLE `investment` MODIFY COLUMN `maximum_amount` DOUBLE DEFAULT NULL;
update investment set maximum_amount = null where investment_category_id = 'HI_Yield' and active = 1;
update investment set penalty = 1 where investment_category_id = 'Double_Up' or investment_category_id = 'CD' or investment_category_id = 'Parent_Bond';
update investment set penalty = 0 where investment_category_id = 'HI_Yield';

/* #830 - update causes from back office */
ALTER TABLE `cause` DROP `photo2_url`;
ALTER TABLE cause ADD is_deleted TINYINT( 4 ) NOT NULL DEFAULT 0;
ALTER TABLE cause ADD year int( 4 ) NOT NULL DEFAULT 2009 after month;
ALTER TABLE `ngo_profile` CHANGE `ngo_profile_id` `ngo_profile_id` BIGINT( 20 ) NOT NULL AUTO_INCREMENT;
ALTER TABLE `ngo_profile` ADD `is_deleted` TINYINT NOT NULL DEFAULT '0';

/* END of ticket #830 */

/* #872: need approval flag should be set to 0 for HI_Yield investments */
update investment set need_approval = 0 where investment_category_id = 'HI_Yield';
update investment set minimum_amount = 101 where investment_id = 'HI_Yield_5';
/* #873 - update for Allowance notification grammar error*/
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for Allowance notification");
UPDATE sys_template 
SET subject = 'Reminder: %s allowance tomorrow' 
WHERE sys_template_id = @systemTemplateId  ;

select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for Allowance notification");
UPDATE sys_template 
SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			 Reminder: ${childNames} allowance tomorrow </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">	Dear ${parentName},<br/><br/>  This is to let you know that allowance will be posted tomorrow along with other earnings or gifts that may be scheduled. <b>Your credit card will not be charged</b>.  	<br/><br/>Thanks for being part of our community, where we help kids develop a healthy relationship with money.<br/><br/> Please let us know if you have any questions or suggestions. We are always looking to improve FiftyP.<br/><br/> With best wishes,<br>			The FiftyP Team<br>			<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>	  </p>	</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;
/* END of ticket #873 */