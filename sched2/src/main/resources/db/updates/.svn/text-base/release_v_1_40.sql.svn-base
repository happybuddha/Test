/*SQL update script for release v1.40 */
/* 1330 */
select @systemTemplateId:=(select sys_template_id from sys_template where sys_template_id = "PAYMENT_PROCESSING_PROBLEM");
UPDATE sys_template
SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			Payment Processing Problem	  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">		\nThank you for joining the ThreeJars community, where kids learn to save more,<br/> spend less, and help others.\n<p/><br/><br/>\nWe have encountered a problem in processing your Family Membership<br/> payment of ${planPrice}. Your financial institution has notified us that your credit card<br/> has been declined. \n<p/><br/><br/>\nPlease contact <a href=''${siteURL}''>${siteURL}</a> as soon as possible to resolve this issue.<br/> We will be happy to assist you.\n<p/><br/><br/>\nYour ThreeJars account username is ${userName}\n<br/><br/>\n\n<p/><u><a href=''${siteURL}''>${siteURL}</a></u><br/>Raise money-wise,caring kids	 </td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''mailto:${supportEmail}''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">${supportEmail}</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId ;

select @systemTemplateId:=(select sys_template_id from sys_template where sys_template_id = "TRIAL_END_MEMBERSHIP_RECEIPT");
UPDATE sys_template
SET design ='<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			Membership Receipt		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">		Thanks for joining the ThreeJars community, where kids learn to save more, <br/> spend less, and help others. <p/><br/><br/>	Your free trial has concluded and your Family Membership payment of ${planPrice}<br/> has been processed. Here are the details:<p/>	<br/><br/>	Membership Term: ${membershipTerm} <br/>Payment method: ${ccTypeId},${ccDisplayNumber}<br/>Transaction #: ${transactionNumber}<br/><br/>	Please check our FAQs or email us at <a href=''mailto:${supportEmail}''>${supportEmail}</a> if you have any<br/> questions. <br/><br/>\nThanks for helping your kids learn healthy money habits! <p/><u><a href=''${siteURL}''>${siteURL}</a></u><br/>Raise money-wise,caring kids	 </td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''mailto:${supportEmail}''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">${supportEmail}</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId ;

select @systemTemplateId:=(select sys_template_id from sys_template where sys_template_id = "WELCOME_CODE_FAMILY_PLAN");
UPDATE sys_template
SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"> <html> <head> <title>ThreeJars</title> <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"> </head> <body>  <table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">   <tr>     <td style="border-bottom:1px solid #7B2B83">       <table width="100%" border="0">         <tr>           <td><img src="cid:logo_parent.gif" width="294" height="84"></td>   <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b> Free Membership Trial  	  </b></font></td>        </tr>     </table></td>   </tr>   <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;"> 	Welcome! Your free ${numberOfTrialDays}-day membership trial begins today.<br/><br/>  	You''re about to transform how your child thinks about money! <br/><br/>     Who knew it could be this easy?	<br/><br/> 	When your free trial is over, the annual family membership fee of ${membershipAmount}  will be<br/>charged to your credit card: 	Payment method: ${paymentMethod}.	<br/><br/>You may cancel your membership before the end of the trial period at<br/><a href=''${siteURL}''>${supportEmail}</a>. <br/><br/>  	Thanks for helping your kids learn healthy money habits!<br/><br/> 	<a href=''${siteURL}''>${siteURL}</a><br>  Raise money-wise, caring kids 	</td>   </tr>   <tr>     <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''${siteURL}''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">${supportEmail}</font></a><br>     </td>  </tr> </table></body>'
WHERE sys_template_id = @systemTemplateId ;
/* end of 1330 */

/* #1345 - adding new column  send_account_updation_mail to parent_profile */
ALTER TABLE `parent_profile` ADD `send_account_updation_mail` TINYINT( 4 ) NOT NULL DEFAULT '0';

