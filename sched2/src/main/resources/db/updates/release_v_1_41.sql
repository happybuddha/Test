/*SQL update script for release v1.41 */

/*Adding news themes*/
insert into fp_theme (theme_id, name, description, theme_small_picture_url, theme_preview_picture_url) values ('kidshomeBoyipodblue', 'kids home Boy ipod blue', '', 'themes/thumbnails/kidshomeBoyipodblue.png', 'themes/thumbnails/kidshomeBoyipodblue.png');
insert into fp_theme (theme_id, name, description, theme_small_picture_url, theme_preview_picture_url) values ('kidshomeBoyipodgreen', 'kids home Boy ipod green', '', 'themes/thumbnails/kidshomeBoyipodgreen.png', 'themes/thumbnails/kidshomeBoyipodgreen.png');
insert into fp_theme (theme_id, name, description, theme_small_picture_url, theme_preview_picture_url) values ('kidshomeBoyipodorange', 'kids home Boy ipod orange', '', 'themes/thumbnails/kidshomeBoyipodorange.png', 'themes/thumbnails/kidshomeBoyipodorange.png');
insert into fp_theme (theme_id, name, description, theme_small_picture_url, theme_preview_picture_url) values ('kidshomeBoyipodred', 'kids home Boy ipod red', '', 'themes/thumbnails/kidshomeBoyipodred.png', 'themes/thumbnails/kidshomeBoyipodred.png');
insert into fp_theme (theme_id, name, description, theme_small_picture_url, theme_preview_picture_url) values ('kidshomeBoyipodyellow', 'kids home Boy ipod yellow', '', 'themes/thumbnails/kidshomeBoyipodyellow.png', 'themes/thumbnails/kidshomeBoyipodyellow.png');

/* Ticket #1392 - updating the images names in the ngo_profile table */

select @ngoIdForCCC := (select ngo_profile_id from ngo_profile where ngo_name = "CCC");
UPDATE ngo_profile SET logo_url = 'CarribeanConservationLogo.jpg' WHERE ngo_profile_id =@ngoIdForCCC;

select @ngoIdForASPCA := (select ngo_profile_id from ngo_profile where ngo_name = "ASPCA");
UPDATE ngo_profile SET logo_url = 'ASPCALogo.jpg' WHERE ngo_profile_id = @ngoIdForASPCA;

/*1344 */
update investment_category set max_investments = 1;

 /*  Ticket#1291*/
ALTER TABLE  `sys_template`
ADD COLUMN `design_plain_text` text NOT NULL after `design`;

 
 /*  project request*/
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for project request");
 UPDATE sys_template 
 SET design_plain_text = '${childName} would like to ${projectName} by ${date?string("MMMM d, yyyy")} for $${amount} (childRequestId=${requestId}).
 Please reply to this email by typing "YES" or "NO".
 ${siteURL}
 Raise money-wise, caring kids.
 For more information please contact our support team at ${supportEmail}'
 WHERE sys_template_id = @systemTemplateId  ;
 
 /*change allocations request*/
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for change allocations request");
 UPDATE sys_template 
 SET design_plain_text = '${childName} would like allocations changed to: <br/> [${save}%Save,<br/> ${spend}%Spend,<br/> and ${share}%Share] (childRequestId=${requestId}).
 Please reply to this email by typing "YES" or "NO".
 ${siteURL}
 Raise money-wise, caring kids.
 For more information please contact our support team at ${supportEmail}'
 WHERE sys_template_id = @systemTemplateId  ;
 
 /*Spend Request*/
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for spend request");
 UPDATE sys_template 
 SET design_plain_text = '${childName} would like to buy a $${amount} ${cardName} gift card (childRequestId=${requestId}).
 Please reply to this email by typing "YES" or "NO".
 ${siteURL}
 Raise money-wise, caring kids.
 For more information please contact our support team at ${supportEmail}'
 WHERE sys_template_id = @systemTemplateId  ;

 /*Share Request*/
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for share request");
 UPDATE sys_template 
 SET design_plain_text = '${childName} would like to donate $${amount} to ${causeName}, a program  managed  by ${charityName} (childRequestId=${requestId}).
 Please reply to this email by typing "YES" or "NO".
 ${siteURL}
 Raise money-wise, caring kids.
 For more information please contact our support team at ${supportEmail}'
 WHERE sys_template_id = @systemTemplateId  ;
 

 /*  Investment request  */
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for investment request");
 UPDATE sys_template 
 SET design_plain_text = '${childName} would like to make $${profitAmount} by investing in a ${investment} for ${timePeriod} (childRequestId=${requestId}).
 Please reply to this email by typing "YES" or "NO".
 ${siteURL}
 Raise money-wise, caring kids.
 For more information please contact our support team at ${supportEmail}'
 WHERE sys_template_id = @systemTemplateId  ;
 
 
 /* transfer funds request  */
 
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for transfer funds request");
 UPDATE sys_template 
 SET design_plain_text = '${childName} would like to transfer $${amount} from ${pronoun} ${fromAccount} Account to ${pronoun} ${toAccount} Account (childRequestId=${requestId}).
 Please reply to this email by typing "YES" or "NO".
 ${siteURL}
 Raise money-wise, caring kids.
 For more information please contact our support team at ${supportEmail}'
 WHERE sys_template_id = @systemTemplateId  ;
 
/*   Request for Cash withdrawal*/ 
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for cash request");
UPDATE sys_template 
SET design_plain_text = '${childName} would like to withdraw $${amount} from ${pronoun} Spend Account (childRequestId=${requestId}). 
Please reply to this email by typing "YES" or "NO".
${siteURL}
Raise money-wise, caring kids. 
For more information please contact our support team at ${supportEmail}'
WHERE sys_template_id = @systemTemplateId  ;

/*1344*/
 update investment_category set max_investments = 2;

 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Goal setting email");
 UPDATE sys_template 
 SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			Goal Setting    		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">		Dear ${parentName},<br/><br/> We thought you''d like to know that ${kidName} is using ThreeJars'' Goal Setting  feature to save for something special.<br/><br/> ${kidName}''s goal: ${goalSettingItem}<br/>		${kidName}''s estimate of its cost: $${goalSettingAmount}<br/> Days until ${possesivePronoun} goal is reached: ${days} days<br/><br/> For ways to help ${kidName} reach  ${possesivePronoun} goal faster, login to your account at ThreeJars. <br/><br/> <a href=''${siteURL}''>${siteURL}</a><br>	Raise money-wise, caring kids. Who knew it could be this easy? </td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''mailto:${supportEmail}''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">${supportEmail}</font></a><br>    </td>  </tr></table></body> '
 WHERE sys_template_id = @systemTemplateId  ;
/* end of 1344 */