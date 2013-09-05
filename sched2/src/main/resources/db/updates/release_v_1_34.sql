/*SQL update script for release v1.34 */
UPDATE parent_tip SET tip_content = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css"><!--.verdana {	font-family: Verdana, Geneva,sans-serif;}--></style></head>
<div><body ><table  width="300px" border="0"><tr><td colspan="2" width="330px" style="padding:0px 10px 0px 0px;font-family:verdana;font-size:22px;line-height:26px;"><b>Parent Tips!</b></td></tr><br/>
<tr><td width="70px"><img src="images/parentTips/icon_moneybag.jpg" width="58" height="58"/></td>
<td><p>Help your child find opportunities to earn </p></td></tr><tr><td width="70px"><img src="images/parentTips/icon_broom.jpg" width="58" height="58"/></td>
<td><p>Assign and keep track of chores</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_wheelbarrow.jpg" width="58" height="58"/></td>
<td><p>Add Projects, you can even create your own</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_gift.jpg" width="58" height="58"/></td>
<td><p>A gift for any occasion can be given through FiftyP</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_tie.jpg" width="58" height="58"/></td>
<td><p>Tie or untie allowance to Chores</p></td></tr><tr><td width="70px"><img src="images/parentTips/icon_arrows.jpg" width="58" height="58"/></td>
<td><p>Add to or withdraw money from your child''s Save, Spend, or Share Accounts</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_bars.jpg" width="58" height="58"/></td>
<td><p>Change the way money is divided among your child''s Accounts</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_binoculars.jpg" width="58" height="58"/></td>
<td><p>Observe your child''s activities on FiftyP</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_percent.jpg" width="58" height="58"/></td>
<td><p>Provide extra incentive by matching your child''s Save Money</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_chart.jpg" width="58" height="58"/></td>
<td><p>Check your child''s account activity</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_badge.jpg" width="58" height="58"/></td>
<td><p>Conveniently change your child''s profile</p></td></tr><tr><td width="70px"><img src="images/parentTips/icon_heart.jpg" width="58" height="58"/></td>
<td><p>See how your child is awarding points to this month''s four causes!</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_globe.jpg" width="58" height="58"/></td>
<td><p>Celebrate your family''s charitable giving</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_boygirl.jpg" width="58" height="58"/></td>
<td><p>Upload your favorite photo!</p></td></tr>
</table></div></body>'
WHERE CONVERT( parent_tip.parent_tip_id USING utf8 ) = 'PARENT_TIPS' LIMIT 1 ;

UPDATE parent_tip SET tip_content = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css"><!--.verdana {	font-family: Verdana, Geneva, sans-serif;}--></style></head>
<div><body ><table  width="300px" border="0"><tr><td colspan="2" width="330px" style="padding:0px 10px 0px 0px;font-family:verdana;font-size:22px;line-height:26px;"><b>Engage Your Kids!</b></td></tr><br/>
<tr><td colspan="2" align="left" style="padding-left:5px;font-size:12px;font-family:verdana;">Have your ${pronoun1} log in and get started!</td> </tr>
<tr><td width="70px"><img src="images/parentTips/engage1.png" width="56" height="49"/></td>
<td><p>There''s ${shareAmount} in ${pronoun2} Share Account${accountString}, compliments of FiftyP, so ${pronoun3} can start making a difference right away.</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/engage2.png" width="56" height="49"/></td>
<td><p>${pronoun4} collect points by engaging in healthy financial and social activities - and have fun using them at the Share Shop to direct FiftyP''s monthly charitable donation.</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/engage3.png" width="56" height="49"/></td>
<td><p>Encourage your ${pronoun1} to use the goal setting app - and learn the reward of working toward long-term spending goals.</p></td></tr>
</table></div></body>'
WHERE CONVERT( parent_tip.parent_tip_id USING utf8 ) = 'ENGAGE_KIDS' LIMIT 1 ;


