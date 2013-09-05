/*SQL update script for release v1.24 */
/* #541 - adding state_id column to the state table and inserting values to it */
ALTER TABLE state ADD state_id INT( 4 ) NULL ;
/* For the Canada states */
UPDATE state SET state_id = '1'  WHERE state_code = 'AB';
UPDATE state SET state_id = '2'  WHERE state_code = 'BC';
UPDATE state SET state_id = '3'  WHERE state_code = 'MB' ;
UPDATE state SET state_id = '4'  WHERE state_code = 'NB' ;
UPDATE state SET state_id = '5'  WHERE state_code = 'NL' ;
UPDATE state SET state_id = '7'  WHERE state_code = 'NS' ;
UPDATE state SET state_id = '8'  WHERE state_code = 'NT' ;
UPDATE state SET state_id = '9'  WHERE state_code = 'NU' ;
UPDATE state SET state_id = '10' WHERE state_code = 'ON' ;
UPDATE state SET state_id = '11' WHERE state_code = 'PE' ;
UPDATE state SET state_id = '12' WHERE state_code = 'QC' ;
UPDATE state SET state_id = '13' WHERE state_code = 'SK' ;
UPDATE state SET state_id = '14' WHERE state_code = 'YT' ;

/* For the US states */
UPDATE state SET state_id = '16' WHERE state_code = 'AK' ;
UPDATE state SET state_id = '18' WHERE state_code = 'AZ' ;
UPDATE state SET state_id = '19' WHERE state_code = 'AR' ;
UPDATE state SET state_id = '20' WHERE state_code = 'CA' ;
UPDATE state SET state_id = '21' WHERE state_code = 'CO' ;
UPDATE state SET state_id = '22' WHERE state_code = 'CT' ;
UPDATE state SET state_id = '23' WHERE state_code = 'DE' ;
UPDATE state SET state_id = '24' WHERE state_code = 'DC' ;
UPDATE state SET state_id = '26' WHERE state_code = 'FL' ;
UPDATE state SET state_id = '27' WHERE state_code = 'GA' ;
UPDATE state SET state_id = '29' WHERE state_code = 'HI' ;
UPDATE state SET state_id = '30' WHERE state_code = 'ID' ;
UPDATE state SET state_id = '31' WHERE state_code = 'IL' ;
UPDATE state SET state_id = '32' WHERE state_code = 'IN' ;
UPDATE state SET state_id = '33' WHERE state_code = 'IA' ;
UPDATE state SET state_id = '34' WHERE state_code = 'KS' ;
UPDATE state SET state_id = '35' WHERE state_code = 'KY' ;
UPDATE state SET state_id = '36' WHERE state_code = 'LA' ;
UPDATE state SET state_id = '37' WHERE state_code = 'ME' ;
UPDATE state SET state_id = '39' WHERE state_code = 'MD' ;
UPDATE state SET state_id = '40' WHERE state_code = 'MA' ;
UPDATE state SET state_id = '41' WHERE state_code = 'MI' ;
UPDATE state SET state_id = '42' WHERE state_code = 'MN' ;
UPDATE state SET state_id = '43' WHERE state_code = 'MS' ;
UPDATE state SET state_id = '44' WHERE state_code = 'MO' ;
UPDATE state SET state_id = '45' WHERE state_code = 'MT' ;
UPDATE state SET state_id = '46' WHERE state_code = 'NE' ;
UPDATE state SET state_id = '47' WHERE state_code = 'NV' ;
UPDATE state SET state_id = '48' WHERE state_code = 'NH' ;
UPDATE state SET state_id = '49' WHERE state_code = 'NJ' ;
UPDATE state SET state_id = '50' WHERE state_code = 'NM' ;
UPDATE state SET state_id = '51' WHERE state_code = 'NY' ;
UPDATE state SET state_id = '52' WHERE state_code = 'NC' ;
UPDATE state SET state_id = '53' WHERE state_code = 'ND' ;
UPDATE state SET state_id = '55' WHERE state_code = 'OH' ;
UPDATE state SET state_id = '56' WHERE state_code = 'OK' ;
UPDATE state SET state_id = '57' WHERE state_code = 'OR' ;
UPDATE state SET state_id = '58' WHERE state_code = 'PA' ;
UPDATE state SET state_id = '60' WHERE state_code = 'RI' ;
UPDATE state SET state_id = '61' WHERE state_code = 'SC' ;
UPDATE state SET state_id = '62' WHERE state_code = 'SD' ;
UPDATE state SET state_id = '63' WHERE state_code = 'TN' ;
UPDATE state SET state_id = '64' WHERE state_code = 'TX' ;
UPDATE state SET state_id = '65' WHERE state_code = 'UT' ;
UPDATE state SET state_id = '66' WHERE state_code = 'VT' ;
UPDATE state SET state_id = '68' WHERE state_code = 'VA' ;
UPDATE state SET state_id = '70' WHERE state_code = 'WA' ;
UPDATE state SET state_id = '71' WHERE state_code = 'WV' ;
UPDATE state SET state_id = '72' WHERE state_code = 'WI' ;
UPDATE state SET state_id = '73' WHERE state_code = 'WY' ;
/* End of #541 */

/* #883 (set max amount values for high yield investments. The 15% high yield investment will have a maximum_amount value of null because it will be calculated as max amount in user's save account. */
update investment set maximum_amount = 24.99 where investment_id = 'HI_Yield_1';
update investment set maximum_amount = 49.99 where investment_id = 'HI_Yield_2';
update investment set maximum_amount = 74.99 where investment_id = 'HI_Yield_3';
update investment set maximum_amount = 99.99 where investment_id = 'HI_Yield_4';

/* #888 (3-year membership price should be $74.95) */
update subscription_type set price = 74.95 where subscription_type_id = 'THREE_YEARS';
/* #888 (update hos_summary_txt for March causes) */
update cause set hos_summary_txt = 'to Save the Seals' where name = 'Save the Seals';
update cause set hos_summary_txt = 'to Greener Truck Stops' where name = 'Greener Truck Stops';
update cause set hos_summary_txt = 'to Name that Whale!' where name = 'Name that Whale!';
update cause set hos_summary_txt = 'to School Bus Project' where name = 'School Bus Project';

/* Fix FileNotFoundException when confirmation email notification for a Play Soccer cause was trying to be sent.  Problem due to extra space char in the logo_url value. */
update ngo_profile set logo_url = 'play_soccer_logo.jpg' where ngo_name = 'Play Soccer Nonprofit International';

update cause set month = 1 where cause_id in (1, 2, 3, 4);
update cause set month = 2 where cause_id in (5, 6, 7, 8);
update cause set month = 3 where cause_id in (9, 10, 11, 12);