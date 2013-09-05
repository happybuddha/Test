
ALTER TABLE `child_profile` ADD COLUMN `coming_pay_day` DATE NOT NULL AFTER `last_payday`;

ALTER TABLE `child_save` ADD COLUMN `current_interest_amount` DOUBLE AFTER `withdrawn`;

update child_profile set coming_pay_day = '2008-11-7';
update child_profile set payday_id = 'FRI';

update investment set rate = '742.9' where investment_id = 'Parent_Bond_10';
update investment set rate = '195.7' where investment_id = 'Parent_Bond_50';
update investment set rate = '133.3' where investment_id = 'Parent_Bond_100';
update investment set rate = '34.8' where investment_id = 'Parent_Bond_500';
update investment set rate = '20.3' where investment_id = 'Parent_Bond_1000';
