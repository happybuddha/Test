/*SQL update script for release v1.25 */

/* #838 - Add is_deleted column to the fiftyp_donation table */
ALTER TABLE fiftyp_donation ADD is_deleted TINYINT NOT NULL DEFAULT '0';

/* #880 - Removing photo1_url and icon_url from the cause table */
ALTER TABLE cause DROP photo1_url,DROP icon_url;  

ALTER TABLE mail_inbox ADD mail_inbox_thread_id BIGINT  NOT NULL default 1 AFTER is_read ;

ALTER TABLE mail_sent ADD mail_inbox_thread_id BIGINT  NOT NULL default 1 ;

 CREATE TABLE mail_inbox_thread (
mail_inbox_thread_id BIGINT NOT NULL AUTO_INCREMENT ,
parent_deleted TINYINT( 1 ) NOT NULL DEFAULT '0',
child_deleted TINYINT( 1 ) NOT NULL DEFAULT '0',
PRIMARY KEY ( mail_inbox_thread_id )
) ENGINE = InnoDB;



INSERT INTO mail_inbox_thread VALUES (
'1', '1', '1'
);

ALTER TABLE mail_inbox 
ADD CONSTRAINT FK_mail_inbox_thread FOREIGN KEY ( mail_inbox_thread_id )
REFERENCES mail_inbox_thread( mail_inbox_thread_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE mail_sent
ADD CONSTRAINT FK_mail_inbox_thread_mail_inbox_sent FOREIGN KEY ( mail_inbox_thread_id )
REFERENCES mail_inbox_thread( mail_inbox_thread_id ) ON DELETE RESTRICT ON UPDATE RESTRICT;

/* #903 (issue 14)*/
select @gift_occassion_category:=(select mm_gift_occasion_category_id from mm_gift_occasion_category where name = "Holidays");
UPDATE mm_gift_occasion_category SET sort_order = '3' WHERE mm_gift_occasion_category_id = @gift_occassion_category;

select @gift_occassion_category:=(select mm_gift_occasion_category_id from mm_gift_occasion_category where name = "Celebrations");
UPDATE mm_gift_occasion_category SET sort_order = '1' WHERE mm_gift_occasion_category_id = @gift_occassion_category;

/* Update causes for May (same as April) */
update cause set month = 4 where month = 3;