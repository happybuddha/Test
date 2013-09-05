/*SQL update script for release v1.30 */

/* START - Ticket#1007 - update june causes */
/* updating parent_wizard_text for june causes */
select @causeId := (select cause_id from cause where name = "Red Wolf Pups" and month="5");
update cause set parent_wizard_text = "FiftyP members are helping to build an enclosure for a pair of breeding red wolves and pups the WCC hopes they give birth to next spring.";
select @causeId := (select cause_id from cause where name = "Whale Songs" and month="5");
update cause set parent_wizard_text = "FiftyP members are helping biologists collect and study the unique vocalizations of male hampback whales.";
select @causeId := (select cause_id from cause where name = "Plumpy'nut" and month="5");
update cause set parent_wizard_text = "FiftyP members are providing severely malnourished babies with a life saving food that quickly helps them gain weight and build strength.";
select @causeId := (select cause_id from cause where name = "Reef Rescue" and month="5");
update cause set parent_wizard_text = "Save coral reefs from being destroyed by global warming! By finding and protecting corals that can survive higher temperatures, scientists can rescue large sections of reef - and the millions of creatures that live there.";

/* updating the flv vedio files for the june causes */
select @causeId := (select cause_id from cause where name = "Plumpy'nut" and month="5");
UPDATE cause SET video_name ='plumpynut.flv' WHERE cause_id =@causeId;
select @causeId := (select cause_id from cause where name = "Whale Songs" and month="5");
UPDATE cause SET video_name ='whaleSongs.flv' WHERE cause_id =@causeId;
select @causeId := (select cause_id from cause where name = "Red Wolf Pups" and month="5");
UPDATE cause SET video_name ='wolves.flv' WHERE cause_id =@causeId;
select @causeId := (select cause_id from cause where name = "Reef Rescue" and month="5");
UPDATE cause SET video_name ='natureConserve.flv' WHERE cause_id =@causeId;

/* END - Ticket#1007 - update june causes */

/* START - Ticket#1036 */
/* updating parent_wizard_text for june causes */
select @causeId:= (select cause_id from cause where name = "Red Wolf Pups" and month="5");
update cause set parent_wizard_text = "FiftyP members are helping to build an enclosure for a pair of breeding red wolves and pups the WCC hopes they give birth to next spring."WHERE cause_id =@causeId;
select @causeId := (select cause_id from cause where name = "Whale Songs" and month="5");
update cause set parent_wizard_text = "FiftyP members are helping biologists collect and study the unique vocalizations of male hampback whales." WHERE cause_id =@causeId;
select @causeId := (select cause_id from cause where name = "Plumpy'nut" and month="5");
update cause set parent_wizard_text = "FiftyP members are providing severely malnourished babies with a life saving food that quickly helps them gain weight and build strength." WHERE cause_id =@causeId;
select @causeId := (select cause_id from cause where name = "Reef Rescue" and month="5");
update cause set parent_wizard_text = "Save coral reefs from being destroyed by global warming! By finding and protecting corals that can survive higher temperatures, scientists can rescue large sections of reef - and the millions of creatures that live there." WHERE cause_id =@causeId;
/* END - Ticket#1036 - update june causes */

