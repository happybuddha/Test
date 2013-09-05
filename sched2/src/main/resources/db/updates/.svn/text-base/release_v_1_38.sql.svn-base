/*SQL update script for release v1.38 */
/* 1183 - comment 44 */
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Kids message sent to parent");
UPDATE sys_template
SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>		Message from ${childName} </b>
</font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">${message}<br><br/>
<br/><input type="hidden" value="Msg Id: ${messageId}"/>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId ;

/* ticket# 1248 - Cristian Cardenas */
update `sys_template`
set description=replace(description,'FiftyP','ThreeJars'),
    design=replace(design,'FiftyP','ThreeJars'),
    subject=replace(subject,'FiftyP','ThreeJars') ;

UPDATE `cause`
SET hos_full_txt=replace(hos_full_txt,'FiftyP','ThreeJars'),
column1_fiftyp_times=replace(column1_fiftyp_times,'FiftyP','ThreeJars'),
parent_wizard_text=replace(parent_wizard_text,'FiftyP','ThreeJars');

/* ticket#1233 - share store icons sql script for August causes */alter
select @causeId := (select cause_id from cause where name = "Tour de Turtles");

INSERT INTO `share_store_item` ( `cause_id`, `name`, `icon`, `point_value`, `globe_pos_x`, `globe_pos_y`, `thank_you_msg`,`description`) VALUES
  (@causeId, 'Glue', 'glue.swf', 5, 23, 12, "Thanks for supporting the Tour de Turtles. A transmitter glued to the back of each sea turtle sends out signals about its location.","A transmitter glued to the back of each sea turtle sends out signals about its location."),
  (@causeId, 'Compass', 'compass.swf', 10, 23, 15, "Thanks for supporting the Tour de Turtles. Sea turtles have an ''inner compass'' to help them travel long distances without getting lost.","Sea turtles have an ''inner compass'' to help them travel long distances without getting lost."),
  (@causeId, 'Globe', 'globe.swf', 15,24,16, "Thanks for supporting the Tour de Turtles. Scientists track the route of each turtle as it travels to its feeding grounds.","Scientists track the route of each turtle as it travels to its feeding grounds."),
  (@causeId, 'Sun Umbrella', 'sunUmbrella.swf', 20, 25, 18, "Thanks for supporting the Tour de Turtles. An umbrella keeps the turtle from drying out while the transmitter is glued to its back.","An umbrella keeps the turtle from drying out while the transmitter is glued to its back."),
  (@causeId, 'Beach', 'beachDune.swf', 25, 26, 21, "Thanks for supporting the Tour de Turtles. Sea turtles return to the same strip of beach each time they''re ready to lay eggs.","Sea turtles return to the same strip of beach each time they''re ready to lay eggs."),
  (@causeId, 'Video camera', 'videoCamera.swf', 35,27,24, "Thanks for supporting the Tour de Turtles. The turtles will be filmed as they leave their nests and begin their long underwater voyage.","The turtles will be filmed as they leave their nests and begin their long underwater voyage."),
  (@causeId, 'Computer', 'computer.swf', 50, 29, 26, "Thanks for supporting the Tour de Turtles. Tracking sea turtles in the open ocean is helping researchers discover the threats they face.","Tracking sea turtles in the open ocean is helping researchers discover the threats they face."),
  (@causeId, 'Satellite', 'satellite.swf', 100, 31, 30, "Thanks for supporting the Tour de Turtles. Each turtle wears a transmitter that beams signals to a satellite orbiting the earth.","Each turtle wears a transmitter that beams signals to a satellite orbiting the earth.");
  
select @causeId := (select cause_id from cause where name = "Bicycle Ambulances");

