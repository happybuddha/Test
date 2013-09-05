/* delete the transaction contents because some records were added with Null "account" */

delete from child_money_transaction;

/* 0 should not be allowed as a minimum invetment*/
Update investment set minimum_amount=0.5 where minimum_amount=0;
Update child_save set amount_invested=0.5 where amount_invested=0;

/* Fixing child_money_transaction to forbid null as account value*/ 
ALTER TABLE child_money_transaction MODIFY COLUMN `account` VARCHAR(50) NOT NULL DEFAULT '';

/* Cause data updates */
ALTER TABLE cause ADD COLUMN `location` VARCHAR(100);
update cause set description = "For $5 a tree you can plant a Mangrove tree in India.  Protect coastal areas from erosion and provide habitat to animals." where cause_id = 1;
update cause set location = "India" where cause_id = 1;
update cause set confirmation_txt = "Thanks for planting a tree in India!" where cause_id = 1;

update cause set description = "Fight global warming support Carbonfund.org Nicaraguan reforestation project. Together we are reforesting an area larger than Central Park!" where cause_id = 2;
update cause set location = "Rivas Provence Nicaragua" where cause_id = 2;
update cause set confirmation_txt = "Thanks so much for fighting global warming through reforestation!" where cause_id = 2;

update cause set description = "Global warming stinks! But there are alternatives! Landfill methane plants burn trash then turn it into clean energy. Now that’s nothing to trash talk!" where cause_id = 3;
update cause set location = "New Bedford MA" where cause_id = 3;
update cause set confirmation_txt = "You donation is working to create a clean energy future for America!  Thank you for it!" where cause_id = 3;


update login set password = '' where login.fp_id in (select child_profile_id from child_profile);