/* #1049: Update share store items for June causes */
select @causeId := (select cause_id from cause where name = "Plumpy'nut" and month = 5);
INSERT INTO `share_store_item` ( `cause_id`, `name`, `icon`, `point_value`, `globe_pos_x`, `globe_pos_y`, `thank_you_msg`,`description`) VALUES
  (@causeId, 'Peanuts', 'palauReefs_peanuts.swf', 5, 77, 68, "Thanks for supporting the Plumpy'nut program. Peanuts are rich in protein and calories, so babies can quickly gain weight and grow strong.","Peanuts are rich in protein and calories, so babies can quickly gain weight and grow strong."),
  (@causeId, 'Water bottle', 'plumpy_wateringCan.swf', 10, 87, 80, "Thanks for supporting the Plumpy'nut program. Bottled water is important in parts of the world where clean drinking water is scarce.","Bottled water is important in parts of the world where clean drinking water is scarce."),
  (@causeId, 'Vitamins', 'plumpy_vitamins.swf', 20,98, 86, "Thanks for supporting the Plumyp'nut program. Plumpy'nut contains the vitamins that babies need for a strong, healthy body.","Plumpy'nut contains the vitamins that babies need for a strong, healthy body."),
  (@causeId, 'Truck', 'plumpy_truck.swf', 30, 85, 100, "Thanks for supporting the Plumpy'nut program. Plumpy'nut is delivered by truck from the factory to distant villages.","Plumpy'nut is delivered by truck from the factory to distant villages."),
  (@causeId, 'Baby scale', 'na.swf', 40, 152, 68, "Thanks for supporting the Plumpy'nut program. The health clinic needs a scale to be sure the babies are gaining weight.","The health clinic needs a scale to be sure the babies are gaining weight."),
  (@causeId, 'Nurse', 'plumpy_nurse.swf', 50,162,75, "Thanks for supporting the Plumpy'nut program. Nurses provide nutrition and health care, and teach moms how to keep babies healthy.","Nurses provide nutrition and health care, and teach moms how to keep babies healthy."),
  (@causeId, 'Watering can', 'plumpy_wateringCan.swf', 60, 171, 25, "Thanks for supporting the Plumpy'nut program. Peanut plants need 5 months of warm weather and enough water to grow.","Peanut plants need 5 months of warm weather and enough water to grow."),
  (@causeId, 'Hat', 'na.swf', 70, 180, 34, "Thanks for supporting the Plumpy'nut program. Hats are needed to protect peanut farmers as they work in the hot fields.","Hats are needed to protect peanut farmers as they work in the hot fields.");

select @causeId := (select cause_id from cause where name = "Whale Songs" and month = 5);
INSERT INTO `share_store_item` ( `cause_id`, `name`, `icon`, `point_value`, `globe_pos_x`, `globe_pos_y`, `thank_you_msg`,`description`) VALUES
  (@causeId, 'Binoculars', 'whales_binoculars.swf', 5, 66, 48, "Thanks for supporting the Whale Songs project. The boat's captain needs binoculars to get close enough to the whales.","The boat's captain needs binoculars to get close enough to the whales."),
  (@causeId, 'Mask & Snorkel', 'palauReefs_mask.swf', 10, 79, 51, "Thanks for supporting the Whale Songs project. With a mask and snorkel, researchers can get a good look at underwater life.","With a mask and snorkel, researchers can get a good look at underwater life."),
  (@causeId, 'Flippers', 'palauReefs_flippers.swf', 20, 74, 52, "Thanks for supporting the Whale Songs project. Wearing flippers makes it easier for the crew to get around in the water.","Wearing flippers makes it easier for the crew to get around in the water."),
  (@causeId, 'Drinks', 'whales_drinks.swf', 30, 207,48, "Thanks for supporting the Whale Songs project. The boat needs to be stocked with drinks for a day out on the water.","The boat needs to be stocked with drinks for a day out on the water."),
  (@causeId, 'Sunscreen', 'whales_sunscreen.swf', 40, 207, 57, "Thanks for supporting the Whale Songs project. Researchers and crew protect their skin with sunscreen during the long hours at sea.","Researchers and crew protect their skin with sunscreen during the long hours at sea."),
  (@causeId, 'Boat', 'whales_boat.swf', 50, 217, 61, "Thanks for supporting the Whale Songs project. Biologists need a boat to get to the whale breeding grounds, where male humpbacks are known to sing.","Biologists need a boat to get to the whale breeding grounds, where male humpbacks are known to sing."),
  (@causeId, 'Digital recorder', 'whales_digitalRecorder.swf', 60, 198, 48, "Thanks for supporting the Whale Songs project. A digital recorder is connected to the underwater mic, which picks up the humpback's amazing tunes.","A digital recorder is connected to the underwater mic, which picks up the humpback's amazing tunes."),
  (@causeId, 'Camera', 'whales_cam.swf', 70, 216,54, "Thanks for supporting the Whale Songs project. It's good to have a camera along when there's a chance of getting cool whale pix.","It's good to have a camera along when there's a chance of getting cool whale pix.");