UPDATE parent_tip SET tip_content = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css"><!--.verdana {	font-family: Verdana, Geneva, sans-serif;}--></style></head>
<div><body ><table  width="300px" border="0">	<tr><td width="300px" style="padding:0px 10px 0px 0px;font-family:verdana;font-size:22px;line-height:26px;" ><b>Welcome to FiftyP</b></td></tr><br/>
<tr><td align="left" style="padding-left:5px;font-size:12px; font-family:verdana;">Welcome to FiftyP, and hats off for getting your ${pronoun1} on the right track! ${pronoun2}
<img align="left" src="images/parentTips/welcome_tip.png" width="159" height="127"/><span style="text-align:right"> on ${pronoun3} way to developing
healthy financial habits, informed by solid skills and good judgment.</span></td></tr></table></div></body>'
WHERE CONVERT( parent_tip.parent_tip_id USING utf8 ) = 'WELCOME' LIMIT 1 ;

/* #1147 - Adding share store items to the july causes */
select @causeId := (select cause_id from cause where name = "Treetops for Titis");

INSERT INTO `share_store_item` ( `cause_id`, `name`, `icon`, `point_value`, `globe_pos_x`, `globe_pos_y`, `thank_you_msg`,`description`) VALUES
  (@causeId, 'Food', 'treetops_food.swf', 5, 76, 72, "Thanks for supporting the Treetops for Titis project. The forest provides a tasty diet for the tamarins: all kinds of fruit, seeds, insects, and sweet nectar.","The forest provides a tasty diet for the tamarins: all kinds of fruit, seeds, insects, and sweet nectar."),
  (@causeId, 'Grass plants', 'treetops_grassPlants.swf', 10, 83, 76, "Thanks for supporting the Treetops for Titis project. Planting better grass means cattle need less grazing land - and more of the forest can be saved.","Planting better grass means cattle need less grazing land - and more of the forest can be saved."),
  (@causeId, 'Thermos', 'treetops_thermos.swf', 15,95,75, "Thanks for supporting the Treetops for Titis project. There''s no coffee shop in the forest, so workers bring their own.","There''s no coffee shop in the forest, so workers bring their own."),
  (@causeId, 'Shovel', 'treetops_shovel.swf', 20, 81, 83, "Thanks for supporting the Treetops for Titis project. Planting trees starts with a deep hole - and a strong shovel!","Planting trees starts with a deep hole - and a strong shovel!"),
  (@causeId, 'Hiking gear', 'treetops_hikingGear.swf', 25, 93, 83, "Thanks for supporting the Treetops for Titis project. Researchers trek through the forest to check on the tamarins and other wildlife.","Researchers trek through the forest to check on the tamarins and other wildlife."),
  (@causeId, 'Binoculars', 'treetops_binoculars.swf', 35,102,88, "Thanks for supporting the Treetops for Titis project. It''s hard to spot the tiny monkeys in the tall trees without a good pair of binoculars.","It''s hard to spot the tiny monkeys in the tall trees without a good pair of binoculars."),
  (@causeId, 'Wheelbarrow', 'treetops_wheelbarrow.swf', 50, 82, 97, "Thanks for supporting the Treetops for Titis project. A wheelbarrow comes in handy for carrying soil and planting supplies.","A wheelbarrow comes in handy for carrying soil and planting supplies."),
  (@causeId, 'Flatbed truck', 'treetops_flatbedTruck.swf', 100, 94, 99, "Thanks for supporting the Treetops for Titis project. A flatbed truck delivers young trees to fill in the gaps in the monkeys'' habitat.","A flatbed truck delivers young trees to fill in the gaps in the monkeys'' habitat.");
  
select @causeId := (select cause_id from cause where name = "Share the Music");