/* fix for comment 2 in #1345 */
select @systemTemplateId:=(select sys_template_id from sys_template where sys_template_id = "TRIAL_END_MEMBERSHIP_RECEIPT");
UPDATE sys_template
SET design ='<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			Membership Receipt		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">		Thanks for joining the ThreeJars community, where kids learn to save more, <br/> spend less, and help others. <p/><br/><br/>	Your free trial has concluded and your Family Membership payment of $${planPrice}<br/> has been processed. Here are the details:<p/>	<br/><br/>	Membership Term: ${membershipTerm} <br/>Payment method: ${ccTypeId},${ccDisplayNumber}<br/>Transaction #: ${transactionNumber}<br/><br/>	Please check our FAQs or email us at <a href=''mailto:${supportEmail}''>${supportEmail}</a> if you have any<br/> questions. <br/><br/>\nThanks for helping your kids learn healthy money habits! <p/><u><a href=''${siteURL}''>${siteURL}</a></u><br/>Raise money-wise,caring kids	 </td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''mailto:${supportEmail}''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">${supportEmail}</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId ;
/* end -  #1345 */
 
 /*  Ticket#1291*/
 
 /*  project request*/
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for project request");
 UPDATE sys_template 
 SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title>  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head> <body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr><td style="border-bottom:1px solid #7B2B83"><table width="100%" border="0">  <tr> <td><img src="cid:logo_parent.gif" width="294" height="84"></td>  <td align="right" style="padding:55px 10px 0px 0px" >   <font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"> <b>Project request from ${childName}(Action required)</b></font>  </td></tr> </table>    </td> </tr><tr> <td style="padding:20px 0px;0px;0px;font-size:12px;font-family:verdana;">    <table border="0" width="100%">  <tr>  <td align="left" valign="top" width="50%" style="padding:12px 0px 0px 10px" >${childName} would like to ${projectName}<br/> by ${date?string("MMMM d, yyyy")} for $${amount}.<br/><br/>             <a href=''${approvalLink}''>Click Here to Approve<img src="cid:check.png"></a><br/>             <br/>or<br/><a href=''${rejectionLink}''>           Click Here to Reject<img src="cid:X.png"></a></b><br/><br/>             You may also <b>Reply</b> to this email by typing "YES" or "NO".<br/><br/>          <a href=''${siteURL}''>${siteURL}</a> <br/>         Raise money-wise, caring kids. </td></tr>    </table>   </td>   </tr> <tr>  <td bgcolor="#7B2B83" style="padding:5px">        <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">     For more information please contact our support team at </font><a href=''mailto:${supportEmail}''>      <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">${supportEmail}</font></a><br> </td> </tr>  </table> </body>'
 WHERE sys_template_id = @systemTemplateId  ;

 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for project request");
 UPDATE sys_template 
 SET subject = 'Project request from %s (Action required)' 
 WHERE sys_template_id = @systemTemplateId  ;
 
 
 /*change allocations request*/
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for change allocations request");
 UPDATE sys_template 
 SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>
