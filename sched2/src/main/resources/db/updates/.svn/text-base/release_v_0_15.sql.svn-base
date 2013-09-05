ALTER TABLE `cause` ADD `photo2_url` TEXT NOT NULL after `photo1_url`;
ALTER TABLE `cause` ADD `hos_summary_txt` TEXT NULL; 
ALTER TABLE `cause` ADD `hos_full_txt` TEXT NULL; 

UPDATE `cause` SET `photo2_url` = 'share/carbonfund_iconsTreePlanting.png' WHERE `cause`.`cause_id` = 1 LIMIT 1 ;
UPDATE `cause` SET `photo2_url` = 'share/carbonfund_iconsReforestation.png' WHERE `cause`.`cause_id` = 2 LIMIT 1 ;
UPDATE `cause` SET `photo2_url` = 'share/carbonfund_iconsLandfillMethane.png' WHERE `cause`.`cause_id` = 3 LIMIT 1 ;
UPDATE `cause` SET `photo2_url` = 'share/carbonfund_iconsRenewableEnergy.png' WHERE `cause`.`cause_id` = 4 LIMIT 1 ;

update `mail_inbox` set `mail_inbox`.`msg_type_id` = 'EMAIL' where `mail_inbox`.`msg_type_id` = 'email';

update tip set
tip.`tip_data` = 'SUPERSIZE YOUR SAVINGS   Check out \"Investment Options\" on your Save page. You''ll find lots of ways to make your money grow!'
where tip.`tip_data` like "SUPERSIZE YOUR SAVINGS   Check out %" and tip.`tip_section_id` = 'SAVE_SECTION';


update tip set
tip.`tip_data` = 'SWEET DEALS  When you put money in a savings bank, you''re actually lending it. In return, you earn interest---extra money!'
where tip.`tip_data` like "SWEET DEALS  When you put money in a savings %" and tip.`tip_section_id` = 'SAVE_SECTION';

update tip set
tip.`tip_data` = 'GROW YOUR GREEN   Travel in carpools...or bike or walk!'
where tip.`tip_data` like "GROW YOUR GREEN   Travel in %" and tip.`tip_section_id` = 'SHARE_SECTION';

update tip set
tip.`tip_data` = 'FAVORITE FUNDRAISERS   Flea Market - Invite friends to bring books, clothes, and household items to sell, and ask them to donate part of their profits to your cause.'
where tip.`tip_data` like "FAVORITE FUNDRAISERS   Flea %" and tip.`tip_section_id` = 'SHARE_SECTION';

update tip set
tip.`tip_data` = 'FAVORITE FUNDRAISERS    Bake Sale - Set up a table at a spot with lots of foot traffic and ask everyone you know to contribute home-baked goods.'
where tip.`tip_data` like "FAVORITE FUNDRAISERS    Bake %" and tip.`tip_section_id` = 'SHARE_SECTION';