/*SQL update script for release v1.42 */
/* 1415 - adding new cause categories */
INSERT INTO cause_category (name ,cause_category_id ,description) VALUES (
'Help the Animals', 'HELP THE ANIMALS', 'Help the Animals'),
('Protect the Environment', 'PROTECT THE ENVIRONMENT', 'Protect the Environment'),
('Peace', 'PEACE', 'Peace'),
('Education', 'EDUCATION', 'Education'),
('Healthcare', 'HEALTH CARE	', 'Healthcare');

/* updating video_order column to null by default */
 ALTER TABLE `cause` CHANGE `video_order` `video_order` TINYINT( 4 ) NULL  ;
/* End - 1415 */