ThreeJars</title> <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head> <body><table width="600"
border="2" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83"> <tr> <td style=
"border-bottom:1px solid #7B2B83">        <table width="100%" border="0"> <tr> <td><img src="cid:logo_parent.gif" width=
"294" height="84"></td>  <td align="right" style="padding:55px 10px 0px 0px" >              <font color="#F68B1F" size="2"
style="font-size:14px;" face="verdana"> <b>Allocation Request from ${childName}(Action required)    </b></font>  </td> </tr
> </table></td> </tr><tr>   <td style="padding:20px 0px;0px;0px;font-size:12px;font-family:verdana;"> <table border="0"
width="100%"> <tr>   <td
align="left" valign="top" width="50%" style="padding:12px 0px 0px 10px" >    ${childName} would like allocations changed
to: <br/>           [${save}%Save,<br/> ${spend}%Spend,<br/> and ${share}%Share].<br/><br/> <a href=''${approvalLink}''>
Click Here to Approve<img src="cid:check.png"></a><br/> <br/>or<br/><a href=''${rejectionLink}''>Click Here to Reject<img
src="cid:X.png"></a></b><br/><br/> You may also <b>Reply</b> to this email by typing "YES" or "NO".<br/><br/> <a href=''${
siteURL}''>${siteURL}</a> <br/> Raise money-wise, caring kids.<br/><br/></td>   </tr>
</table>    </td>  </tr><tr>    <td bgcolor="#7B2B83" style="padding:5px">    <font  style="font-size:11px;
line-height:16px" face="verdana" color="#ffffff">     For more information please contact our support team at     </font><a
href=''mailto:${supportEmail}''>      <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">
${supportEmail}</font></a><br>      </td> </tr> </table> </body>  '
 WHERE sys_template_id = @systemTemplateId  ;
 
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for change allocations request");
 UPDATE sys_template 
 SET subject = 'Allocation request from %s (Action required)' 
 WHERE sys_template_id = @systemTemplateId  ;
 
 /*Spend Request*/
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for spend request");
 UPDATE sys_template 
 SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title> <meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1"></head> <body><table width="600" border="2" align="center" cellpadding="0"
cellspacing="0" style="border:1px solid #7B2B83"> <tr> <td style="border-bottom:1px solid #7B2B83">        <table
width="100%" border="0"> <tr> <td><img src="cid:logo_parent.gif" width="294" height="84"></td>  <td align="right"
style="padding:55px 10px 0px 0px" >             <font color="#F68B1F" size="2" style="font-size:14px;"
face="verdana">  <b>Spend request from ${childName}(Action required)            </b></font>  </td> </tr>
</table></td> </tr><tr>     <td style="padding:20px 0px;0px;0px;font-size:12px;font-family:verdana;">
<table border="0" width="100%">  <tr>        <td align="left" valign="top" width="50%" style="padding:12px 0px 0px 10px"
>    ${childName} would like to buy a $${amount} ${cardName} gift card.<br/><br/> <a href=''${approvalLink}''>Click Here
to Approve<img src="cid:check.png"></a><br/>            <br/>or<br/><a href=''${rejectionLink}''>Click Here to
Reject<img src="cid:X.png"></a></b><br/><br/> You may also <b>Reply</b> to this email by typing "YES" or "NO".<br/><br/> <a
href=''${siteURL}''>${siteURL}</a> <br/> Raise money-wise, caring kids.<br/><br/></td> </tr>    </table>
</td>  </tr><tr>    <td bgcolor="#7B2B83" style="padding:5px">    <font  style="font-size:11px; line-height:16px"
face="verdana" color="#ffffff">       For more information please contact our support team at     </font><a
href=''mailto:${supportEmail}''>      <font  style="font-size:11px; line-height:16px" face="verdana"
color="#ffffff">${supportEmail}</font></a><br>  </td> </tr> </table> </body> '
 WHERE sys_template_id = @systemTemplateId  ;
 
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for spend request");
 UPDATE sys_template 
 SET subject = 'Spend requestfrom %s (Action required)' 
 WHERE sys_template_id = @systemTemplateId  ;

 /*Share Request*/
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for share request");
 UPDATE sys_template 
 SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title> <meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1"></head> <body><table width="600" border="2" align="center" cellpadding="0"
