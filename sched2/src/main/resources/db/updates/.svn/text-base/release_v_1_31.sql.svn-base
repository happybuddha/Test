/*SQL update script for release v1.31 */

/* Ticket#1067 - Script to add a new column to cause table and to update parent summary text */

ALTER TABLE cause ADD parent_summary_text TEXT NULL ;

UPDATE cause SET parent_summary_text = 'FiftyP members are protecting coral reefs from the devastating effects of global warming. Rising ocean temperatures cause corals to turn white, brittle, and lifeless, putting sea life and the local economy in danger. Now scientists are figuring out which sections of the reef are likely to survive?and working with local communities to protect them.' WHERE cause.cause_id =13 ;

UPDATE cause SET parent_summary_text = 'FiftyP members are helping biologists collect and study the unique vocalizations of male humpback whales. Male humpbacks sing one of the longest and most complex songs in the animal kingdom. Learning more about when and where they sing may provide a means of protecting this endangered species.' WHERE cause.cause_id =14 ;

UPDATE cause SET parent_summary_text = 'FiftyP members are helping to build an enclosure for a pair of breeding red wolves and the pups the WCC hopes they will give birth to next spring. Some of the pups will be released into the wild, part of a successful national plan to reintroduce this critically endangered species to its native habitat.' WHERE cause.cause_id =15 ;

UPDATE cause SET parent_summary_text = 'FiftyP members are providing severely malnourished babies with a lifesaving food that quickly helps them gain weight and build strength. Plumpy''nut tastes like peanut butter and is packed with protein and calories, making it a good source of therapeutic nutrition in countries where drought, flood and conflict often lead to food shortages and severe malnutrition.' WHERE cause.cause_id =16;

/* #1063 point 17 - Adding new column by video_order to the cause table */
ALTER TABLE cause ADD video_order TINYINT( 4 ) NOT NULL DEFAULT '0' AFTER video_name ;

select @causeId := (select cause_id from cause where name = "Reef Rescue" and month = 5);
update cause set video_order = 1 WHERE cause_id =@causeId;

select @causeId := (select cause_id from cause where name = "Whale Songs" and month = 5);
update cause set video_order = 2 WHERE cause_id =@causeId;

select @causeId := (select cause_id from cause where name = "Red Wolf Pups" and month = 5);
update cause set video_order = 3 WHERE cause_id =@causeId;

select @causeId := (select cause_id from cause where name = "Plumpy'nut" and month = 5);
update cause set video_order = 4 WHERE cause_id =@causeId;

/* END - #1063 */

/* Ticket#1057 */
UPDATE share_points_activity SET point_value = 2 WHERE name = 'SPEND_WITHDRAW_MONEY_REQUEST';