INSERT INTO `share_store_item` ( `cause_id`, `name`, `icon`, `point_value`, `globe_pos_x`, `globe_pos_y`, `thank_you_msg`,`description`) VALUES
  (@causeId, 'Maracas', 'music_maracas.swf', 5, 24, 21, "Thanks for supporting the Share the Music program. A pair of maracas is a good way to get the rhythm going!","A pair of maracas is a good way to get the rhythm going!"),
  (@causeId, 'Pizza', 'music_pizza.swf', 10, 40, 25, "Thanks for supporting the Share the Music program. What''s better than a pizza break during a long rehearsal?","What''s better than a pizza break during a long rehearsal?"),
  (@causeId, 'CD', 'music_cd.swf', 15,62,25, "Thanks for supporting the Share the Music program. A school orchestra concert can be recorded to produce a CD.","A school orchestra concert can be recorded to produce a CD."),
  (@causeId, 'Microphone', 'music_microphone.swf', 20,82,27, "Thanks for supporting the Share the Music program. The conductor needs a mic to introduce each piece of music.","The conductor needs a mic to introduce each piece of music."),
  (@causeId, 'Speakers', 'music_speakers.swf', 25, 71, 32, "Thanks for supporting the Share the Music program. Speakers bring the music to every corner of the school auditorium.","Speakers bring the music to every corner of the school auditorium."),
  (@causeId, 'Trumpet', 'music_trumpet.swf', 35,82,37, "Thanks for supporting the Share the Music program. Who knows? The trumpet player in the school band may be the next Miles Davis.","Who knows? The trumpet player in the school band may be the next Miles Davis."),
  (@causeId, 'Drum Set', 'music_drumSet.swf', 50, 65, 42, "Thanks for supporting the Share the Music program. The drummer keeps the beat with cymbals, bass drum, snare, and tom-toms.","The drummer keeps the beat with cymbals, bass drum, snare, and tom-toms."),
  (@causeId, 'Touring bus', 'music_TouringBus.swf', 100,45,43, "Thanks for supporting the Share the Music program. School orchestras often hit the road to share their music with others.","School orchestras often hit the road to share their music with others.");

select @causeId := (select cause_id from cause where name = "Safe Stomping Grounds");

INSERT INTO `share_store_item` ( `cause_id`, `name`, `icon`, `point_value`, `globe_pos_x`, `globe_pos_y`, `thank_you_msg`,`description`) VALUES
  (@causeId, 'Cookies', 'grounds_cookies.swf', 5,37, 31, "Thanks for supporting the Safe Stomping Grounds project. Elephants love cookies, even when there''s medicine inside.","Elephants love cookies, even when there''s medicine inside."),
  (@causeId, 'Scrub brush', 'grounds_brush.swf', 10, 41, 37, "Thanks for supporting the Safe Stomping Grounds project. A long handle makes it easier to scrub an elephant''s back!","A long handle makes it easier to scrub an elephant''s back!"),
  (@causeId, 'Rake', 'grounds_rake.swf', 15,44, 43, "Thanks for supporting the Safe Stomping Grounds project. Elephants munch on hay all day long, so a rake is always handy.","Elephants munch on hay all day long, so a rake is always handy."),
  (@causeId, 'Logs', 'grounds_logs.swf', 20, 34, 40, "Thanks for supporting the Safe Stomping Grounds project. Rolling logs is great fun, and treats can be hidden in the knotholes.","Rolling logs is great fun, and treats can be hidden in the knotholes."),
  (@causeId, 'Veterinarian', 'grounds_veterinarian.swf', 25, 50, 26, "Thanks for supporting the Safe Stomping Grounds project. A vet is always on call to treat sick or injured animals.","A vet is always on call to treat sick or injured animals."),
  (@causeId, 'Shower', 'grounds_shower.swf', 35,59,27, "Thanks for supporting the Safe Stomping Grounds project. Elephants love getting wet - to cool off and stay clean.","Elephants love getting wet - to cool off and stay clean."),
  (@causeId, 'Fence', 'grounds_fence.swf', 50, 51, 35, "Thanks for supporting the Safe Stomping Grounds project. Building a fence around the mountain will create a safe, roomy habitat for playful pachyderms.","Building a fence around the mountain will create a safe, roomy habitat for playful pachyderms."),
  (@causeId, 'Trailer', 'grounds_trailer.swf', 100, 59, 36, "Thanks for supporting the Safe Stomping Grounds project. It takes a big truck to transport a 10,000-pound elephant!","It takes a big truck to transport a 10,000-pound elephant!");

select @causeId := (select cause_id from cause where name = "Prevent Malaria");