select @causeId := (select cause_id from cause where name = "Red Wolf Pups" and month = 5);
INSERT INTO `share_store_item` ( `cause_id`, `name`, `icon`, `point_value`, `globe_pos_x`, `globe_pos_y`, `thank_you_msg`,`description`) VALUES
  (@causeId, 'Food', 'wolf_food.swf', 5, 35, 20, "Thanks for supporting the Red Wolf Pups project. The wolves can't hunt for food in their enclosure, so they get their meals delivered.","The wolves can't hunt for food in their enclosure, so they get their meals delivered."),
  (@causeId, 'House', 'palauReefs_globe.swf', 10, 44, 20, "Thanks for supporting the Red Wolf Pups project. A female wolf needs a den in which to give birth to her pups.","A female wolf needs a den in which to give birth to her pups."),
  (@causeId, 'Wolfcam', 'whales_cam.swf', 20, 35, 27, "Thanks for supporting the Red Wolf Pups project. A wolfcam lets staff observe the wolves from a distance.","A wolfcam lets staff observe the wolves from a distance."),
  (@causeId, 'Medical care', 'plumpy_nurse.swf', 30, 35, 40, "Thanks for supporting the Red Wolf Pups project. The wolves need medical checkups and vaccines to prevent disease.","The wolves need medical checkups and vaccines to prevent disease."),
  (@causeId, 'Tracking collar', 'wolf_tracking.swf', 40,42, 31, "Thanks for supporting the Red Wolf Pups project.  tracking collar lets the staff locate captive wolves in their large enclosure.","A tracking collar makes it possible to locate captive wolves in their large enclosure."),
  (@causeId, 'Brush', 'wolf_brush.swf', 50,21, 20, "Thanks for supporting the Red Wolf Pups project. Wolves need to look well-groomed when they visit schools and other groups!","Wolves need to look well-groomed when they visit schools and other groups!"),
  (@causeId, 'Bones', 'wolf_bones.swf', 60, 46, 36, "Thanks for supporting the Red Wolf Pups project. Like dogs, wolves bury bones and dig them up when they want a snack.","Like dogs, wolves bury bones and dig them up when they want a snack."),
  (@causeId, 'Chew toy', 'wolf_chewToy.swf', 70,44, 44, "Thanks for supporting the Red Wolf Pups project. Wolf pups need something to chew on!","Wolf pups need something to chew on!");