INSERT INTO `share_store_item` ( `cause_id`, `name`, `icon`, `point_value`, `globe_pos_x`, `globe_pos_y`, `description`, `thank_you_msg`) VALUES
  (@causeId, 'Bandages', 'bandAid.swf', 5, 55, 25, "A health worker provides first aid, if needed, before sending a patient to the clinic.", "Thanks for providing a bicycle ambulance to help people in rural Africa. A health worker provides first aid, if needed, before sending a patient to the clinic."),
  (@causeId, 'Water bottle', 'waterBottle.swf', 10, 58, 26, "The ambulance driver builds up a thirst while pedaling the hot, dusty roads. ", "Thanks for providing a bicycle ambulance to help people in rural Africa. The ambulance driver builds up a thirst while pedaling the hot, dusty roads. "),
  (@causeId, 'Bicycle pump', 'bicyclePump.swf', 15, 60, 28, "Keeping the bike tires filled with air makes for a smoother, more comfortable ride.", "Thanks for providing a bicycle ambulance to help people in rural Africa.  Keeping the bike tires filled with air makes for a smoother, more comfortable ride."),
  (@causeId, 'Bike seat', 'bikeSeat.swf', 20, 60, 30, "The clinic may be many miles away, so let''s hope the bike seat is comfy!", "Thanks for providing a bicycle ambulance to African towns. The clinic may be many miles away, so let''s hope the bike seat is comfy!"),
  (@causeId, 'Bike chain', 'bikeChain.swf', 25, 63, 34, "It''s a good idea to have an extra bike chain, because the bike won''t ride without it.", "Thanks for providing a bicycle ambulance to help people in rural Africa. It''s a good idea to have an extra bike chain, because the bike won''t ride without it."),
  (@causeId, 'Bicycle frame', 'bicycleFrame.swf', 35,66,37, "Community drivers keep spare parts on hand so the ambulance is always ready to roll.", "Thanks for providing a bicycle ambulance to help people in rural Africa.  Community drivers keep spare parts on hand so the ambulance is always ready to roll."),
  (@causeId, 'Tires', 'bikeTire.swf', 50, 69, 40, "Riding on rough roads can cause tires to blow, so it''s important to carry a spare.", "Thanks for providing a bicycle ambulance to help people in rural Africa.  Riding on rough roads can cause tires to blow, so it''s important to carry a spare."),
  (@causeId, 'Mattress', 'mattress.swf', 100, 71, 42, "A soft mattress helps cushion the bumps as the patient is towed to the clinic.", "Thanks for providing a bicycle ambulance to help people in rural Africa. A soft mattress helps cushion the bumps as the patient is towed to the clinic.");
  
  
select @causeId := (select cause_id from cause where name = "Fire by Design");

INSERT INTO `share_store_item` ( `cause_id`, `name`, `icon`, `point_value`, `globe_pos_x`, `globe_pos_y`, `thank_you_msg`,`description`) VALUES
  (@causeId, 'Rake', 'hoseBig.swf', 5, 354, 20, "Thanks for supporting the controlled fire program. The first step is to create a clearing around the burn site. Grasses must be mowed or raked.", "The first step is to create a clearing around the burn site. Grasses must be mowed or raked."),
  (@causeId, 'Hatchet', 'hatchet.swf', 10, 44, 20, "Thanks for supporting the controlled fire program. Removing trees and shrubs around the burn area helps keep the fire in bounds.", "Removing trees and shrubs around the burn area helps keep the fire in bounds."),
  (@causeId, 'Megaphone', 'megaphone.swf', 15,35, 27, "Thanks for supporting the controlled fire program. The fire team keeps in constant communication to make sure the burn goes as planned.", "The fire team keeps in constant communication to make sure the burn goes as planned."),
  (@causeId, 'Helmet', 'helmet.swf', 20, 35, 40, "Thanks for supporting the controlled fire program. Setting a controlled fire is dangerous work; the team wears helmets and protective clothing.", "Setting a controlled fire is dangerous work; the team wears helmets and protective clothing."),
  (@causeId, 'Hose', 'hoseSmall.swf', 25, 42, 31, "Thanks for supporting the controlled fire program. The crew constantly patrols the burn site to be sure the fire doesn''t spread.", "The crew constantly patrols the burn site to be sure the fire doesn''t spread."),
  (@causeId, 'Portable water tank', 'portableWaterTank.swf', 35,21, 20, "Thanks for supporting the controlled fire program. With water at hand, the team can put out small flames that jump outside the burn site.  ", "With water at hand, the team can put out small flames that jump outside the burn site.  "),
  (@causeId, 'Mask', 'mask.swf', 50, 46, 36, "Thanks for supporting the controlled fire program. Some fires are very smoky, but the crew wears masks to protect their eyes and nose. ", "Some fires are very smoky, but the crew wears masks to protect their eyes and nose. "),
  (@causeId, 'Fire truck', 'fireTruck.swf', 100,44, 40, "Thanks for supporting the controlled fire program. There''s always a fire truck standing by in case the flames threaten to get out of control.", "There''s always a fire truck standing by in case the flames threaten to get out of control.");

	
select @causeId := (select cause_id from cause where name = "Animal Rescue Squad");