/* Ticket#1048 */
select @causeId:=(select cause_id from cause where name = "Reef Rescue" and month="5");
UPDATE cause 
SET hos_full_txt ='Comes ^ Through for Coral Reefs!# Global warming is threatening the earth''s coral reefs-bad<br>news for the countless creatures that call it home, and for the<br>millions of people who depend on @ the reefs for food, jobs,<br/>and protection from the sea. But help may come from <b><b>ChildName</b></b><br/>of FiftyP, who donated dollaramount from gender Share Account to<br/>support the work of scientists in Palau.<br/><br/>Rising ocean temperatures can cause "coral bleaching": Corals dump the tiny algae that provide their food and brilliant colors, causing sections of the reef to become weak and turn white. Some corals seem to resist bleaching, however. If protected from other dangers, they''re more likely to survive. In Palau, a small island nation in the Pacific Ocean, scientists are finding and restoring these healthy areas an approach that can save coral reefs throughout the world. <br/>Thank you, <b><b>ChildName</b></b>, for saving these undersea wonders!'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Whale Songs" and month="5");
UPDATE cause 
SET hos_full_txt ='Captures ^Whale Songs!#Male humpback whales are known for their beautiful, <br/>haunting @songs, some of the longest in the animal kingdom.<br/>Quite possibly they''re singing about <b><b>ChildName</b></b> of FiftyP: <b>ChildName</b><br/>donated dollaramount from gender Share Account to support the<br/>scientists who study these amazing tunes.<br/><br/>Scientists want to learn more about the music of this <br/> endangered species: how humpbacks use songs to communicate, for example, and when and where they sing. Their songs may reveal where they migrate in the fall - which could lead to ways to protect them from colliding with nearby ships.<br/><br/>Thank you, for making sure that humpback melodies continue to be heard.'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Red Wolf Pups" and month="5");
UPDATE cause 
SET hos_full_txt ='Helps ^ Red Wolves Go Wild!# Red wolves were once extinct in the wild, but@ they''re<br/>making a comeback with help from <b>ChildName</b> of FiftyP.<b>ChildName</b><br/>donated dollaramount from gender Share Account to support a<br/>program that plans to breed red wolves in captivity and<br/>release their pups into the wild. The wolf pups will be placed<br/>in a den of wild wolves that will raise them as their own. <br/><br/>As large predators, wolves help keep the ecosystem in balance. The loss of red wolves throughout the South allowed the deer population to grow, which in turn caused serious damage to plants, trees, and streams. <br/><br/>Restoring these rare red wolves to their native habitat can take 20 years or more. Thanks, for your help in making it happen!'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Plumpy'nut" and month="5");
UPDATE cause 
SET hos_full_txt ='Provides ^ Hope to Hungry Children#In many parts of the world, countries affected by drought, <br/>floods and war face a severe @shortage of food. <b>ChildName</b> of <br/> FiftyP is making a difference: by donating dollaramount to the <br/>Plumpy''nut program, he''s making sure hungry children get<br/> the nutrition support they need. <br/><br/>Children under age two are the hardest hit by poor nutrition, <br/>and they need special foods to help them quickly gain weight and grow strong. Plumpy''nut is a high-energy, ready-to-eat mixture in a squeezable foil pouch. It tastes like peanut butter and is packed with the calories and protein that babies need to regain their strength. <br/><br/>Thank you, <b>ChildName</b> , for improving the lives of other kids!'
WHERE cause_id =@causeId;