INSERT INTO `share_store_item` ( `cause_id`, `name`, `icon`, `point_value`, `globe_pos_x`, `globe_pos_y`, `thank_you_msg`,`description`) VALUES
  (@causeId, 'Clothes pin', 'malaria_clothesPin.swf', 5, 153, 79, "Thanks for joining the struggle to prevent malaria. The net should be attached to a frame above the bed, with no holes for mosquitoes to enter.","The net should be attached to a frame above the bed, with no holes for mosquitoes to enter."),
  (@causeId, 'Sprayer', 'malaria_sprayer.swf', 10, 160, 79, "Thanks for joining the struggle to prevent malaria. Spraying the walls of a home with insecticide helps kill mosquitoes that come inside.","Spraying the walls of a home with insecticide helps kill mosquitoes that come inside."),
  (@causeId, 'Medicine', 'malaria_medicine.swf', 15,170, 79, "Thanks for joining the struggle to prevent malaria. A person who gets malaria should be treated right away.","A person who gets malaria should be treated right away."),
  (@causeId, 'Bedtime books', 'malaria_bedtimeBooks.swf', 20, 153, 88, "Thanks for joining the struggle to prevent malaria. A family can snuggle under the net to read favorite bedtime stories.","A family can snuggle under the net to read favorite bedtime stories."),
  (@causeId, 'Sandals', 'malaria_sandals.swf', 25, 160, 88, "Thanks for joining the struggle to prevent malaria. Many parents have to walk for hours to get medicine for a sick child.","Many parents have to walk for hours to get medicine for a sick child."),
  (@causeId, 'Bed net package', 'malaria_bedNetPackage.swf', 35,170,88, "Thanks for joining the struggle to prevent malaria. Health workers deliver bed nets to distant villages and teach families how to use them.","Health workers deliver bed nets to distant villages and teach families how to use them."),
  (@causeId, 'Insecticide', 'malaria_insecticide.swf', 50, 153, 99, "Thanks for joining the struggle to prevent malaria. Bed nets treated with mosquito-killing chemicals provide the best protection. ","Bed nets treated with mosquito-killing chemicals provide the best protection. "),
  (@causeId, 'Treatment kit', 'malaria_treatmentKit.swf', 100, 170, 99, "Thanks for joining the struggle to prevent malaria. Teachers are trained to spot malaria and give medicine to their students.","Teachers are trained to spot malaria and give medicine to their students.");

/* End of #1147 */

/* #1085 updated SQL without using UTF8 convertion statements*/

UPDATE parent_tip SET tip_content = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css"><!--.verdana {	font-family: Verdana, Geneva,sans-serif;}--></style></head>
<div><body ><table  width="300px" border="0"><tr><td colspan="2" width="330px" style="padding:0px 10px 0px 0px;font-family:verdana;font-size:22px;line-height:26px;"><b>Parent Tips!</b></td></tr><br/>
<tr><td width="70px"><img src="images/parentTips/icon_moneybag.jpg" width="58" height="58"/></td>
<td><p>Help your child find opportunities to earn </p></td></tr><tr><td width="70px"><img src="images/parentTips/icon_broom.jpg" width="58" height="58"/></td>
<td><p>Assign and keep track of chores</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_wheelbarrow.jpg" width="58" height="58"/></td>
<td><p>Add Projects, you can even create your own</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_gift.jpg" width="58" height="58"/></td>
<td><p>A gift for any occasion can be given through FiftyP</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_tie.jpg" width="58" height="58"/></td>
<td><p>Tie or untie allowance to Chores</p></td></tr><tr><td width="70px"><img src="images/parentTips/icon_arrows.jpg" width="58" height="58"/></td>
<td><p>Add to or withdraw money from your child''s Save, Spend, or Share Accounts</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_bars.jpg" width="58" height="58"/></td>
<td><p>Change the way money is divided among your child''s Accounts</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_binoculars.jpg" width="58" height="58"/></td>
<td><p>Observe your child''s activities on FiftyP</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_percent.jpg" width="58" height="58"/></td>
<td><p>Provide extra incentive by matching your child''s Save Money</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_chart.jpg" width="58" height="58"/></td>
<td><p>Check your child''s account activity</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_badge.jpg" width="58" height="58"/></td>
<td><p>Conveniently change your child''s profile</p></td></tr><tr><td width="70px"><img src="images/parentTips/icon_heart.jpg" width="58" height="58"/></td>
<td><p>See how your child is awarding points to this month''s four causes!</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_globe.jpg" width="58" height="58"/></td>
<td><p>Celebrate your family''s charitable giving</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/icon_boygirl.jpg" width="58" height="58"/></td>
<td><p>Upload your favorite photo!</p></td></tr>
</table></div></body>'
WHERE parent_tip_id = 'PARENT_TIPS';