INSERT INTO `share_store_item` ( `cause_id`, `name`, `icon`, `point_value`, `globe_pos_x`, `globe_pos_y`, `description`, `thank_you_msg`) VALUES
  (@causeId, 'Food', 'bowlOfFood.swf', 5, 24, 21, "Animals waiting to be rescued may go days without eating.", "Thanks for supporting the Animal Rescue Squad. Animals waiting to be rescued may go days without eating."),
  (@causeId, 'Pet poop bags', 'PetPoopBags.swf', 10, 40, 25, "Poop happens - and it''s got to be picked up.", "Thanks for supporting the Animal Rescue Squad. Poop happens - and it''s got to be picked up."),
  (@causeId, 'Flea brush', 'fleaBrush.swf', 15,62,25, "Animals rescued from poor conditions may be infested with fleas.", "Thanks for supporting the Animal Rescue Squad. Animals rescued from poor conditions may be infested with fleas."),
  (@causeId, 'Medicine', 'medicine.swf', 20, 82,27, "Disasters can cause unsanitary conditions, and pets may need to be nursed back to health.", "Thanks for supporting the Animal Rescue Squad. Disasters can cause unsanitary conditions, and pets may need to be nursed back to health."),
  (@causeId, 'Nail clippers', 'nailClippers.swf', 25,71, 32, "Rescued animals need to be bathed and groomed.", "Thanks for supporting the Animal Rescue Squad. Rescued animals need to be bathed and groomed."),
  (@causeId, 'Pet crate', 'petCrate.swf', 35,82,37, "Animals feel more secure when traveling in a crate. ", "Thanks for supporting the Animal Rescue Squad. Animals feel more secure when traveling in a crate. "),
  (@causeId, 'Dog house', 'dogHouse.swf', 50,65,42, "Animals are given love and care until they''re reunited with their owners. ", "Thanks for supporting the Animal Rescue Squad. Animals are given love and care until they''re reunited with their owners. "),
  (@causeId, 'Vet', 'vet.swf', 100,45,43, "Among the rescue squad members are vets who treat injured animals on the scene.  ", "Thanks for supporting the Animal Rescue Squad. Among the rescue squad members are vets who treat injured animals on the scene.  ");
    	

/* end of ticket #1233 */

/* #1228 */
ALTER table transaction add column `post_auth_date` DATE default '1900-01-01';

INSERT INTO sys_template values ('TRIAL_END_MEMBERSHIP_RECEIPT', 'Receipt for parent after trial period', '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			Membership Receipt		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">		Thanks for joining the ThreeJars community, where kids learn to save more, <br/> spend less, and help others. <p/><br/><br/>	Your free trial has concluded and your Family Membership payment of $29.95<br/> has been processed. Here are the details:<p/>	<br/><br/>	Membership Term: ${membershipTerm} <br/>Payment method: ${ccTypeId},${ccDisplayNumber}<br/>Transaction #: ${transactionNumber}<br/><br/>	Please check our FAQs or email us at <a href=''mailto:${supportEmail}''>${supportEmail}</a> if you have any<br/> questions. <br/><br/>
Thanks for helping your kids learn healthy money habits! <p/><u><a href=''${siteURL}''>${siteURL}</a></u><br/>Raise money-wise,caring kids	 </td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''mailto:${supportEmail}''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">${supportEmail}</font></a><br>    </td>  </tr></table></body>','Membership Receipt');


INSERT INTO sys_template values ('TRIAL_CANCELLATION_CONFIRMATION', 'Receipt for parent after trial period', '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			Cancellation Confirmation	  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">
Thank you for taking advantage of our free membership trial. <p/>
<br/><br/>
At your request, your family account with ThreeJars has been cancelled. Your <br/>credit card will not be charged for the annual membership fee.
<p/><br/><br/>
Please take a minute to reply to this email to let us know why you have chosen to <br/>cancel. We’d also like to hear any suggestions you may have. We’re always <br/>open to good ideas!
<p/><br/><br/>

To reinstate your account at any time, please contact <a href=''${siteURL}''>${siteURL}</a>.<p/>
<br/><br/>
We look forward to welcoming you back.</p>
<br/><br/>
<p/><u><a href=''${siteURL}''>${siteURL}</a></u><br/>Raise money-wise,caring kids	 </td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''mailto:${supportEmail}''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">${supportEmail}</font></a><br>    </td>  </tr></table></body>','Cancellation Confirmation');


INSERT INTO sys_template values ('PAYMENT_PROCESSING_PROBLEM', 'Receipt for parent after trial period', '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>ThreeJars</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" ><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			Payment Processing Problem	  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">		
Thank you for joining the ThreeJars community, where kids learn to save more,<br/> spend less, and help others.
<p/><br/><br/>
We have encountered a problem in processing your Family Membership<br/> payment of $29.95. Your financial institution has notified us that your credit card<br/> has been declined. 
<p/><br/><br/>
Please contact <a href=''${siteURL}''>${siteURL}</a> as soon as possible to resolve this issue.<br/> We will be happy to assist you.
<p/><br/><br/>
Your ThreeJars account username is ${userName}
<br/><br/>

<p/><u><a href=''${siteURL}''>${siteURL}</a></u><br/>Raise money-wise,caring kids	 </td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''mailto:${supportEmail}''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">${supportEmail}</font></a><br>    </td>  </tr></table></body>','Payment Processing Problem');


UPDATE sys_template SET subject = 'Getting started on ThreeJars' WHERE CONVERT( `sys_template`.`sys_template_id` USING utf8 ) = 'WELCOME_CODE' LIMIT 1 ;