/*   Old Causes  */
select @causeId:=(select cause_id from cause where name = "Tree Planting Program" );
UPDATE cause 
SET hos_full_txt ='<i>Protects</i> ^ the Coast of India!# Monkeys, herons, and other animals along the coast of India <br/>will soon have new mangrove trees to live in, thanks to <b>ChildName</b> <br/>of FiftyP.<b>ChildName</b> donated dollaramount from@ gender share account to the<br/> Carbon Fund''s Tree Planting Program, which plants trees to<br/>protect the shoreline and the many creatures that live there.<br/> Mangrove trees drink salt water, so they do well by the sea.<br/><br/> Their roots prevents mud and sand from being washed away, reducing damage from storms and allowing other plants to grow. Each mangrove is like an entire forest. Its branches provide food for monkeys and nesting sites for birds, while its tangled roots provide a surface for sponges and a hiding place for young fish.'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Reforestation" );
UPDATE cause 
SET hos_full_txt ='Builds Forests,^ <i>Creates Habitats</i># The destruction of forests is a double whammy for the<br/> environment. Animals lose their habitats, and the loss of trees<br/>which absorb harmful@ gases from airplanes, auto more makes<br/> global warming worse. Now <b>ChildName</b> of FiftyP is working to put<br/> things right. <b>ChildName</b> donated dollaramount from gender share account to <br/>support Reforestation project that will return trees to land<br/> that once held healthy forests.<br/><br/>One project, in Louisiana, will create a home for the threatened Louisiana black bear and many other threatened species. Another project will create safe habitats for mammals, birds and reptiles in Central America. The new forest will also pull harmful gases from the air, reducing the effect of global warming throughout the world.'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Landfill Methane" );
UPDATE cause 
SET hos_full_txt ='Turns Trash^ <i>into Energy!#</i> Garbage landfills are not only stinky. They are a danger to the<br/>environment. As the trash decays it releases methane, a gas<br/> that contributes@ to global warming.But thanks to <b>ChildName</b> of <br/> FiftyP, who donated dollaramount from gender share account, programs<br/> in  New Hampshire and Massachusetts are using methane to<br/> create electricity.<br/><br/> The methane is captured from landfills before it can escape into the air, and burned to form less dangerous gases.<br/><br/> These gases are used to power turbines, which produce the electricity that heats homes, runs computers, and much more. So <b>ChildName</b>''s contribution is helping turn trash into energy, and at the same time protecting the earth from methane''s, harmful effects.'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Renewable Energy Investments" );
UPDATE cause 
SET hos_full_txt ='Puts the Wind^ <i>to Work!#</i> While many people worry about the harmful effects of global<br/> warming, <b>ChildName</b> of FiftyP is doing something about it. <b>ChildName</b><br/> donated dollaramount from@gender share account to support Wind Power,<br/> one of the best ways to use nature as a clean energy source.<br/>gender contribution will help build wind turbines in Texas, <br/>Montana, Iowa.<br/><br/>These big machines, with blades that can be as big as a  football field, collect breezes from oceans and open fields and convert them to electricity for businesses and homes.<br/><br/> Wind power can reduce our use of oil and other fossil fuels, which contribute to rising temperatures, melting glaciers, and violent storms throughout the world.'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Save the Seals" );
UPDATE cause 
SET hos_full_txt ='Rescues^ Stranded Seals!# Seals often climb out of the water to spend time on the beach,<br/> stretching out for a nap or warming up in the sun. But<br/> sometimes a seal on the beach is stranded - @too sick or injured<br/>to get back to the water, or entangled in a fisherman''s net.<br/>Although by standers may want to help an animalin distress,<br/> a stranded seal needs the aid of a trained scientist, who can<br/> guide it back to the water, transport it to an animal hospital, or<br/> keep it calm until it''s ready to swim again.<br/><br/> Because of <b>ChildName</b> of FiftyP, stranded seals will be rescued: <b>ChildName</b> donated dollaramount from gender Share account to help send a marine biologist to the scene.'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Greener Truck Stops" );
UPDATE cause 
SET hos_full_txt ='Helps Truckers^ Go Green!# When long-distance truckers pull into truck stops to spend the<br/> night, they keep their engines running to heat or cool the big<br/> rig and to keep refrigerated cargo cold. @ Each night the truck<br/> burns 10 gallons of diesel fuel, sending harmful gases into the<br/> air while parked in a lot.<br/><br/>But thanks to <b>ChildName</b> of FiftyP, who donated dollaramount from gender<br/> Share account to support the Truck Stop Electrification project, more truckers can turn off their engines at night and use greener electric energy to power the inside of the truck. With more than a million drivers pulling into truck stops each night, the Electrification project can reduce the use of diesel fuel by 10 million gallons a day. Thank you <b>ChildName</b>!'
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "Name that Whale!" );
UPDATE cause 
SET hos_full_txt ='Makes^ Each Whale Count!# The whales off the coast of Massachusetts don''t know it, but<br/> they''re being followed and photographed and protected, thanks<br/> to <b>ChildName</b> of FiftyP.@ <b>ChildName</b> donated dollaramount from gender Share<br/> account to support the work of biologists who identify<br/> individual whales and trackthem year after year.<br/><br/> That''s how they learn about the health and safety of these huge<br/> mammals that play an important role in our oceans'' ecosystems, having an impact on us all! Biologists identify each whale by its distinct natural markings, like freckles or tail patterns, or by scars from injuries it may have received in the past. Each whale is named and then photographed over the course of its lifetime part of the effort to make sure that these ancient species survive. '
WHERE cause_id =@causeId;

select @causeId:=(select cause_id from cause where name = "School Bus Project" );
UPDATE cause 
SET hos_full_txt ='Reduces gender^ Carbon Footprint!# Each year, every child who takes a bus to school adds about<br/>a half-ton of greenhouse gases to the air. It''s part of their<br/>carbonfootprint, and it makes global @ warming worse. But even <br/>kids who can''t walk or bike to school can go green by <br/>supporting programs that cancel out the effect of those<br/> harmful bus fumes. That''s what <b>ChildName</b> of FiftyP did by donating<br/>dollaramount from gender Share account to the School Bus Project.<br/><br/> gender donation is supporting programs that promote clean energy like wind and solar-power and plant new forests, which absorb harmful gases. And though <b>ChildName</b> still takes the yellow school bus each day, his donation cancels out the impact of that half-ton of harmful gases that used to be part of his carbon footprint. '
WHERE cause_id =@causeId;


