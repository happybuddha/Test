/*SQL update script for release v1.33 */
ALTER TABLE mail_inbox ADD content TEXT NULL ;

CREATE TABLE parent_tip (
parent_tip_id VARCHAR( 50 ) NOT NULL ,
subject VARCHAR( 50 ) NOT NULL ,
tip_from VARCHAR( 20 ) NOT NULL ,
posted_date DATETIME NOT NULL ,
tip_content TEXT NOT NULL ,
PRIMARY KEY ( parent_tip_id )
);  

INSERT INTO msg_type (
msg_type_id ,
name ,
description
)
VALUES (
'TIP', 'TIP', 'Parent tip'
);

INSERT INTO parent_tip (parent_tip_id, subject, tip_from, posted_date, tip_content) VALUES ('WELCOME', 'Welcome to FiftyP', 'FiftyP', '2009-06-26 18:02:01', '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css"><!--.verdana {	font-family: Verdana, Geneva, sans-serif;}--></style></head>
<div><body ><table  width="300px" border="0">	<tr><td width="300px" style="padding:15px 10px 0px 0px;font-family:verdana;font-size:22px;" ><b>Welcome to FiftyP</b></td></tr><br/>
<tr><td align="left" style="padding-left:5px;font-size:12px; font-family:verdana;">Welcome to FiftyP, and hats off for getting your ${pronoun1} on the right track! ${pronoun2} 
 <img align="left" src="images/parentTips/welcome_tip.png" width="159" height="127"/><span style="text-align:right"> on ${pronoun3} way to developing 
 healthy financial habits, informed by solid skills and good judgment.</span></td></tr></table></div></body>');
 
INSERT INTO parent_tip (parent_tip_id, subject, tip_from, posted_date, tip_content) VALUES ('ENGAGE_KIDS', 'Engage Your Kids', 'FiftyP', '2009-06-26 18:06:05',
 '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css"><!--.verdana {	font-family: Verdana, Geneva, sans-serif;}--></style></head>
<div><body ><table  width="300px" border="0"><tr><td colspan="2" width="330px" style="padding:15px 10px 0px 0px;font-family:verdana;font-size:22px;" ><b>Engage Your Kids!</b></td></tr><br/>
<tr><td colspan="2" align="left" style="padding-left:5px;font-size:12px; font-family:verdana;">Have your ${pronoun1} log in and get started!</td> </tr>

<tr><td width="70px"><img src="images/parentTips/engage1.png" width="56" height="49"/></td>
<td><p>There''s ${shareAmount} in ${pronoun2} Share Account${accountString}, compliments of FiftyP, so ${pronoun3} can start making a difference right away.</p></td></tr>

<tr><td width="70px"><img src="images/parentTips/engage2.png" width="56" height="49"/></td>
<td><p>${pronoun4} collect points by engaging in healthy financial and social activities - and have fun using them at the Share Shop to direct FiftyP''s monthly charitable donation.</p></td></tr>

<tr><td width="70px"><img src="images/parentTips/engage3.png" width="56" height="49"/></td>
<td><p>Encourage your ${pronoun1} to use the goal setting app - and learn the reward of working toward long-term spending goals.</p></td></tr>
</table></div></body>');

INSERT INTO parent_tip (parent_tip_id, subject, tip_from, posted_date, tip_content) VALUES ('PARENT_TIPS', 'Parent Tips', 'FiftyP', '2009-06-26 18:08:47', 
'<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css"><!--.verdana {	font-family: Verdana, Geneva, sans-serif;}--></style></head>
<div><body ><table  width="300px" border="0"><tr><td colspan="2" width="330px" style="padding:15px 10px 0px 0px;font-family:verdana;font-size:22px;" ><b>Parent Tips!</b></td></tr><br/>

<tr><td width="70px"><img src="images/parentTips/icon_moneybag.jpg" width="58" height="58"/></td>
<td><p>Help your child find opportunities to earn </p></td></tr>

<tr><td width="70px"><img src="images/parentTips/icon_broom.jpg" width="58" height="58"/></td>
<td><p>Assign and keep track of chores</p></td></tr>

<tr><td width="70px"><img src="images/parentTips/icon_wheelbarrow.jpg" width="58" height="58"/></td>
<td><p>Add Projects, you can even create your own</p></td></tr>

<tr><td width="70px"><img src="images/parentTips/icon_gift.jpg" width="58" height="58"/></td>
<td><p>A gift for any occasion can be given through FiftyP</p></td></tr>

<tr><td width="70px"><img src="images/parentTips/icon_tie.jpg" width="58" height="58"/></td>
<td><p>Tie or untie allowance to Chores</p></td></tr>

<tr><td width="70px"><img src="images/parentTips/icon_arrows.jpg" width="58" height="58"/></td>
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
<td><p>Conveniently change your child''s profile</p></td></tr>

<tr><td width="70px"><img src="images/parentTips/icon_heart.jpg" width="58" height="58"/></td>
<td><p>See how your child is awarding points to this month''s four causes!</p></td></tr>

<tr><td width="70px"><img src="images/parentTips/icon_globe.jpg" width="58" height="58"/></td>
<td><p>Celebrate your family''s charitable giving</p></td></tr>

<tr><td width="70px"><img src="images/parentTips/icon_boygirl.jpg" width="58" height="58"/></td>
<td><p>Upload your favorite photo!</p></td></tr>
</table></div></body>');