cellspacing="0" style="border:1px solid #7B2B83"> <tr> <td style="border-bottom:1px solid #7B2B83">        <table
width="100%" border="0"> <tr> <td><img src="cid:logo_parent.gif" width="294" height="84"></td>  <td align="right"
style="padding:55px 10px 0px 0px" >     <font color="#F68B1F" size="2" style="font-size:14px;" face="verdana">  <b>Share
request from ${childName}(Action required)  </b></font>  </td> </tr> </table></td> </tr><tr>    <td
style="padding:20px 0px;0px;0px;font-size:12px;font-family:verdana;">        <table border="0" width="100%">  <tr>   <td
align="left" valign="top" width="50%" style="padding:12px 0px 0px 10px" >   ${childName} would like to donate $${amount}
to ${causeName}, a program  managed  by ${charityName}.<br/><br/> <a href=''${approvalLink}''>Click Here to Approve<img
src="cid:check.png"></a><br/>   <br/>or<br/><a href=''${rejectionLink}''>Click Here to Reject<img
src="cid:X.png"></a></b><br/><br/> You may also <b>Reply</b> to this email by typing "YES" or "NO".<br/><br/> <a
href=''${siteURL}''>${siteURL}</a> <br/>  Raise money-wise, caring kids.<br/><br/></td>
    </tr>    </table>   </td>  </tr><tr>    <td bgcolor="#7B2B83" style="padding:5px">    <font  style="font
-size:11px; line-height:16px" face="verdana" color="#ffffff">     For more information please contact our support team at
  </font><a href=''mailto:${supportEmail}''>      <font  style="font-size:11px; line-height:16px" face="verdana"
color="#ffffff">${supportEmail}</font></a><br>      </td> </tr> </table> </body> '
 WHERE sys_template_id = @systemTemplateId  ;
 
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for share request");
 UPDATE sys_template 
 SET subject = 'Share request from %s(Action required)' 
 WHERE sys_template_id = @systemTemplateId  ;
 
 /*  Investment request  */
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for investment request");
 UPDATE sys_template 
 SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title> <meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1"></head> <body><table width="600" border="2" align="center" cellpadding="0"
cellspacing="0" style="border:1px solid #7B2B83"> <tr> <td style="border-bottom:1px solid #7B2B83">        <table
width="100%" border="0"> <tr> <td><img src="cid:logo_parent.gif" width="294" height="84"></td>  <td align="right"
style="padding:55px 10px 0px 0px" >             <font color="#F68B1F" size="2" style="font-size:14px;"
face="verdana">             <b>Investment request from ${childName}(Action required) </b></font>     </td> </tr>
</table></td> </tr><tr>     <td style="padding:20px 0px;0px;0px;font-size:12px;font-family:verdana;"> <table border="0"
width="100%">
<tr>     <td align="left" valign="top" width="50%" style="padding:12px 0px 0px 10px" >  ${childName} would like to make
$${profitAmount} by investing in  a ${investment} for ${timePeriod}.<br/><br/> <a href=''${approvalLink}''>Click Here to
Approve<img src="cid:check.png"></a><br/> <br/>or<br/><a href=''${rejectionLink}''>Click Here to Reject<img
src="cid:X.png"></a></b><br/><br/> You may also <b>Reply</b> to this email by typing "YES" or "NO".<br/><br/> <a
href=''${siteURL}''>${siteURL}</a> <br/>    Raise money-wise, caring kids.<br/><br/></td> </tr>  </table>   </td>  </tr><tr>    <td bgcolor="#7B2B83"
style="padding:5px">      <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">     For more
information please contact our support team at        </font><a href=''mailto:${supportEmail}''>      <font  style="font
-size:11px; line-height:16px" face="verdana" color="#ffffff">${supportEmail}</font></a><br>     </td> </tr> </table> </body>'
 WHERE sys_template_id = @systemTemplateId  ;
 
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for investment request");
 UPDATE sys_template 
 SET subject = 'Investment request from %s(Action required)' 
 WHERE sys_template_id = @systemTemplateId  ;
 
 
 
 /* transfer funds request  */
 
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for transfer funds request");
 UPDATE sys_template 
 SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title> <meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1"></head>  <body><table width="600" border="2" align="center" cellpadding="0"