select @causeId:=(select cause_id from cause where name = "Soccer for Good" );
UPDATE cause 
SET hos_full_txt ='Scores One ^for African Kids!# African kids are crazy about soccer,
 using anything that can be<br/> kicked for the sake of playing the game.
 So soccer is a natural<br/> starting point for a program that@ wants to make the world
 a <br/>better place for kids. The program is now operating in six <br/>African
 countries, where kids from disadvantaged communities<br/> come together to learn and
 play soccer - and much more.<br/><br/>
 Each week they also learn about good nutrition, sanitation, and staying healthy.
 They take part in activities that teach them leadership, teamwork, and respect for others.
 And they benefit from services such as mobile libraries and community gardens. <br><br>
 Programs like these depend on the help of people around the world - people like <b>ChildName</b> of
 FiftyP, whose donation of dollaramount is making a difference for African kids.'
WHERE cause_id =@causeId;


select @causeId:=(select cause_id from cause where name = "Whale Songs"and month="4" );
UPDATE cause 
SET hos_full_txt ='Captures ^Whale Songs!!# Male humpback whales are known for their
 beautiful,<br/> haunting songs, some of the longest in the animal kingdom.<br/>
 Members of the same group all sing the same @ song, but a<br/>whale will switch to
 a new song if it joins a different group.<br><br>
 Scientists want to learn more about the music of this<br/> endangered species:
 how humpbacks use songs to communicate,<br/> for example, and when and where they sing.
 Their songs may reveal where they migrate in the fall - which could lead to ways
 to protect them from danger.<br><br>   Thanks to <b>ChildName</b> of FiftyP, the humpback
 melodies will continue to be heard. <b>ChildName</b> donated dollaramount from
 gender Share account to support the work of researchers who record and analyze these surprising songs.'
WHERE cause_id =@causeId;


select @causeId:=(select cause_id from cause where name = "Red Wolf Pups"and month="4" );
UPDATE cause 
SET hos_full_txt ='Helps ^ Red Wolves Go Wild!# 
Red wolves were once extinct in the wild, but they''re making<br/> a comeback with help 
 from <b>ChildName</b> of FiftyP.<b>ChildName</b><br/> donated dollaramount from gender Share account to
 @ support a program <br/>that plans to breed red wolves in captivity and release their<br/> pups into the wild.
 The wolf pups will be placed in a den of<br/> wild wolves that will raise them as their own.
 <br><br>As large predators, wolves help keep the ecosystem in balance. 
 The loss of red wolves throughout the South allowed the deer population to grow, 
 which in turn caused serious damage to plants, trees, and streams.   
 <br><br/>Restoring these rare red wolves to their native habitat can take 20 years or more. 
 Thanks, <b>ChildName</b>, for your help in making it happen!'
WHERE cause_id =@causeId;


select @causeId:=(select cause_id from cause where name = "Plumpy'nut"and month="4" );
UPDATE cause 
SET hos_full_txt ='Provides ^ Hope to Hungry Children#
 In many parts of the world, countries affected by drought,<br/> floods and conflict face
 a severe shortage of food.
 Children<br/> under age two are the hardest hit by @ poor nutrition:
 They lose<br/> weight, become weak, and are more likely to get sick.
 <br><br>Babies suffering from severe malnutrition need special foods<br/> to help
 them quickly gain weight and build strength.
 Plumpy''nut<br/> is a high-energy, ready-to-eat mixture in a squeezable foil pouch.
 It tastes like peanut butter and is packed with the calories and protein that babies need
 to regain their strength.<br><br>Thanks to <b>ChildName</b> of FiftyP and his donation
 of dollaramount, children affected by hunger will get the nutrition support they need.'
WHERE cause_id =@causeId;


/* END - #1048 */