select @causeId := (select cause_id from cause where name = "Reef Rescue" and month = 5);
INSERT INTO `share_store_item` ( `cause_id`, `name`, `icon`, `point_value`, `globe_pos_x`, `globe_pos_y`, `thank_you_msg`,`description`) VALUES
  (@causeId, 'Globe', 'na.swf', 5, 100, 120, "Thanks for supporting the Reef Rescue project. Scientists are mapping the areas of reef that seem to resist the effects of global warming.","Scientists are mapping the areas of reef that seem to resist the effects of global warming."),
  (@causeId, 'Flippers', 'na.swf', 10, 80, 210, "Thanks for supporting the Reef Rescue project. Flippers make it easier for divers to check out all parts of the fragile reef.","Flippers make it easier for divers to check out all parts of the fragile reef."),
  (@causeId, 'Mask', 'na.swf', 15, 50, 10, "Thanks for supporting the Reef Rescue project. Scientists put on scuba gear to examine the reef for signs of damage from global warming.","Scientists put on scuba gear to examine the reef for signs of damage from global warming."),
  (@causeId, 'Underwater pad', 'na.swf', 20, 10, 70, "Thanks for supporting the Reef Rescue project. Scientists studying the reef take notes on a special pad that won't get soggy.","Scientists studying the reef take notes on a special pad that won't get soggy."),
  (@causeId, 'Underwater pen', 'na.swf', 25, 30, 20, "Thanks for supporting the Reef Rescue project. You need a pen that works under water when collecting details about coral reefs!","You need a pen that works under water when collecting details about coral reefs!"),
  (@causeId, 'Coastal tree', 'na.swf', 35, 80, 80, "Thanks for supporting the Reef Rescue project. Shade from trees along the coast can protect coral reefs from sun damage.","Shade from trees along the coast can protect coral reefs from sun damage."),
  (@causeId, 'Anchor', 'na.swf', 50, 15, 170, "Thanks for supporting the Reef Rescue project. Researchers throw out the anchor to keep their boat in place before diving in to explore the reef.","Researchers throw out the anchor to keep their boat in place before diving in to explore the reef."),
  (@causeId, 'Microscope', 'na.swf', 100, 20, 188, "Thanks for supporting the Reef Rescue project. Getting a closer look at algae and other underwater life forms may lead to ways to help the coral reefs survive.","Getting a closer look at algae and other underwater life forms may lead to ways to help the coral reefs survive.");

select @causeId := (select cause_id from cause where name = "Reef Rescue" and month = 5);
update `share_store_item` set `icon` = 'palauReefs_globe.swf' where `name` = 'Globe' and `cause_id` = @causeId;
update `share_store_item` set `icon` = 'palauReefs_flippers.swf' where `name` = 'Flippers' and `cause_id` = @causeId;
update `share_store_item` set `icon` = 'palauReefs_mask.swf' where `name` = 'Mask' and `cause_id` = @causeId;
update `share_store_item` set `icon` = 'palauReefs_underwaterPad.swf' where `name` = 'Underwater pad' and `cause_id` = @causeId;
update `share_store_item` set `icon` = 'palauReefs_underwaterPen.swf' where `name` = 'Underwater pen' and `cause_id` = @causeId;
update `share_store_item` set `icon` = 'palauReefs_coastalTree.swf' where `name` = 'Coastal tree' and `cause_id` = @causeId;
update `share_store_item` set `icon` = 'palauReefs_anchor.swf' where `name` = 'Anchor' and `cause_id` = @causeId;
update `share_store_item` set `icon` = 'palauReefs_microscope.swf' where `name` = 'Microscope' and `cause_id` = @causeId;

/* 1026 - updated requests to be marked as read */
ALTER TABLE child_request ADD is_read TINYINT NOT NULL DEFAULT 1 AFTER status_date_updated;

/* correcting the descriptions of causes in share store */
select @causeId:= (select cause_id from cause where name = "Red Wolf Pups" and month=5);
update cause set parent_wizard_text = "Keep red wolves from going extinct! The Red Wolf Pups project breeds red wolves in captivity and safely releases their pups to the wild." WHERE cause_id =@causeId;

select @causeId := (select cause_id from cause where name = "Plumpy'nut" and month = 5);
update cause set parent_wizard_text = "Help feed babies suffering from malnutrition! Plumpy'nut is a lifesaving food in a squeezable foil pouch. It tastes like peanut butter and is packed with the calories and protein these babies need to grow strong." WHERE cause_id =@causeId;

select @causeId := (select cause_id from cause where name = "Whale Songs" and month = 5);
update cause set parent_wizard_text = "Protect endangered humpback whales! Recording and studying their long beautiful songs may help scientists find ways to protect them." WHERE cause_id =@causeId;