cellspacing="0" style="border:1px solid #7B2B83"> <tr> <td style="border-bottom:1px solid #7B2B83">        <table
width="100%" border="0"> <tr> <td><img src="cid:logo_parent.gif" width="294" height="84"></td>  <td align="right"
style="padding:55px 10px 0px 0px" >             <font color="#F68B1F" size="2" style="font-size:14px;"
face="verdana"> <b>Move money request from ${childName}(Action required) </b></font>     </td> </tr> </table></td> </tr><tr>
<td style="padding:20px 0px;0px;0px;font-size:12px;font-family:verdana;"> <table border="0" width="100%">  <tr>  <td align="left"
valign="top" width="50%" style="padding:12px 0px 0px 10px" >    ${childName} would like to transfer $${amount} from
${pronoun} ${fromAccount} Account to ${pronoun} ${toAccount} Account. <br/><br/> <a href=''${approvalLink}''>Click Here to
Approve<img src="cid:check.png"></a><br/>  <br/>or<br/><a href=''${rejectionLink}''>Click Here to Reject<img
src="cid:X.png"></a></b><br/><br/> You may also <b>Reply</b> to this email by typing "YES" or "NO".<br/><br/> <a
href=''${siteURL}''>${siteURL}</a> <br/> Raise money-wise, caring kids.<br/><br/></td>  </tr>    </table> </td>  </tr><tr>  <td
bgcolor="#7B2B83" style="padding:5px">    <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">
  For more information please contact our support team at     </font><a href=''mailto:${supportEmail}''>      <font
style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">${supportEmail}</font></a><br> </td> </tr> </table>
</body>'
 WHERE sys_template_id = @systemTemplateId  ;
 
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for transfer funds request");
 UPDATE sys_template 
 SET subject = 'Request to Move Money from %s(Action required)' 
 WHERE sys_template_id = @systemTemplateId  ;
 
/*   Request for Cash withdrawal*/ 
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for cash request");
 UPDATE sys_template 
 SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title> <meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1"></head> <body><table width="600" border="2" align="center" cellpadding="0"
cellspacing="0" style="border:1px solid #7B2B83"> <tr> <td style="border-bottom:1px solid #7B2B83">        <table
width="100%" border="0"> <tr> <td><img src="cid:logo_parent.gif" width="294" height="84"></td>  <td align="right"
style="padding:55px 10px 0px 0px" > <font color="#F68B1F" size="2" style="font-size:14px;" face="verdana">
<b>Cash withdrawal request from ${childName}(Action required) </b></font>    </td> </tr> </table></td> </tr><tr>    <td
style="padding:20px 0px;0px;0px;font-size:12px;font-family:verdana;">        <table border="0" width="100%">  <tr>       <td
align="left" valign="top" width="50%" style="padding:12px 0px 0px 10px" > ${childName} would like to withdraw $${amount} from
${pronoun} Spend Account.<br/><br/><a href=''${approvalLink}''>Click Here to Approve<img src="cid:check.png"></a><br/>
<br/>or<br/><a href=''${rejectionLink}''>Click Here to Reject<img src="cid:X.png"></a></b><br/><br/> You may also
<b>Reply</b> to this email by typing "YES" or "NO".<br/><br/> <a href=''${siteURL}''>${siteURL}</a> <br/> Raise money-wise,
caring kids.<br/><br/></td> </tr> </table>  </td>
 </tr><tr>  <td bgcolor="#7B2B83" style="padding:5px">    <font  style="font-size:11px; line-height:16px"
face="verdana" color="#ffffff">       For more information please contact our support team at     </font><a
href=''mailto:${supportEmail}''>      <font  style="font-size:11px; line-height:16px" face="verdana"
color="#ffffff">${supportEmail}</font></a><br>      </td> </tr> </table> </body>'
 WHERE sys_template_id = @systemTemplateId  ;
 
 select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for cash request");
 UPDATE sys_template 
 SET subject = 'Cash withdrawal request from %s(Action required)' 
 WHERE sys_template_id = @systemTemplateId  ;
 
 