UPDATE parent_tip SET tip_content = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css"><!--.verdana {	font-family: Verdana, Geneva, sans-serif;}--></style></head>
<div><body ><table  width="300px" border="0"><tr><td colspan="2" width="330px" style="padding:0px 10px 0px 0px;font-family:verdana;font-size:22px;line-height:26px;"><b>Engage Your Kids!</b></td></tr><br/>
<tr><td colspan="2" align="left" style="padding-left:5px;font-size:12px;font-family:verdana;">Have your ${pronoun1} log in and get started!</td> </tr>
<tr><td width="70px"><img src="images/parentTips/engage1.png" width="56" height="49"/></td>
<td><p>There''s ${shareAmount} in ${pronoun2} Share Account${accountString}, compliments of FiftyP, so ${pronoun3} can start making a difference right away.</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/engage2.png" width="56" height="49"/></td>
<td><p>${pronoun4} collect points by engaging in healthy financial and social activities - and have fun using them at the Share Shop to direct FiftyP''s monthly charitable donation.</p></td></tr>
<tr><td width="70px"><img src="images/parentTips/engage3.png" width="56" height="49"/></td>
<td><p>Encourage your ${pronoun1} to use the goal setting app - and learn the reward of working toward long-term spending goals.</p></td></tr>
</table></div></body>'
WHERE parent_tip_id = 'ENGAGE_KIDS';


UPDATE parent_tip SET tip_content = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css"><!--.verdana {	font-family: Verdana, Geneva, sans-serif;}--></style></head>
<div><body ><table  width="300px" border="0">	<tr><td width="300px" style="padding:0px 10px 0px 0px;font-family:verdana;font-size:22px;line-height:26px;" ><b>Welcome to FiftyP</b></td></tr><br/>
<tr><td align="left" style="padding-left:5px;font-size:12px; font-family:verdana;">Welcome to FiftyP, and hats off for getting your ${pronoun1} on the right track! ${pronoun2}
<img align="left" src="images/parentTips/welcome_tip.png" width="159" height="127"/><span style="text-align:right"> on ${pronoun3} way to developing
healthy financial habits, informed by solid skills and good judgment.</span></td></tr></table></div></body>'
WHERE parent_tip_id = 'WELCOME';

/* End of 1085 */

/* #1142 */
 INSERT INTO sys_template (sys_template_id, description, design, subject) VALUES
('CONFIRMATION_REQUEST_SEND_TO_PARENT', 'Email template of child''s confirmation request sent to parent', '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">    <table width="100%" border="0">        <tr>          <td> <img src="cid:logo_parent.gif" width="294" height="84"></td>       <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"> <font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"> <b> FiftyP request confirmation.${approveRejectstatus}</b></font></td>        </tr>    </table></td>  </tr>   <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;"> <p>Thank you. This is to confirm that you have ${approveRejectstatus} ${childName}''s request to ${message} <br/>  </p>With best wishes,<br>Team FiftyP<br> <a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>			</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>', 'FiftyP request %s confirmation');

/*  for change the body of REQUEST_SEND_TO_PARENT  email template.*/
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template of child's request sent to parent");
 UPDATE sys_template
 SET design ='<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>${request}</b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">	<p>Dear ${parentName},</p>	<p>		<b>A request is awaiting your approval at FiftyP.com!</b>		<br/> 		<b>${childName}</b> ${childRequest} For details, log in to <a href=''http://www.fiftyp.com''>www.fiftyp.com</a> and check your message center. oR you can reply to this mail and respond as approve or reject either approving or rejecting the request.</p>With best wishes,<br>Team FiftyP<br><a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>			</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>'
 WHERE sys_template_id = @systemTemplateId  ;