/* correcting the items in the share store */
/* --------------------------------------------------------- whaleSongs ------------------------------------------------------------ */
/* replacing the Mask & Snorkel with HeadPhones in whaleSongs */
select @causeId := (select cause_id from cause where name = "Whale Songs" and month = 5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Mask & Snorkel");

update share_store_item set name="Headphones", icon="whales_headphones.swf",point_value="15",description="Researchers use headphones to be sure the whale songs are being captured." , thank_you_msg="Thanks for supporting the Whale Songs project. Researchers use headphones to be sure the whale songs are being captured." where id=@itemId;

/* replacing the Flippers with Under Water Mic in whale songs */
select @causeId := (select cause_id from cause where name = "Whale Songs" and month = 5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Flippers");

update share_store_item set name="Underwater mic", icon="whales_mic.swf ",point_value="50",description="To collect whale songs, a microphone is lowered 50 feet into the water." , thank_you_msg="Thanks for supporting the Whale Songs project. To collect whale songs, a microphone is lowered 50 feet into the water. " where id=@itemId;
/* --------------------------------------------------------- Red wolf pups ------------------------------------------------------------ */
/* replacing the house with Medicine Mic in Red wolf pups */
select @causeId:= (select cause_id from cause where name = "Red Wolf Pups" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="House");

update share_store_item set name="Medicine", icon="wolf_medicine.swf",point_value="20",description="The wolves and their pups are well cared for when they're sick." , thank_you_msg="Thanks for supporting the Red Wolf Pups project. The wolves and their pups are well cared for when they're sick." where id=@itemId;

/* replacing the wolfcam with Wolf den in Red wolf pups */
select @causeId:= (select cause_id from cause where name = "Red Wolf Pups" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Wolfcam");

update share_store_item set name="Wolf den", icon="wolf_den.swf", point_value="100",description="A female wolf needs a den in which to give birth to her pups." , thank_you_msg="Thanks for supporting the Red Wolf Pups project. A female wolf needs a den in which to give birth to her pups." where id=@itemId;

/* changing the image icon of the Medical care */
select @causeId:= (select cause_id from cause where name = "Red Wolf Pups" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Medical care");
update share_store_item set icon="wolf_medical.swf" where id= @itemId;

/* --------------------------------------------------------- plumpy'nut ------------------------------------------------------------ */
/* replacing the water bottle with water hose in plumpy'nut */
select @causeId:= (select cause_id from cause where name = "Plumpy'nut" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Water bottle");

update share_store_item set name="Water hose", icon="plumpy_waterhose.swf", point_value="20",description="Farmers must water their peanut plants regularly-unless it rains!" , thank_you_msg="Thanks for supporting the Plumpy'nut program. Farmers must water their peanut plants regularly-unless it rains!" where id=@itemId;

/* replacing the Baby scale with sun in plumpy'nut */
select @causeId:= (select cause_id from cause where name = "Plumpy'nut" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Baby scale");

update share_store_item set name="Sun", icon="plumpy_sun.swf", point_value="35", description="Peanuts plants need warm soil and a long, hot growing season.", thank_you_msg="Thanks for supporting the Plumpy'nut program. Peanuts plants need warm soil and a long, hot growing season." where id=@itemId;

/* replacing the hat with plane in plumpy'nut */
select @causeId:= (select cause_id from cause where name = "Plumpy'nut" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Hat");

update share_store_item set name="Plane", icon="plumpy_plane.swf", point_value="100",description="Floods and wars can cause food shortages that require help from other countries.", thank_you_msg="Thanks for supporting the Plumpy'nut program. Floods and wars can cause food shortages that require help from other countries." where id=@itemId;


/* ************************************** updating the descriptions and points for the items ****************************************************** */
/* ***************** plumpy'net *********************** */
/* peanuts */
select @causeId:= (select cause_id from cause where name = "Plumpy'nut" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Peanuts");

update share_store_item set point_value="10", description="Peanuts provide protein and calories, which help babies gain weight and grow strong.", thank_you_msg="Thanks for supporting the Plumpy'nut program. Peanuts provide protein and calories, which help babies gain weight and grow strong." where id=@itemId;

/* Vitamins */
select @causeId:= (select cause_id from cause where name = "Plumpy'nut" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Vitamins");

update share_store_item set point_value="15", description="Plumpy'nut contains the vitamins that babies need for a strong, healthy body.", thank_you_msg="Thanks for supporting the Plumpy'nut program. Plumpy'nut contains the vitamins that babies need for a strong, healthy body." where id=@itemId;

/* Truck */
select @causeId:= (select cause_id from cause where name = "Plumpy'nut" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Truck");

update share_store_item set point_value="50", description="Plumpy'nut is delivered by truck from the factory to distant villages.", thank_you_msg="Thanks for supporting the Plumpy'nut program. Plumpy'nut is delivered by truck from the factory to distant villages." where id=@itemId;

/* Nurse */
select @causeId:= (select cause_id from cause where name = "Plumpy'nut" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Nurse");

update share_store_item set point_value="25", description="Nurses check the babies' growth and teach moms how to keep them healthy.", thank_you_msg="Thanks for supporting the Plumpy'nut program. Nurses check the babies' growth and teach moms how to keep them healthy." where id=@itemId;

/* Watering can */
select @causeId:= (select cause_id from cause where name = "Plumpy'nut" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Watering can");

update share_store_item set point_value="5", description="Peanut plants grow best in soil that is kept moist.", thank_you_msg="Thanks for supporting the Plumpy'nut program. Peanut plants grow best in soil that is kept moist." where id=@itemId;

/* ***************** Red wolf pups *********************** */
/* food */
select @causeId:= (select cause_id from cause where name = "Red Wolf Pups" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Food");

update share_store_item set point_value="25" where id=@itemId;

/* Medical care */
select @causeId:= (select cause_id from cause where name = "Red Wolf Pups" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Medical care");
update share_store_item set point_value="35" where id=@itemId;

/* Tracking collar */
select @causeId:= (select cause_id from cause where name = "Red Wolf Pups" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Tracking collar");
update share_store_item set point_value="50" where id=@itemId;

/* Brush */
select @causeId:= (select cause_id from cause where name = "Red Wolf Pups" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Brush");
update share_store_item set point_value="15" where id=@itemId;

/* Bones */
select @causeId:= (select cause_id from cause where name = "Red Wolf Pups" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Bones");
update share_store_item set point_value="5" where id=@itemId;

/* Chew toy */
select @causeId:= (select cause_id from cause where name = "Red Wolf Pups" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Chew toy");
update share_store_item set point_value="10" where id=@itemId;

/* ***************** Whale songs*********************** */

/* Binoculars */
select @causeId:= (select cause_id from cause where name = "Whale Songs" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Binoculars");
update share_store_item set point_value="20" where id=@itemId;

/* Drinks */
select @causeId:= (select cause_id from cause where name = "Whale Songs" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Drinks");
update share_store_item set point_value="10" where id=@itemId;

/* Sunscreen */
select @causeId:= (select cause_id from cause where name = "Whale Songs" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Sunscreen");
update share_store_item set point_value="5", description="Crew members protect their skin with sunscreen during the long day at sea.", thank_you_msg="Thanks for supporting the Whale Songs project. Crew members protect their skin with sunscreen during the long day at sea." where id=@itemId;

/* Boat */
select @causeId:= (select cause_id from cause where name = "Whale Songs" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Boat");
update share_store_item set point_value="100", description="A boat is needed to get to the locations where humpbacks are known to sing.", thank_you_msg="Thanks for supporting the Whale Songs project. A boat is needed to get to the locations where humpbacks are known to sing." where id=@itemId;

/* Digital recorder */
select @causeId:= (select cause_id from cause where name = "Whale Songs" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Digital recorder");
update share_store_item set point_value="35", description="The recorder connects to an underwater mic, which transmits the whale songs.", thank_you_msg="Thanks for supporting the Whale Songs project. The recorder connects to an underwater mic, which transmits the whale songs." where id=@itemId;

/* Camera */
select @causeId:= (select cause_id from cause where name = "Whale Songs" and month=5);
select @itemId := (select id from share_store_item where cause_id=@causeId and name="Camera");

update share_store_item set point_value="25" where id=@itemId;

select @causeId:=(select cause_id from cause where name = "Reef Rescue");
UPDATE cause
SET description ='Coral reefs are the "rainforests of the sea" - home to an amazing variety of fish, sponges, and other ocean life. But reefs throughout the world are in danger-from pollution, overfishing, and the harmful effects of global warming.<br><br>When ocean temperatures rise, the algae nesting inside the corals are forced out. These tiny life forms give corals their brilliant colors (the corals themselves are colorless!) and also provide food and protect them from the sun. Without algae, corals turn white and often die.<br><br>Fortunately, some types of coral are resistant to temperature change, and some corals avoid damage thanks to cool waters and areas of shade. Now scientists in Palau have taken on a huge challenge: figuring out which parts of the coral reef are most likely to survive. These areas will be protected and restored so that this fragile ecosystem can be saved.'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Whale Songs" and month="5");
UPDATE cause
SET hos_full_txt ='Captures^Whale Songs!!# Male humpback whales are known for their beautiful, haunting songs, some of the longest in the animal kingdom. Members of the same group all sing the same @ song, but a whale will switch to a new song if it joins a different group.<br>Scientists want to learn more about the music of this endangered species: how humpbacks use songs to communicate, for example, and when and where they sing. Their songs may reveal where they migrate in the fall - which could lead to ways to protect them from danger.<br> Thanks to ChildName of FiftyP, the humpback melodies will continue to be heard. ChildName donated dollaramount from gender Share account to support the work of researchers who record and analyze these surprising songs.'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Red Wolf Pups" and month="5");
UPDATE cause
SET description ='Red wolves once ruled the wilderness, but years of hunting and land development made them all but disappear. Wolves are an important predator; without them, deer and smaller mammals overrun the forest, destroying plant life and animal homes.<br> Now red wolves are returning to the wild, thanks to programs that breed them in captivity and release their young to wildlife preserves. <br> To protect these young wolves from danger, it''s important to preserve their natural fear of humans. A good way is to place the pups soon after birth into a den of wild wolves, which will raise them as their own. That''s the goal of the Red Wolf Pups project, which plans to breed a pair of these rare wolves next spring. $5 pays for gas to pick up deer meat, a favorite red wolf meal;<br>$10 buys 3 feet of chain link fence to shelter the wolves from humans;<br>$15 provides a pooper-scooper for keeping the wolf home clean;<br>$25 pays for vaccines to protect one red wolf pup from disease.'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Whale Songs" and month="5");
UPDATE cause
SET description = 'Did you know that male humpback whales sing beautiful songs that can last half an hour? And that whales in the same group all sing the same song? Collecting these tunes can teach us a lot about this endangered species: how they communicate with each other, for example, and where they go to give birth.<br><br>Their songs may also provide a way we can protect them. Although whales are gigantic, many are injured in collisions with ships. As we learn where humpbacks are likely to sing, we can place listening devices at sea so shippers can hear them and slow down.<br><br>To collect humpback songs, a biologist drops an underwater microphone deep into the sea. The mike is attached to a digital recorder, so the songs can be analyzed and stored.<br><br>$5 pays for recording 3 minutes of whale songs;<br>$10 pays for the recording to be studied;<br>$15 buys the headphones worn while collecting songs;<br>$25 provides the fuel to send the research boat to the whale gathering spot.<br>'
where cause_id = @causeId;

ALTER TABLE `child_profile` ADD COLUMN `todays_points` INTEGER NOT NULL DEFAULT 0 AFTER `points`;