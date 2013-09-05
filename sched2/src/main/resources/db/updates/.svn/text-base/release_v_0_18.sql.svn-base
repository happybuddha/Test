update cause set description = "For $5 a tree you can plant a Mangrove tree in India.  Protect coastal areas from erosion and provide habitat to animals." where cause_id = 1;
update cause set location = "India" where cause_id = 1;
update cause set confirmation_txt = "Thanks for planting a tree in India!" where cause_id = 1;

update cause set description = "Fight global warming support Carbonfund.org Nicaraguan reforestation project. Together we are reforesting an area larger than Central Park!" where cause_id = 2;
update cause set location = "Rivas Provence Nicaragua" where cause_id = 2;
update cause set confirmation_txt = "Thanks so much for fighting global warming through reforestation!" where cause_id = 2;

update cause set description = "Global warming stinks! But there are alternatives! Landfill methane plants burn trash then turn it into clean energy. Now that is nothing to trash talk!" where cause_id = 3;
update cause set location = "New Bedford MA" where cause_id = 3;
update cause set confirmation_txt = "Your donation is working to create a clean energy future for America!  Thank you for it!" where cause_id = 3;

update cause set description = "Plant a Wind Farm in the USA! Wind turbines create power from nature, turning wind into electricity for your home. Blow global warming away!" where cause_id = 4;
update cause set location = "Wingate TX" where cause_id = 4;
update cause set confirmation_txt = "Your donation is working to create a clean energy future for America!  Thank you for it!" where cause_id = 4;

/*cancel family account*/
Insert into account_status (account_status_id,name,description) values ('FAMILY_ACCOUNT_CANCELED','FAMILY_ACCOUNT_CANCELED','FAMILY_ACCOUNT_CANCELED');

/*Inserting Amex and Discover to credit_card_type*/
Insert into credit_card_type (credit_card_type_id,name) value ("Amex","Amex");
Insert into credit_card_type (credit_card_type_id,name) value ("Discover","Discover");

/* fixing email link*/
Update sys_template set design='<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>FiftyP</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body>
<table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">
  <tr>
    <td style="border-bottom:1px solid #7B2B83">
  <table width="100%" border="0">
    <tr>
    <td><img src="logo_parent.gif" width="294" height="84"></td>
    <td align="right" style="padding:55px 10px 0px 0px"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>Account Activation</b></font></td>
    </tr>
  </table>
</td>
  </tr>
  <tr>
    <td style="padding:20px;font-size:12px; font-family:verdana;">
  <p>Dear ${userName},</p>
  <p>Please click on the link below to activate your account </p>
  <p><a href="${link}">${link}<a/></b></p>
  <br/>  <p>Regards,<br/> 
  The FiftyP team 
  </p>
  </td>
  </tr>
  <tr>
    <td bgcolor="#7B2B83" style="padding:5px">
  <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at support@fiftyp.com <br>
  or Call us at 971 - 111 111 111</font>
  </td>
  </tr>
</table>

</body>
</html>' where  sys_template_id="ACTIVATION_CODE";

/* Refactoring */
update child_mm_chore set child_mm_chore.`mm_state_id`= 'REDO';
update child_mm_project set child_mm_project.`mm_state_id`= 'REDO';
delete from mm_state where mm_state.`mm_state_id`= 'CANCELED';
delete from mm_state where mm_state.`mm_state_id`= 'DENIED';
delete from mm_state where mm_state.`mm_state_id`= 'PENDING';
delete from mm_state where mm_state.`mm_state_id`= 'NOT COMPLETE';
insert into mm_state(mm_state_id, name, description) values('NOT_COMPLETE', 'Not complete', 'not complete');

insert into child_transaction_type values ('PARENT_MATCHING_TRANSACTION', 'parent matching');

ALTER TABLE `fiftypdb`.`child_mm_gift` MODIFY COLUMN `purpose` VARCHAR(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL;

/* Update cause pictures */
update cause set photo1_url = 'share/carbonfund_iconsTreePlantingBW.png' where cause_id = 1;
update cause set photo1_url = 'share/carbonfund_iconsReforestationBG.png' where cause_id = 2;
update cause set photo1_url = 'share/carbonfund_iconsRenewableEnergyBW.png' where cause_id = 3;
update cause set photo1_url = 'share/carbonfund_iconsLandfillMethaneBW.png' where cause_id = 4;
update cause set icon_url = 'share/carbonfund_iconsTreePlanting.png' where cause_id = 1;
update cause set icon_url = 'share/carbonfund_iconsReforestation.png' where cause_id = 2;
update cause set icon_url = 'share/carbonfund_iconsRenewableEnergy.png' where cause_id = 3;
update cause set icon_url = 'share/carbonfund_iconsLandfillMethane.png' where cause_id = 4;