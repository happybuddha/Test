/*SQL update script for release v1.32 */

/* #1098 */
UPDATE cause
SET description="Babies who are severely undernourished need special foods to help them quickly gain weight and build strength. Plumpy'nut, which costs $2 per packet, is a ready-to-eat mixture that tastes like peanut butter and gives babies the calories and protein they need to regain their strength.  Your donation makes it possible to provide this needed help to young children in countries where drought, floods and conflict often lead to food shortages, poor nutrition and disease."
WHERE name = "Plumpy'nut";

/* #1031 */
CREATE TABLE forbidden_nickname (
forbidden_name_id BIGINT NOT NULL AUTO_INCREMENT ,
forbidden_name VARCHAR( 50 ) NOT NULL ,
match_if_contains TINYINT NOT NULL DEFAULT '0',
PRIMARY KEY ( forbidden_name_id )
);

/* #1111 - updating the FiftyP times content */
select @causeId:=(select cause_id from cause where name = "Reef Rescue" and month="5");
UPDATE cause 
SET hos_full_txt ='Comes ^ Through for Coral Reefs!# Global warming is threatening the earth''s coral reefs-bad<br>news for the countless creatures that call it home, and for the<br>millions of people who depend on @ the reefs for food, jobs,<br/>and protection from the sea. But help may come from <b><b>ChildName</b></b><br/>of FiftyP, who donated dollaramount from gender Share Account to<br/>support the work of scientists in Palau.<br/><br/>Rising ocean temperatures can cause "coral bleaching": Corals dump the tiny algae that provide their food and brilliant colors, causing sections of the reef to become weak and turn white. Some corals seem to resist bleaching, however. If protected from other dangers, they''re more likely to survive. In Palau, a small island nation in the Pacific Ocean, scientists are finding and restoring these healthy areas an approach that can save coral reefs throughout the world. <br/>Thank you, <b>ChildName</b>, for saving these undersea wonders!'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Whale Songs" and month="5");
UPDATE cause 
SET hos_full_txt ='Captures ^Whale Songs!#Male humpback whales are known for their beautiful, <br/>haunting @songs, some of the longest in the animal kingdom.<br/>Quite possibly they''re singing about <b><b>ChildName</b></b> of FiftyP: <b>ChildName</b><br/>donated dollaramount from gender Share Account to support the<br/>scientists who study these amazing tunes.<br/><br/>Scientists want to learn more about the music of this <br/> endangered species: how humpbacks use songs to communicate, for example, and when and where they sing. Their songs may reveal where they migrate in the fall - which could lead to ways to protect them from colliding with nearby ships.<br/><br/>Thank you, <b>ChildName</b>, for making sure that humpback melodies continue to be heard.'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Red Wolf Pups" and month="5");
UPDATE cause 
SET hos_full_txt ='Helps ^ Red Wolves Go Wild!# Red wolves were once extinct in the wild, but@ they''re<br/>making a comeback with help from <b>ChildName</b> of FiftyP. <b>ChildName</b><br/>donated dollaramount from gender Share Account to support a<br/>program that plans to breed red wolves in captivity and<br/>release their pups into the wild. The wolf pups will be placed<br/>in a den of wild wolves that will raise them as their own. <br/><br/>As large predators, wolves help keep the ecosystem in balance. The loss of red wolves throughout the South allowed the deer population to grow, which in turn caused serious damage to plants, trees, and streams. <br/><br/>Restoring these rare red wolves to their native habitat can take 20 years or more. Thanks, <b>ChildName</b>, for your help in making it happen!'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Plumpy'nut" and month="5");
UPDATE cause 
SET hos_full_txt ='Provides ^ Hope to Hungry Children#In many parts of the world, countries affected by drought, <br/>floods and war face a severe @shortage of food. <b>ChildName</b> of <br/> FiftyP is making a difference: by donating dollaramount to the <br/>Plumpy''nut program, he''s making sure hungry children get<br/> the nutrition support they need. <br/><br/>Children under age two are the hardest hit by poor nutrition, <br/>and they need special foods to help them quickly gain weight and grow strong. Plumpy''nut is a high-energy, ready-to-eat mixture in a squeezable foil pouch. It tastes like peanut butter and is packed with the calories and protein that babies need to regain their strength. <br/><br/>Thank you, <b>ChildName</b>, for improving the lives of other kids!'
WHERE cause_id =@causeId;
/* End - #1111 */