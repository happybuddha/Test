/*SQL update script for release v1.21 */
/* check in for 569 */
 select @productDescriptionId:=(select product_description_id from product_description where name = "Amazon");
 UPDATE product_description SET choose_desc = '<p>The Amazon.com&reg; Gift Card* makes shopping easy and offers a large selection of items. Gift cards are redeemable online at Amazon.com, where you have the convenience of shopping any time of the day or night, 24 hours a day. <br/><br/>The Amazon.com&reg; Web site is the place to find and discover anything you want to buy online at a great price. Amazon.com\\''s huge selection includes products in Books, Electronics, Music, DVD, Kitchen &amp; Housewares, Apparel, Beauty and more.<br><br/>Use multiple Amazon.com gift cards on a single purchase.</p>' 
 WHERE product_description_id = @productDescriptionId  ;

 select @productDescriptionId:=(select product_description_id from product_description where name = "Wal-Mart");
 UPDATE product_description SET choose_desc = '<p>Use the Wal-Mart Gift Card any time of year. It\\''s a great way for you to enjoy wonderful Wal-Mart values and the ideal gift for family and friends, because they can choose exactly what they want. </p><p>It\'s easy for you to use your gift card for purchases at Walmart.com and in U.S. Wal-Mart stores. SAM\'S Club members can use them in U.S. SAM\'S Club stores and at Samsclub.com. In stores simply present the card at checkout or when shopping online enter the card number and PIN (on back of card) during checkout. </p><p>Want more convenience? Check your card balance in stores or online and add to card balance in a Wal-Mart store. That way you\'ll have what you need for the next unbeatable value. (Note: Balance cannot be added to online.)</p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Wal-Mart");
 UPDATE product_description SET disclamer_desc = '<p>FiftyP, Inc. doing business as www.fiftyp.com, and is not affiliated with Wal-Mart Stores, Inc. The services, products or activities of FiftyP, Inc. are neither endorsed nor sponsored by Wal-Mart Stores, Inc.</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Blockbuster" and image_url="giftCards/blockbuster.png");
 UPDATE product_description SET choose_desc = '<p>They\'re simple, they hold the change, and they fit into your pocket! Get happy about where you spend allowance with BLOCKBUSTER&#174; GiftCards - the answer to all gift questions. And life just got a lot easier because with so many GiftCards to choose from you\\''ve got something for everyone on your list - including yourself! </p>' 
 WHERE product_description_id = @productDescriptionId ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Blockbuster" and image_url="giftCards/blockbuster.png");
 UPDATE product_description SET disclamer_desc = '<p>GiftCards are redeemable at participating BLOCKBUSTER store locations. BLOCKBUSTER Inc. is not a sponsor of this promotion. <br/><br/>BLOCKBUSTER GiftCards&#174; (&quot;GiftCards&quot;) are subject to complete terms and conditions. Membership rules apply and certain restrictions apply for rental at BLOCKBUSTER&#174;. See BLOCKBUSTER&#174; GiftCard&#174; and/or packaging for complete terms and conditions. GiftCards cannot be used to purchase GiftCards.<br/><br/>BLOCKBUSTER name, design, and related marks are trademarks of Blockbuster Inc. &copy; 2008 Blockbuster Inc. All rights reserved.</p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Borders");
 UPDATE product_description SET choose_desc = '<p>Books, music and more, all in one huge store!<br>Borders Books and Music stores keep finding ways to delight customers - and turn them into lifelong friends. There are so many items to select from and the largest stores stock up to 200,000 book, music, and DVD titles.</p><p>And to make it easy to shop with us all over the place, Borders&#174; Gift Cards can be used at Borders&#174; Books and Music as well as Waldenbooks&#174; locations nationwide!</p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Borders");
 UPDATE product_description SET disclamer_desc = '<p>Borders, Waldenbooks, Brentano\\''s and Borders Express are not affiliated with FiftyP and do not sponsor or endorse this program.</p>' 
 WHERE product_description_id = @productDescriptionId  ;

select @productDescriptionId:=(select product_description_id from product_description where name = "iTunes" and image_url="giftCards/iTunes.png");
UPDATE product_description SET disclamer_desc = '<p>Complete  terms and conditions can be found at www.apple.com/legal/itunes/us/gifts.html and http://www.apple.com/legal/itunes/us/service.html</p><p>iTunes<a name="OLE_LINK1"></a><a name="OLE_LINK2"></a>&reg;  is a registered trademark of Apple Inc. Apple is not a participant or sponsor  of this program.</p>'
WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "T.G.I. Friday's&#174;");
 UPDATE product_description SET choose_desc = '<p>Everyone can have Friday\\''s any day of the week! At Friday\\''s&#174; Restaurants you can relax and have fun while enjoying great food and drinks. Now we\\''ve stuffed all that fun into a little card, and it\\''s ready to use at anytime. Enjoy the fun of T.G.I. Friday\\''s&#174; restaurants. For a restaurant near you, visit our location listing at www.fridays.com. </p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "T.G.I. Friday's&#174;");
 UPDATE product_description SET disclamer_desc = '<p>Your T.G.I. Friday\\''s&#174; Gift Card may only be used for making purchases at participating T.G.I. Friday\\''s&#174; restaurants. It cannot be redeemed for cash or applied as payment to any account unless required by law. This Card is not reloadable. This card will only be replaced if an original sales receipt, valid identification, and original card number are provided. Use of the card constitutes acceptance of these terms and conditions. <br>For more information about the T.G.I. Friday\\''s&#174; Gift Card visit www.fridays.com</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where image_url="giftCards/db.png");
 UPDATE product_description SET choose_desc = '<p>Have lots of fun with a Dave &amp; Buster\\''s gift card. Dave &amp; Buster\\''s offers a one-of-a-kind dining adventure - a great experience where you get to Eat, Drink &amp; Play. It\\''s the ultimate reward for anyone who loves a good time.</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "AMC Theatres");
 UPDATE product_description SET choose_desc = '<p>Everyone loves the movies! AMC gift cards are good for both movie tickets and concessions. AMC is one of the world\\''s largest theatrical exhibition companies. With more than 300 theatres in 30 states it is the choice of over 200 million moviegoers each year.</p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where image_url="giftCards/toysRUs.png");
 UPDATE product_description SET choose_desc = '<p>Everyone\\''s a TOYS &quot;R&quot; US kid! With an unbeatable selection of games, learning toys, movies, video games, bikes, action figures, electronics, baby products and more... Toys &quot;R&quot; Us is the ultimate toy specialty store. A favorite place to visit for kids and grown-ups alike, at Toys &quot;R&quot; Us you\\''ll always find something fun for everyone! </p><p>With over 587 stores coast to coast and 650 stores worldwide, there\\''s always a Toys &quot;R&quot; Us store near you. Plus, shop 24/7 online at www.toysrus.com from the comfort of your home.<br><br/>Use your Toys &quot;R&quot; Us Gift Card at:<br/><br/>* Toys &quot;R&quot; Us<br>* Babies &quot;R&quot; Us<br>* Toysrus.com<br>* Babiesrus.com</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where image_url="giftCards/toysRUs.png");
 UPDATE product_description SET disclamer_desc = '<p>Toys &quot;R&quot; Us, Inc. is not a sponsor or co-sponsor of this promotion and is not liable for any actual or alleged claims related to this offer. See back of card for terms and conditions and use.<br>TERMS &amp; CONDITIONS<br>Use of this card constitutes acceptance of these terms: Card may be used for purchases at Toys&quot;R&quot;Us and Babies&quot;R&quot;Us stores in the U.S., Puerto Rico and Canada, or at Toysrus.com or Babiesrus.com. Not redeemable for cash, except as required by law. Remaining value on a lost, stolen or damaged card may be replaced with proof of purchase</p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Barnes & Noble");
 UPDATE product_description SET disclamer_desc = '<p>Barnes &amp; Noble gift cards can be used at any Barnes &amp; Noble store nationwide and on Barnes &amp; Noble.com www.bn.com.  This card can also be used at B. Dalton Bookseller.  Barnes &amp; Noble gift cards will not be replaced if lost or stolen.  They will not be exchanged for cash except where required by law.  Other conditions may apply to online usage.  See website for details.  Barnes &amp; Noble gift cards are issued by Marketing Services (Minnesota) Corp.</p><p>Barnes &amp;  Noble is not a sponsor or co-sponsor of this promotion.  Please see back of gift card for terms and conditions of use.  Barnes &amp; Noble is not liable for any alleged or actual claims related to this offer. <br></p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Kohl's");
 UPDATE product_description SET choose_desc = '<p>Kohl\\''s is a fast-growing, exciting retailer coming to a neighborhood near you! Shopping with your KOHL\\''S gift card is easy with more than 920 stores nationwide. Kohl\\''s is dedicated to providing favorite national brands such as Chaps&reg;, Levi\\''s&reg;, Dockers&reg;, KitchenAid&reg; and Dyson as well as the latest styles from Kohl\\''s exclusive collections like Simply Vera; Vera Wang, Apt. 9&trade;, Candies&reg; and Daisy Fuentes&reg; - at unbeatable values! Expect more great things online at Kohls.com, where Kohl\\''s has featured the same unbeatable values and brands plus items, styles and sizes you\\''ll find exclusively online!</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Kohl's");
 UPDATE product_description SET disclamer_desc = '<p>Kohl\\''s&reg; is not a sponsor of this promotion and is not affiliated with FiftyP, Inc. KOHL\\''S&reg; and KOHL\\''S&reg; brand names are trademarks of Kohl\\''s Illinois, Inc.</p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Land's End");
 UPDATE product_description SET choose_desc = '<p>Land\'s End Gift Cards are a welcome reward. They\\''re easy to use for the quality products Land\'s End is known for.<br>For your convenience Land\'s End Gift Cards can be used with the catalog, when shopping online or by visiting a Land\'s End or Sears store near you.</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Land's End");
 UPDATE product_description SET disclamer_desc = '<p>The Lands\\'' End gift card is redeemable for merchandise and services in Lands\' End consumer catalogs, including Home, Women, Men and Kids, at landsend.com, Lands\' End stores. Also redeemable at participating Sears, Roebuck and Co. store locations in the United States and Puerto Rico.&nbsp;It cannot be redeemed for cash or applied to your Sears credit accounts except where required by law.&nbsp; Lost, stolen or damaged gift cards may be cancelled and replaced with required proof of purchase or customer information.</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Nike");
 UPDATE product_description SET choose_desc = '<p>Use your Nike Gift Card to choose high - performance items from our complete collection of Nike footwear, apparel, accessories and equipment. The Nike Gift Card may be used at NIKETOWN, Nike Factory Stores, Nike Women, Nike store locations and at NikeStore.com, the official place to buy Nike product online. Register online to join our Members Only store for exclusive access to rare, limited-edition shoes. Not to mention FREE RETURNS on all orders. The Nike Gift Card may also be used on NIKEiD.com, where you can create individually customized shoes, apparel, equipment and exclusive products. Equip yourself with the Nike Gift Card.</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Foot Locker" and image_url="giftCards/footLocker.png");
 UPDATE product_description SET choose_desc = '<p>The perfect fit in a card! With the Foot Locker Gift Card you can shop at more than 3,000 stores across the country and get the athletic brands you love. At Foot Locker you\\''ll find the latest technology in footwear and athletic clothing, and if you want to be "styling" then the fashion-conscious will be able to score with the most popular trends in athletic fashion.<br></br><br>Foot Locker gift cards can also be used at Lady Foot Locker, Champs, and Kid\\''s Foot Locker locations.</p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Eddie Bauer&#174;");
 UPDATE product_description SET choose_desc = '<p>Eddie Bauer is a specialty retailer of casual apparel and accessories for men and women that reflect today\\''s modern outdoor lifestyle. Established in 1920 by legendary outdoorsman Eddie Bauer, the company stands for high quality, innovation, style and customer service. Eddie Bauer offers 3 convenient ways to shop; catalog, stores or online.</p><p>FOR A STORE NEAR YOU, call 1-800-552-8943. TO ORDER, visit www.eddiebauer.com or call 1-800-426-8020</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Eddie Bauer&#174;");
 UPDATE product_description SET disclamer_desc = '<p>Your acceptance of this gift card constitutes your agreement to these terms and conditions. This card is redeemable in U.S. and Canada for merchandise at all participating Eddie Bauer stores, Eddie Bauer Outlet stores, catalogs or online. Cards cannot be redeemed for cash, or applied as payment to any credit card account or for prior or pending purchases. Eddie Bauer is not responsible for lost or stolen cards, or for funds used without your knowledge or other unauthorized use. Refunds or replacements may be issued with original proof of purchase or as required by law. This card is issued in U.S. funds by Eddie Bauer Services LLC.<br><br/>Eddie Bauer&reg; is not a sponsor of this promotion. </p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Pottery Barn/ Pottery Barn Kids");
 UPDATE product_description SET choose_desc = '<p>Get what you want, and what you need. With your gift card to Pottery Barn&reg; you can get great home furnishings for comfort, style and quality. Let out your creativity and show your individual touch with Pottery Barn and Pottery Barn Kids gift cards.</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Walgreens");
 UPDATE product_description SET choose_desc = '<p>Each Walgreens store carries over 25,000 products, so there is always something for everyone. And for extra convenience over 30% of Walgreens stores are open 24 hours. From prescriptions to food and photo processing, you get it all in one convenient location. If Walgreens sells it, the gift card buys it. Use your card anytime; Walgreens Gift Cards don\\''t expire and are accepted at over 6,300 stores in 49 states and Puerto Rico.</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Applebees");
 UPDATE product_description SET choose_desc = '<p>Join your neighbors at Applebee\\''s for delicious food, friendly service and a hometown atmosphere that can\\''t be beat. From American classics like our <br>Applebee\\''s House Sirloin to signature dishes like our Fiesta Lime Chicken&trade;, Applebee\\''s is the place for great food and good times. <br><br/>Visit any of our over 1,900 restaurants in 49 states and find a new favorite every time. Stop by today and see what\\''s new in the neighborhood. Applebee gift cards are accepted in all U.S. &amp; Canadian locations, Applebee\\''s gift cards have no fees or expiration dates. To find a location near you, visit www.applebees.com.</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Applebees");
 UPDATE product_description SET disclamer_desc = '<p>Terms and Conditions<br>The amount contained on this gift card may be applied toward the purchase of food,<br>beverage and gratuity at any participating Applebee\\''s Neighborhood Grill &amp; Bar&reg; in the United States and Canada. Alcohol not included where prohibited by law. This card cannot be replaced if lost or stolen. For restaurant location information, visit www.applebees.com.<br>For balance inquiries: 1) visit www.applebees.com or 2) Call 1-800-252-6722<br><br/>Disclaimer:<br>Applebee\\''s IP LLC. is not affiliated with FiftyP and shall not be considered a sponsor<br>or co-sponsor of this program. Applebee\\''s IP LLC shall not be liable for delivery of any gift cards promised, earned, purchased or otherwise offered through this program.Applebee\\''s and the Applebee\\''s logo are used with permission of Applebee\\''s<br>International, Inc. and such marks constitute registered trademarks or service marks of Applebee\\''s IP LLC.Terms and conditions are applied to gift cards. Please see the Applebee\\''s gift card for additional terms and conditions, which are subject to change at the sole discretion of Applebee\\''s IP LLC.</p><p><br></p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Chili's&#174;");
 UPDATE product_description SET choose_desc = '<p>Tastes from all over the world in just one card<br>Chili\\''s<br>Chili\\''s Grills Like No Place Else&reg;, featuring favorites like Big Mouth Burgers and Baby Back Ribs. Molten Chocolate Cake dictates that diners leave room for dessert! Over 750 restaurants nationwide.<br>Macaroni Grill<br>Romano\\''s Macaroni Grill&reg; prepares Italian favorites that include pasta, veal, steaks, chicken, seafood, and pizza baked in a wood-burning oven. Over 200 restaurants nationwide.<br>On the Border<br>Enjoy such traditional Mexican favorites as our Border Sampler - a tempting array of chicken quesadillas, beef nachos and chicken flautas. Or customized specialties like our Guacamole Live! -- a craveable guacamole prepared tableside.<br>Maggiano\\''s<br>Come to Maggiano\\''s&reg; and celebrate the time-honored tradition of family-sized portions of Southern Italian dishes served with the warm and genuine hospitality reminiscent of Little Italy.<br>All copy on Confirm screen needs to be changed to: Brinker Restaurant Corporation ("Brinker") is not a sponsor or co-sponsor of this promotion.</p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Chili's&#174;");
 UPDATE product_description SET disclamer_desc = '<p>Brinker Restaurant Corporation, Chili\\''s, Macaroni Grill, On The Border, Cozymel\\''s, Maggiano\\''s, Corner Bakery, are not affiliated with FiftyP and are not sponsors or co-sponsors with this promotion.</p>'
 WHERE product_description_id = @productDescriptionId  ;

 select @productDescriptionId:=(select product_description_id from product_description where name = "Darden");
 UPDATE product_description SET choose_desc = '<p>Dining variety made easy. Just take your pick and enjoy any or our great restaurants with one gift card:<br><br/>Red Lobster<br><br/>Red Lobster is America\\''s favorite seafood restaurant. It offers a wide variety of freshly-prepared dishes, including fresh fish, shrimp, crab, and live Maine lobster. For the restaurant nearest you call 1-800-LOBSTER or visit www.redlobster.com<br><br/>Olive Garden <br><br/>Olive Garden delights guests with a genuine Italian dining experience, featuring a range of fresh, simple and delicious dishes, including many inspired by our Culinary Institute of Tuscany in Italy, and as award-winning wine list. For the restaurant nearest you, please visit us at www.olivegarden.com<br><br/>Bahama Breeze <br><br/>Bahama Breeze is the restaurant that brings you the feeling of a Caribbean escape, offering the food, drink and atmosphere you would find in the islands! For the restaurant nearest you, visit us at www.bahamabreeze.com<br><br/>LongHorn Steakhouse<br><br/>LongHorn Steakhouse has taken the best of the West and created a place where you can relax and unwind in a comfortable, inviting atmosphere. For the restaurant nearest you, visit us at www.longhorn steakhouse.com</p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Darden");
 UPDATE product_description SET disclamer_desc = '<p>Darden Restaurants&reg;, Inc. (Red Lobster&reg;, Olive Garden&reg;, LongHorn&reg; Steakhouse, Bahama Breeze&reg;) is not affiliated with FiftyP. Darden Restaurants is not a sponsor or co-sponsor of this program. Use of our restaurant names, logos or trademarks requires written approval from Darden Restaurants, Inc. See backside of gift card for additional terms and conditions or visit www.dardenrestaurants.com/legal.asp</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Dunkin Donuts");
 UPDATE product_description SET choose_desc = '<p>Dunkin\\'' Donuts&copy; Card</p><p>Dunkin\\'' Way To Pay!</p><p>Dunkin\\'' Donuts has lots of yummy, fresh donuts to choose from. Visit one of our locations for your favorites.While you\\''re there, don\\''t forget our other treats like munchkins, muffins, bagels, cookies, pastries and more. How about one of our hot breakfast sandwiches? You can also stop by for a specialty sandwich from the Dunkin\\'' Deli, and there are great soup and salad selections too. Be sure to wash it all down with an icy smoothie or one of our many other beverages.</p><p>America runs on Dunkin so use your gift cards at one our participating locations to enjoy our donuts and other treats. The Dunkin\\'' Donuts Card is accepted at stores across the United States.</p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Papa John's");
 UPDATE product_description SET disclamer_desc = '<p>Papa John\\''s is not affiliated with FiftyP and is not a sponsor or co-sponsor with this promotion.</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Uno Chicago Grill&#174; Gift Card");
 UPDATE product_description SET choose_desc = 'Good Friends, Great Food.<br>That\\''s the Chicago Way.<br>Uno Chicago Grill&#174; invented Chicago-style Deep Dish Pizza in 1943 and has been making friends ever since. The restaurant\\''s fresh menu now offers much more than its famous pizza, including an array of signature dishes, healthy fare, grilled favorites and a contemporary drink list. Guests keep coming back to this inviting Chi-town classic thanks to its attentive service and indulgent menu.<br>Uno currently has over 200 full-service restaurants in 32 states, the District of Columbia and Puerto Rico.' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Outback Steakhouse");
 UPDATE product_description SET choose_desc = 'Satisfy your crave at Outback Steakhouse with juicy steaks, fresh seafood and our signature Bloomin\\'' Onion&#174;. For more than 20 years, Outback has perfected big, bold ""come back flavors"". Crave On.<br>The Outback Steakhouse Gift Card is also valid for use at all Bonefish Grill, Carrabba\\''s Italian Grill, Fleming\\''s Prime Steakhouse & Wine Bar, Cheeseburger in Paradise and Blue Coral locations.' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Macy's");
 UPDATE product_description SET choose_desc = '<p>THE PERFECT GIFT - ONE SIZE FITS ALL!</p><p>The Macy\\''s Gift Card works just like cash-and it\\''s accepted at any Macy\\''s store, and online at macys.com. It\\''s the perfect gift for holidays, birthdays, weddings, graduations-in fact any occasion at all.</p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Macy's");
 UPDATE product_description SET disclamer_desc = '<p>Macy\\''s is not a sponsor or co-sponsor of this program.<br>Macy\\''s Terms &amp; Conditions apply to all cards. See back of card for details.<br>The Macy\\''s name and logo are registered trademarks of Federated Department Stores, Inc.</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "TJ Maxx/Marshals");
 UPDATE product_description SET choose_desc = '<p>With such great deals, who can resist shopping at T.J. Maxx? It\\''s easy to use your gift card at over 1900 T.J. Maxx, Marshalls, HomeGoods, and A.J. Wright stores nationwide. How\\''s that for flexibility? With your T.J. Maxx gift card you get four stores to shop at, over 1900 locations, and great values on brand names, every day.</p>' 
 WHERE product_description_id = @productDescriptionId  ;


/* these statements below were erroring out because of the lack of a ' in the first query below, at they\'re */
select @productDescriptionId:=(select product_description_id from product_description where name = "Blockbuster" and image_url="giftCards/blockbuster.png");
 UPDATE product_description SET choose_desc = '<p>They\\''re simple, they hold the change, and they fit into your pocket! Get happy about where you spend allowance with BLOCKBUSTER&#174; GiftCards - the answer to all gift questions. And life just got a lot easier because with so many GiftCards to choose from you\\''ve got something for everyone on your list - including yourself! </p>'
 WHERE product_description_id = @productDescriptionId ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Blockbuster" and image_url="giftCards/blockbuster.png");
 UPDATE product_description SET disclamer_desc = '<p>GiftCards are redeemable at participating BLOCKBUSTER store locations. BLOCKBUSTER Inc. is not a sponsor of this promotion. <br/><br/>BLOCKBUSTER GiftCards&#174; (&quot;GiftCards&quot;) are subject to complete terms and conditions. Membership rules apply and certain restrictions apply for rental at BLOCKBUSTER&#174;. See BLOCKBUSTER&#174; GiftCard&#174; and/or packaging for complete terms and conditions. GiftCards cannot be used to purchase GiftCards.<br/><br/>BLOCKBUSTER name, design, and related marks are trademarks of Blockbuster Inc. &copy; 2008 Blockbuster Inc. All rights reserved.</p>' 
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Borders");
 UPDATE product_description SET choose_desc = '<p>Books, music and more, all in one huge store!<br>Borders Books and Music stores keep finding ways to delight customers - and turn them into lifelong friends. There are so many items to select from and the largest stores stock up to 200,000 book, music, and DVD titles.</p><p>And to make it easy to shop with us all over the place, Borders&#174; Gift Cards can be used at Borders&#174; Books and Music as well as Waldenbooks&#174; locations nationwide!</p>'
 WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "Borders");
 UPDATE product_description SET disclamer_desc = '<p>Borders, Waldenbooks, Brentano\\''s and Borders Express are not affiliated with FiftyP and do not sponsor or endorse this program.</p>' 
 WHERE product_description_id = @productDescriptionId  ;

select @productDescriptionId:=(select product_description_id from product_description where name = "iTunes" and image_url="giftCards/iTunes.png");
UPDATE product_description SET disclamer_desc = '<p>Complete  terms and conditions can be found at www.apple.com/legal/itunes/us/gifts.html and http://www.apple.com/legal/itunes/us/service.html</p><p>iTunes<a name="OLE_LINK1"></a><a name="OLE_LINK2"></a>&reg;  is a registered trademark of Apple Inc. Apple is not a participant or sponsor  of this program.</p>'
WHERE product_description_id = @productDescriptionId  ;
 
 select @productDescriptionId:=(select product_description_id from product_description where name = "T.G.I. Friday's&#174;");
 UPDATE product_description SET choose_desc = '<p>Everyone can have Friday\\''s any day of the week! At Friday\\''s&#174; Restaurants you can relax and have fun while enjoying great food and drinks. Now we\\''ve stuffed all that fun into a little card, and it\\''s ready to use at anytime. Enjoy the fun of T.G.I. Friday\\''s&#174; restaurants. For a restaurant near you, visit our location listing at www.fridays.com. </p>' 
 WHERE product_description_id = @productDescriptionId  ;
/*end of repeating the queries */
/*sql updates for 641 and 563 */
INSERT INTO order_status VALUES ('SHIPPED', 'SHIPPED');
INSERT INTO sys_template (sys_template_id, description, design, subject) VALUES
('SHIPPING_CONFIRMATION_TRANSACTION', 'Email for confirming shipping', '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>			Shipping Confirmation Of Gift Card		  </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">	<p>${currentDate?string("MMMM d, yyyy")}</p>	<p></p>	<p>Dear ${userName},</p>	<p>Thank you for ordering a gift card from FiftyP. We''re pleased to let you know that your order has been shipped. You can expect delivery by first-class mail within 7 to 10 business days.</p>	<p>For your convenience we''re providing the details of your order, including your Order Number. We recommend that you retain this email for future reference		<p>		Purchase date: ${purchaseDate?string("MMMM d, yyyy")}		<br>      Order #: ${orderNumber}</p>	  <p>Item: ${itemName} gift card <br>	  Value: $${itemPrice} <br>	  Shipping, Handling &amp; Merchant Charge: ${shippingCharges} <br>	  Total: $${total}<br>	  Payment Method : ${paymentMethod},  card #${ccDisplayNumber}</p>	  <p> Shipping Address: <br>        ${userName} <br>        ${shippingAddress} <br>        ${shippingAddress1} <br>        ${shippingAddress2}, ${zip}<br>     </p>	  <p>For information about your child''s gift card purchase, please go to www.fiftyp.com/faq.  Still have questions? Email us at www.fiftyp.com/support.</p>	  <p>Thanks for being part of the FiftyP community! </p>	  	  With best wishes,<br>			Team FiftyP<br>			<a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>	  	</td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>', 'Shipping confirmation of gift card transaction');

/* Ticket #416 - adding new column is_deleted in child_mm_project,child_mm_chore and child_mm_gift */
ALTER TABLE child_mm_project ADD is_deleted TINYINT( 4 ) NOT NULL DEFAULT 0;
ALTER TABLE child_mm_chore   ADD is_deleted TINYINT( 4 ) NOT NULL DEFAULT 0;
ALTER TABLE child_mm_gift    ADD is_deleted TINYINT( 4 ) NOT NULL DEFAULT 0;
/* End of #416 */

/* updated for 563*/
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email for confirming shipping");
UPDATE sys_template 
SET design ='<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head><body><table width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="border:1px solid #7B2B83">  <tr>    <td style="border-bottom:1px solid #7B2B83">      <table width="100%" border="0">        <tr>          <td><img src="cid:logo_parent.gif" width="294" height="84"></td>          <td align="right" style="padding:55px 10px 0px 0px" nowrap="nowrap"><font color="#F68B1F" size="2" style="font-size:14px;" face="verdana"><b>                                    Shipping confirmation of gift card                               </b></font></td>        </tr>    </table></td>  </tr>  <tr>    <td style="padding:20px;font-size:12px; font-family:verdana;">                <p>${currentDate?string("MMMM d, yyyy")}</p>          <p></p>              <p>Dear ${userName},</p>       <p>Thank you for ordering a gift card from FiftyP. We''re pleased to let you know that your order has been shipped. You can expect delivery by first-class mail within 7 to 10 business days.</p>        <p>For your convenience we''re providing the details of your order, including your order number. We recommend that you retain this email for future reference                             <p>                                Purchase date: ${purchaseDate?string("MMMM d, yyyy")}                         <br>      Order #: ${orderNumber}</p>      <p>Item: ${itemName} gift card <br>    Value: $${itemPrice} <br>            Shipping, Handling &amp; Merchant Charge: ${shippingCharges} <br>           Total: $${total}<br>         Payment Method : ${paymentMethod},  card #${ccDisplayNumber}</p>            <p> Shipping Address: <br>        ${userName} <br>        ${shippingAddress} <br>        ${shippingAddress1} <br>        ${shippingAddress2}, ${zip}<br>     </p>      <p>For information about your child''s gift card purchase, please go to www.fiftyp.com/faq.  Still have questions? Email us at www.fiftyp.com/support.</p>       <p>Thanks for being part of the FiftyP community! </p>                        With best wishes,<br>                                                Team FiftyP<br>                                                <a href=''http://www.fiftyp.com''>www.fiftyp.com</a><br>                    </td>  </tr>  <tr>    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">For more information please contact our support team at </font><a href=''http://www.fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>    </td>  </tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;

/* #841 */
alter table cause drop column cause_state_id, drop column pos_x, drop column pos_y, drop column video1_url;
drop table transaction_response;
drop table child_vote;
drop table cause_state;
/*changed subject for shipping confirmation */
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email for confirming shipping");# Rows: 1
UPDATE sys_template SET subject = 'Shipping confirmation of gift card' 
WHERE sys_template_id = @systemTemplateId;

/* #799 */
CREATE TABLE `investment_category` (
  `id` INTEGER UNSIGNED NOT NULL DEFAULT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `max_investments` INTEGER NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
)
ENGINE = InnoDB;

ALTER TABLE `investment` ADD COLUMN `investment_category_id` INTEGER UNSIGNED NULL AFTER `description`,
    ADD CONSTRAINT `FK_investment_investment_category` FOREIGN KEY `FK_investment_investment_category` (`investment_category_id`)
      REFERENCES `investment_category` (`id`)
      ON DELETE RESTRICT
      ON UPDATE RESTRICT;

insert into investment_category values (1, 'Parent Bond', 2);
insert into investment_category values (2, 'CD', 2);
insert into investment_category values (3, 'Double Up', 2);
insert into investment_category values (4, 'High Yield', 2);

update investment set investment_category_id = 1 where investment_id like 'Parent_Bond%';
update investment set investment_category_id = 2 where investment_id like 'CD%';
update investment set investment_category_id = 4 where investment_id like 'Hi_Yield%';

/* inserting the cards in to the product_description table which were deleted previouly */
INSERT INTO `product_description` (`product_description_id`, `name`, `choose_desc`, `disclamer_desc`, `confirm_desc`, `image_url`) VALUES
(5, 'D&B', 'Give the gift of fun with a Dave & Buster''s gift card. Dave & Buster''s offers a one-of-a-kind dining adventure - the ultimate experience to Eat, Drink & Play. It''s the ultimate incentive or reward for anyone who loves a good time.', 'Dave & Buster''s is not a sponsor or co-sponsor of this promotion.', 'This Gift Card is in the mail within 48 hours of your parent''s approval.  It should arrive within 5 to 10 days.<br><br>ENJOY!!', 'giftCards/D&B.png'),
(38, 'La Senza', '<p>Come discover the wonderful world of  fashion in a fun retail environment that fulfills your shopping needs. With  over 80 stores across Canada, La Senza Girl is the place for affordable,  high-style fashion, accessories and sleepwear for tweens. Visit one of our  lively stores and enjoy the great shopping atmosphere or shop online at  www.lasenzagirl.com.</p>Customer Service: 1888- La Senza', '<p>Conditions: Gift cards are issued by La Senza Inc.  and are redeemable for merchandise only at any La Senza Girl, La Senza and La  Senza Express store locations in Canada. The La Senza Girl Gift  Cards cannot be redeemed for cash. The La Senza Girl Gift Cards cannot be  redeemed online. The La Senza Girl Gift Card is currency and is considered as  cash. It cannot be replaced if lost or stolen. La Senza Girl Gift Cards do not  expire.<br>La Senza Girl, La Senza and La Senza  Express are  not affiliated with FiftyP and are not sponsors or co-sponsors with this  promotion.</p>', 'This Gift Card is in the mail within 48 hours of your parent''s approval.  It should arrive within 5 to 10 days.<br><br>ENJOY!!', 'giftCards/canada/laSenzaGirl.png'),
(39, 'Mark''s Work Wearhouse', '<p>Mark''s Work Wearhouse has business  casual, weekend and work wear and offers accessories and footwear. These are  great for young men and women or as a gift for Moms and Dads across Canada. For  the industrial wear customer, Mark''s offers the dependable safety, heavy duty  performance and comfort of Dakota. For the casual customer Mark''s offers the  contemporary look of Denver Hayes and WindRiver. <br>Mark''s has always been Canada''s leader  in industrial work wear and now Mark''s is Canada''s leader in business casual  wear with several khaki styles to choose from, easy to coordinate tops, dressy  looking denim, and casual outerwear and footwear. It''s comfortable, washable,  durable, and versatile. <br>Mark''s Gift Cards can be redeemed at  any one of our 325 stores across Canada, and all purchases are  covered by our 100% customer satisfaction guarantee.</p>', 'Mark''s Work Wearhouse is not affiliated with FiftyP and is not a sponsor or co-sponsor with this promotion.', 'This Gift Card is in the mail within 48 hours of your parent''s approval.  It should arrive within 5 to 10 days.<br><br>ENJOY!!', 'giftCards/canada/marksWorkWearhouse.png'),
(46, 'Coles', 'Use your Coles gift cards at our stores where we have a huge selection of books, music and multimedia software. Kids of all ages will appreciate selecting their own titles among the Best Sellers, Business, Computing, Literature, Gardening, Cooking and more. Select any amount you want to use or to give; Coles gift cards are available in denominations of $10, $25 and $50. Use you card at participating Indigo, Chapters, Coles, Smithbooks, World''s Biggest Bookstore locations, or conveniently shop online.', '<p>Conditions: <br>This gift card has no cash value. The  gift cards can only be redeemed at Indigo, Chapters, Coles, Smithbooks, World''s  Biggest Bookstore locations and online.<br>Chapters, Indigo, Coles, Smithbooks and  World''s Biggest Bookstore are not affiliated with FiftyP and are not  sponsors or co-sponsors with this promotion. </p>', 'This Gift Card is in the mail within 48 hours of your parent''s approval. It should arrive within 5 to 10 days.<br><br>ENJOY!!', 'giftCards/canada/indigo.png'),
(47, 'Indigo', 'Use your Indigo gift cards at our stores where we have a huge selection of books, music and multimedia software. Kids of all ages will appreciate selecting their own titles among the Best Sellers, Business, Computing, Literature, Gardening, Cooking and more. Select any amount you want to use or to give; Indigo gift cards are available in denominations of $10, $25 and $50. Use you card at participating Indigo, Chapters, Coles, Smithbooks, World''s Biggest Bookstore locations, or conveniently shop online.', '<p>Conditions: <br>This gift card has no cash value. The  gift cards can only be redeemed at Indigo, Chapters, Coles, Smithbooks, World''s  Biggest Bookstore locations and online.<br>Chapters, Indigo, Coles, Smithbooks and  World''s Biggest Bookstore are not affiliated with FiftyP and are not  sponsors or co-sponsors with this promotion. </p>', 'This Gift Card is in the mail within 48 hours of your parent''s approval.  It should arrive within 5 to 10 days.<br><br>ENJOY!!', 'giftCards/canada/indigo.png'),
(51, 'Black''s Photography', '<p>Black''s Photo Corporation has the  latest in photofinishing and with our technology we can do even more with your  film, digital media and pictures that you already have. <br>Our <strong>VividPrints</strong> technology can read detail on your negative that other  systems can''t see. You''ll see the difference in how rich the colours are, the  detail of the highlights and shadows, the sharpness of the image. You get a  print that looks just like what you saw. <br>Whether you''re a budding photographer  or just like to take pictures for fun, we''ve got products and services from  cameras and frames to photofinishing. Use your gift card for whatever you need  and share the memories with your friends and family. Use it like cash at any  Black''s or Astral store across Canada.</p>', '<p>Conditions: Gift Cards are void if  altered or defaced, and cannot be replaced if lost or stolen. This card is not  a credit card or debit card. This card can be used one time for the amount  indicated on the card; any difference between the purchase price of the item  and the amount of the card will be refunded in cash. Black''s cannot replace  cards if lost or stolen. Gift Cards will expire after two years from activation date.<br><strong>Disclaimer:</strong> Black''s Photo Corporation and Astral are not  affiliated with FiftyP and are not sponsors or co-sponsors with this promotion. </p>', 'This Gift Card is in the mail within 48 hours of your parent''s approval.  It should arrive within 5 to 10 days.<br><br>ENJOY!!', 'giftCards/canada/blacks.png');

/* inserting Casey''s Bar and Grill into the product_description table */
INSERT INTO `product_description` (`name`, `choose_desc`, `disclamer_desc`, `confirm_desc`, `image_url`) VALUES
('Casey''s Bar and Grill', 'Want to try something new or unexpected that you haven''t had at home?<br />  Come to Casey''s to discover new flavours, and share new experiences as you connect with friends and family over great food and drinks. We invite our Guests to dine and discover an exciting new casual dining experience.','Casey''s Restaurants is not a sponsor or co-sponsor of this promotion.', 'This Gift Card is in the mail within 48 hours of your parent''s approval.  It should arrive within 5 to 10 days.<br><br>ENJOY!!', 'giftCards/canada/caseys.png');


/* For category under Entertainment category **/
select @productCategoryIdForEntertain:=(select product_category_id from product_category where name = "Entertain" );
/*  ***************************    for ITunes  *************************** */
/* since iTunes is present for two cards we are getting description id based on image_url */
select @productDescriptionIdForITunes:=(select product_description_id from product_description where name = "iTunes" and image_url="giftCards/canada/iTunesCa.png");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForEntertain, '10', @productDescriptionIdForITunes, 'CA', '1.92', '370', '14', NULL),
( @productCategoryIdForEntertain, '25', @productDescriptionIdForITunes, 'CA', '1.92', '371', '15', NULL),
( @productCategoryIdForEntertain, '50', @productDescriptionIdForITunes, 'CA', '1.92', '372', '16', NULL);

/*  ***************************   for block busters *************************** */
select @productDescriptionIdForBlockBusters:=(select product_description_id from product_description where name = "Blockbuster" and image_url="giftCards/canada/blockbuster.png");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForEntertain, '10', @productDescriptionIdForBlockBusters, 'CA', '1.92', '15', '17', NULL),
( @productCategoryIdForEntertain, '25', @productDescriptionIdForBlockBusters, 'CA', '1.92', '17', '18', NULL),
( @productCategoryIdForEntertain, '50', @productDescriptionIdForBlockBusters, 'CA', '1.92', '18', '19', NULL);

/*  ***************************    for  blacks  *************************** */
select @productDescriptionIdForBlacks:=(select product_description_id from product_description where name = "Black's Photography");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForEntertain, '10', @productDescriptionIdForBlacks, 'CA', '1.92', '126', '20', NULL),
( @productCategoryIdForEntertain, '25', @productDescriptionIdForBlacks, 'CA', '1.92', '341', '21', NULL),
( @productCategoryIdForEntertain, '50', @productDescriptionIdForBlacks, 'CA', '1.92', '128', '22', NULL);

/* For category under Entertainment category **/
select @productCategoryIdForEntertain:=(select product_category_id from product_category where name = "Entertain" );

/* *************************** for cineplex *************************** */
select @productDescriptionIdForCinePlex:=(select product_description_id from product_description where name = "Cineplex Entertainment");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForEntertain, '10', @productDescriptionIdForCinePlex, 'CA', '1.92', '25', '23', NULL);

/* For category under Entertainment category **/
select @productCategoryIdForEntertain:=(select product_category_id from product_category where name = "Entertain" );

UPDATE product SET `order_category` = '24' WHERE product_category_id = @productCategoryIdForEntertain and sku_name = 208;

UPDATE product SET `order_category` = '25' WHERE product_category_id = @productCategoryIdForEntertain and sku_name = 171;

/* For category under Entertainment category **/
select @productCategoryIdForEntertain:=(select product_category_id from product_category where name = "Entertain" );

/* *************************** deleting sport mart from entertainment *************************** */
select @productDescriptionIdForSprotMart:=(select product_description_id from product_description where name = "SportMart");
delete from product where product_category_id=@productCategoryIdForEntertain and product_description_id=@productDescriptionIdForSprotMart and country_code="CA";

/* ****************************************************** For Shop Category ********************************************************* */
/* ****************************************************** third carousel ********************************************************* */
select @productCategoryIdForShop:=(select product_category_id from product_category where name = "Shop");

/* for La Saneza */
select @productDescriptionIdForLaSaneza:=(select product_description_id from product_description where name = "La Senza");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '25', @productDescriptionIdForLaSaneza, 'CA', '1.92', '3', '31', NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForLaSaneza, 'CA', '1.92', '4', '32', NULL);

/* for Footlocker */
select @productDescriptionIdForFootLocker:=(select product_description_id from product_description where name = "Foot Locker" and image_url="giftCards/canada/footLockerCa.png");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '10', @productDescriptionIdForFootLocker, 'CA', '1.92', '295', '33', NULL),
( @productCategoryIdForShop, '25', @productDescriptionIdForFootLocker, 'CA', '1.92', '296', '34', NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForFootLocker, 'CA', '1.92', '297', '35', NULL),
( @productCategoryIdForShop, '100', @productDescriptionIdForFootLocker, 'CA', '1.92', '298', '36', NULL);

/* for Suzy shier*/
select @productDescriptionIdForSuzy:=(select product_description_id from product_description where name = "Suzy Shier");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '10', @productDescriptionIdForSuzy, 'CA', '1.92', '75', '37', NULL),
( @productCategoryIdForShop, '25', @productDescriptionIdForSuzy, 'CA', '1.92', '76', '38', NULL);

/* for Canadian Tire */
select @productDescriptionIdForCanadianTire:=(select product_description_id from product_description where name = "Canadian Tire");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '10', @productDescriptionIdForCanadianTire, 'CA', '1.92', '195', '39', NULL),
( @productCategoryIdForShop, '25', @productDescriptionIdForCanadianTire, 'CA', '1.92', '109', '40', NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForCanadianTire, 'CA', '1.92', '110', '41', NULL),
( @productCategoryIdForShop, '100', @productDescriptionIdForCanadianTire, 'CA', '1.92', '111', '42', NULL);

/* for Blockbuster */
select @productDescriptionIdForBlockBuster:=(select product_description_id from product_description where name = "Blockbuster" and image_url="giftCards/canada/blockbuster.png");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '10', @productDescriptionIdForBlockbuster, 'CA', '1.92', '15', '43', NULL),
( @productCategoryIdForShop, '25', @productDescriptionIdForBlockbuster, 'CA', '1.92', '17', '44', NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForBlockbuster, 'CA', '1.92', '18', '45', NULL);

/* ****************************************************** fourth carousel ********************************************************* */
select @productCategoryIdForShop:=(select product_category_id from product_category where name = "Shop");

/* for iTunes */
select @productDescriptionIdForITunes:=(select product_description_id from product_description where name = "iTunes" and image_url="giftCards/canada/iTunesCa.png");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '10', @productDescriptionIdForiTunes, 'CA', '1.92', '370', '46', NULL),
( @productCategoryIdForShop, '25', @productDescriptionIdForiTunes, 'CA', '1.92', '371', '47', NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForiTunes, 'CA', '1.92', '372', '48', NULL);

/* for The Bay  */
select @productDescriptionIdForBay:=(select product_description_id from product_description where name = "The Bay");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '25', @productDescriptionIdForBay, 'CA', '1.92', '390', '49', NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForBay, 'CA', '1.92', '391', '50', NULL),
( @productCategoryIdForShop, '100', @productDescriptionIdForBay, 'CA', '1.92', '392', '51', NULL);

/* for Zellers */
select @productDescriptionIdForZellers:=(select product_description_id from product_description where name = "Zellers");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '25', @productDescriptionIdForZellers, 'CA', '1.92', '393', '52', NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForZellers, 'CA', '1.92', '394', '53', NULL),
( @productCategoryIdForShop, '100', @productDescriptionIdForZellers, 'CA', '1.92', '395', '54', NULL);

/* for Mark's Work Wearhouse */
select @productDescriptionIdForMarksWork:=(select product_description_id from product_description where name = "Mark's Work Wearhouse");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '10', @productDescriptionIdForMarksWork, 'CA', '1.92', '251', '55', NULL),
( @productCategoryIdForShop, '25', @productDescriptionIdForMarksWork, 'CA', '1.92', '55', '56', NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForMarksWork, 'CA', '1.92', '56', '57', NULL),
( @productCategoryIdForShop, '100', @productDescriptionIdForMarksWork, 'CA', '1.92', '156', '58', NULL);

/* for Banana Republic */
select @productDescriptionIdForBanana:=(select product_description_id from product_description where name = "Banana Republic");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '25', @productDescriptionIdForBanana, 'CA', '1.92', '412', '59', NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForBanana, 'CA', '1.92', '413', '60', NULL);

/* ****************************************************** fifty carousel ********************************************************* */
select @productCategoryIdForShop:=(select product_category_id from product_category where name = "Shop");

/* for Home Outfitters */
select @productDescriptionIdForHome:=(select product_description_id from product_description where name = "Home Outfitters");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '25', @productDescriptionIdForHome, 'CA', '1.92', '387', '61', NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForHome, 'CA', '1.92', '388', '62', NULL),
( @productCategoryIdForShop, '100', @productDescriptionIdForHome, 'CA', '1.92', '389', '63', NULL);

/* for Black''s Photography*/
select @productDescriptionIdForBlacks:=(select product_description_id from product_description where name = "Black's Photography");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '10', @productDescriptionIdForBlacks, 'CA', '1.92', '126', '64', NULL),
( @productCategoryIdForShop, '25', @productDescriptionIdForBlacks, 'CA', '1.92', '341', '65', NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForBlacks, 'CA', '1.92', '128', '66', NULL);

/* for Elmwood Spa */
select @productDescriptionIdForElmwood:=(select product_description_id from product_description where name = "Elmwood Spa");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '50', @productDescriptionIdForElmwood, 'CA', '1.92', '133', '67', NULL),
( @productCategoryIdForShop, '100', @productDescriptionIdForElmwood, 'CA', '1.92', '134', '68', NULL);

/* for SpaFinder */
select @productDescriptionIdForSpaFinder:=(select product_description_id from product_description where name = "SpaFinder");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '25', @productDescriptionIdForSpaFinder, 'CA', '1.92', '290', '69', NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForSpaFinder, 'CA', '1.92', '291', '70', NULL),
( @productCategoryIdForShop, '100', @productDescriptionIdForSpaFinder, 'CA', '1.92', '292', '71', NULL);

/* for WaySpa */
select @productDescriptionIdForWaySpa:=(select product_description_id from product_description where name = "WaySpa");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForShop, '25', @productDescriptionIdForWaySpa, 'CA', '1.92', '360', '72', NULL),
( @productCategoryIdForShop, '50', @productDescriptionIdForWaySpa, 'CA', '1.92', '361', '73', NULL),
( @productCategoryIdForShop, '100', @productDescriptionIdForWaySpa, 'CA', '1.92', '362', '74', NULL);

/* ****************************** Cagegory : For EAT category ****************************** **/
select @productCategoryIdForEat:=(select product_category_id from product_category where name = "Eat");

/* delete Galaxy cinemas and cineplex from shop category */

/* delete $50 Galaxy cinemas */
select @productDescriptionIdForGalaxy:=(select product_description_id from product_description where name = "Galaxy Cinemas");
delete from product where product_category_id=@productCategoryIdForEat and product_description_id =@productDescriptionIdForGalaxy and price= '50' and country_code='CA';

/* delete cineplex entertainment cards other than $25 */
select @productDescriptionIdForCineplex:=(select product_description_id from product_description where name = "Cineplex Entertainment");
delete from product where product_category_id=@productCategoryIdForEat and product_description_id =@productDescriptionIdForCineplex and price != '25' and country_code='CA';

select @productCategoryIdForEat:=(select product_category_id from product_category where name = "Eat");

/* for Casey's Bar and Grill */
select @productDescriptionIdForCaseys:=(select product_description_id from product_description where name = "Casey's Bar and Grill");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForEat, '25', @productDescriptionIdForCaseys, 'CA', '1.92', '416', '9', NULL),
( @productCategoryIdForEat, '50', @productDescriptionIdForCaseys, 'CA', '1.92', '417', '10', NULL);

/* update order categroy of the the $25 Galaxy cinemas */
UPDATE product SET `order_category` = '11' WHERE product_category_id = @productCategoryIdForEat and sku_name = 327;

/* for cineplex cinemas */
UPDATE product SET `order_category` = '12' WHERE product_category_id = @productCategoryIdForEat and sku_name = 208;


/* for East side */
select @productDescriptionIdForEastSide:=(select product_description_id from product_description where name = "East Side Mario's");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForEat, '25', @productDescriptionIdForEastSide, 'CA', '1.92', '351', '13', NULL),
( @productCategoryIdForEat, '50', @productDescriptionIdForEastSide, 'CA', '1.92', '352', '14', NULL);

/* ****************************** Cagegory : ForWEAR category ****************************** **/
/* ****************************** First Carousel  **************************************** */
select @productCategoryIdForWear:=(select product_category_id from product_category where name = "Wear");

/* for The Bay  */
select @productDescriptionIdForBay:=(select product_description_id from product_description where name = "The Bay");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForWear, '25', @productDescriptionIdForBay, 'CA', '1.92', '390', '7', NULL),
( @productCategoryIdForWear, '50', @productDescriptionIdForBay, 'CA', '1.92', '391', '8', NULL),
( @productCategoryIdForWear, '100', @productDescriptionIdForBay, 'CA', '1.92', '392', '9', NULL);

/*  for SGH  */

UPDATE product SET `order_category` = '10' WHERE product_category_id = @productCategoryIdForWear and sku_name = 282;

UPDATE product SET `order_category` = '11' WHERE product_category_id = @productCategoryIdForWear and sku_name = 283;

UPDATE product SET `order_category` = '12' WHERE product_category_id = @productCategoryIdForWear and sku_name = 284;

/*  for Roots */

UPDATE product SET `order_category` = '13' WHERE product_category_id = @productCategoryIdForWear and sku_name =69;

UPDATE product SET `order_category` = '14' WHERE product_category_id = @productCategoryIdForWear and sku_name =70;

UPDATE product SET `order_category` = '15' WHERE product_category_id = @productCategoryIdForWear and sku_name =71;

/* ****************************** Second Carousel  **************************************** */

select @productCategoryIdForWear:=(select product_category_id from product_category where name = "Wear");

/* for Banana Republic */
select @productDescriptionIdForBanana:=(select product_description_id from product_description where name = "Banana Republic");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForWear, '25', @productDescriptionIdForBanana, 'CA', '1.92', '412', '16', NULL),
( @productCategoryIdForWear, '50', @productDescriptionIdForBanana, 'CA', '1.92', '413', '17', NULL);

/* for Suzy shier*/
select @productDescriptionIdForSuzy:=(select product_description_id from product_description where name = "Suzy Shier");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForWear, '10', @productDescriptionIdForSuzy, 'CA', '1.92', '75', '18', NULL),
( @productCategoryIdForWear, '25', @productDescriptionIdForSuzy, 'CA', '1.92', '76', '19', NULL);

/* for Home Outfitters */
select @productDescriptionIdForHome:=(select product_description_id from product_description where name = "Home Outfitters");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForWear, '25', @productDescriptionIdForHome, 'CA', '1.92', '387', '20', NULL),
( @productCategoryIdForWear, '50', @productDescriptionIdForHome, 'CA', '1.92', '388', '21', NULL),
( @productCategoryIdForWear, '100', @productDescriptionIdForHome, 'CA', '1.92', '389', '22', NULL);

/* for Mark's Work */
select @productDescriptionIdForMarksWork:=(select product_description_id from product_description where name = "Mark's Work Wearhouse");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForWear, '10', @productDescriptionIdForMarksWork, 'CA', '1.92', '251', '23', NULL),
( @productCategoryIdForWear, '25', @productDescriptionIdForMarksWork, 'CA', '1.92', '55', '24', NULL),
( @productCategoryIdForWear, '50', @productDescriptionIdForMarksWork, 'CA', '1.92', '56', '25', NULL),
( @productCategoryIdForWear, '100', @productDescriptionIdForMarksWork, 'CA', '1.92', '156', '26', NULL);

/* for La Saneza */
select @productDescriptionIdForLaSaneza:=(select product_description_id from product_description where name = "La Senza");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForWear, '25', @productDescriptionIdForLaSaneza, 'CA', '1.92', '3', '27', NULL),
( @productCategoryIdForWear, '50', @productDescriptionIdForLaSaneza, 'CA', '1.92', '4', '28', NULL);

/* ****************************** Cagegory : For Sport category ****************************** * */

select @productCategoryIdForSport:=(select product_category_id from product_category where name = "Sport");
/* for Footlocker */
select @productDescriptionIdForFootLocker:=(select product_description_id from product_description where name = "Foot Locker" and image_url="giftCards/canada/footLockerCa.png");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForSport, '10', @productDescriptionIdForFootLocker, 'CA', '1.92', '295', '1', NULL),
( @productCategoryIdForSport, '25', @productDescriptionIdForFootLocker, 'CA', '1.92', '296', '2', NULL),
( @productCategoryIdForSport, '50', @productDescriptionIdForFootLocker, 'CA', '1.92', '297', '3', NULL),
( @productCategoryIdForSport, '100', @productDescriptionIdForFootLocker, 'CA', '1.92', '298', '4', NULL);

/*  for sport chek */
UPDATE product SET `order_category` = '5' WHERE product_category_id = @productCategoryIdForSport and sku_name =197;
UPDATE product SET `order_category` = '6' WHERE product_category_id = @productCategoryIdForSport and sku_name =72;
UPDATE product SET `order_category` = '7' WHERE product_category_id = @productCategoryIdForSport and sku_name =73;
UPDATE product SET `order_category` = '8' WHERE product_category_id = @productCategoryIdForSport and sku_name =74;

/*  for sport Mat  */
UPDATE product SET `order_category` = '9' WHERE product_category_id = @productCategoryIdForSport and sku_name =204;
UPDATE product SET `order_category` = '10' WHERE product_category_id = @productCategoryIdForSport and sku_name =205;

/* for Zellers */
select @productDescriptionIdForZellers:=(select product_description_id from product_description where name = "Zellers");

INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForSport, '25', @productDescriptionIdForZellers, 'CA', '1.92', '393', '11', NULL),
( @productCategoryIdForSport, '50', @productDescriptionIdForZellers, 'CA', '1.92', '394', '12', NULL);

/*  for SGH  */
UPDATE product SET `order_category` = '13' WHERE product_category_id = @productCategoryIdForSport and sku_name =282;
UPDATE product SET `order_category` = '14' WHERE product_category_id = @productCategoryIdForSport and sku_name =283;
UPDATE product SET `order_category` = '15' WHERE product_category_id = @productCategoryIdForSport and sku_name =284;

/* ****************************** Cagegory : For $10 category ****************************** * */

/* for $10  */
UPDATE product SET `order_price` = '1' WHERE sku_name=122;
UPDATE product SET `order_price` = '2' WHERE sku_name = 25;
/* nullifying the SGH to null since it is deleted from the $10 list */
UPDATE product SET `order_price` = null WHERE sku_name=282;
/* for the Galaxy $10 */
select @productCategoryIdForEntertain:=(select product_category_id from product_category where name = "Entertain");
select @productDescriptionIdForGalaxy:=(select product_description_id from product_description where name = "Galaxy Cinemas");
INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForEntertain, '10', @productDescriptionIdForGalaxy, 'CA', '1.92', '222', NULL, '3');

/* for suzy */
select @productDescriptionIdForSuzy:=(select product_description_id from product_description where name = "Suzy Shier");
UPDATE product SET `order_price` = '4' WHERE product_description_id = @productDescriptionIdForSuzy and price = 10;
/* for old Navy */
UPDATE product SET `order_price` = '5' WHERE sku_name = 99;

/* for Kenrnel   */
select @productDescriptionIdForKernels:=(select product_description_id from product_description where name = "Kernels Popcorn");
UPDATE product SET price='10' WHERE product_description_id = @productDescriptionIdForKernels and country_code='CA';
UPDATE product SET `order_price` = '6'  WHERE product_description_id = @productDescriptionIdForKernels and country_code='CA';
/* for Roots */
UPDATE product SET `order_price` = '7' WHERE sku_name = 69;

/* for Red Lobster   */
select @productCategoryIdForEat:=(select product_category_id from product_category where name = "Eat");
select @productDescriptionIdForRedLobsters:=(select product_description_id from product_description where name = "Red Lobster");
INSERT INTO product ( `product_category_id`, `price`, `product_description_id`, `country_code`, `shipping_handling_cost`, `sku_name`, `order_category`, `order_price`) VALUES
( @productCategoryIdForEat, '10', @productDescriptionIdForRedLobsters, 'CA', '1.92', '62', NULL, '8');

/* for olive garden */ 
UPDATE product SET `order_price` = '9' WHERE sku_name = 58;
/* for sports check */
UPDATE product SET `order_price` = '10' WHERE sku_name = 197;

/*for Foot Locker */
select @productDescriptionIdForFootLocker:=(select product_description_id from product_description where name = "Foot Locker" and image_url="giftCards/canada/footLockerCa.png");
UPDATE product SET `order_price` = '11' WHERE product_description_id = @productDescriptionIdForFootLocker and price = 10 and country_code='CA';

/*for Canadian tire - pending  */
select @productDescriptionIdForCanadianTire:=(select product_description_id from product_description where name = "Canadian Tire");
UPDATE product SET `order_price` = '12' WHERE product_description_id = @productDescriptionIdForCanadianTire and price = 10 and country_code='CA';

/*for Marks work */
select @productDescriptionIdForMarksWork:=(select product_description_id from product_description where name = "Mark's Work Wearhouse");
UPDATE product SET `order_price` = '13' WHERE product_description_id = @productDescriptionIdForMarksWork and price = 10 and country_code='CA';

/* for iTunes */
select @productDescriptionIdForITunes:=(select product_description_id from product_description where name = "iTunes" and image_url="giftCards/canada/iTunesCa.png");
UPDATE product SET `order_price` = '14' WHERE product_description_id = @productDescriptionIdForITunes and price = 10 and country_code='CA';

/* for block busters */
select @productDescriptionIdForBlockBusters:=(select product_description_id from product_description where name = "Blockbuster" and image_url="giftCards/canada/blockbuster.png");
UPDATE product SET `order_price` = '15' WHERE product_description_id = @productDescriptionIdForBlockBusters and price = 10 and country_code='CA';

/* *************************************************** END of $10 ************************************************************************** */
/* *************************************************** START of $25 ************************************************************************** */
/* **************************** first carousel **************************** */
/* nullifying the order_price of Pottery Barn Kids */
select @productDescriptionIdForPotteryBarnKids:=(select product_description_id from product_description where name = "Pottery Barn Kids");
UPDATE product SET `order_price` = null WHERE product_description_id=@productDescriptionIdForPotteryBarnKids and price='25' and country_code='CA';

/* updating the GAP instead of pottery Barn kids */

select @productDescriptionIdForGAP:=(select product_description_id from product_description where name = "GAP");
UPDATE product SET `order_price` = '8' WHERE product_description_id=@productDescriptionIdForGAP and price='25' and country_code='CA';

/* **************************** second carousel **************************** */
/* for iTunes */
select @productDescriptionIdForITunes:=(select product_description_id from product_description where name = "iTunes" and image_url="giftCards/canada/iTunesCa.png");
UPDATE product SET `order_price` = '16' WHERE product_description_id = @productDescriptionIdForITunes and price = 25 and country_code='CA';
/* for suzy */
select @productDescriptionIdForSuzy:=(select product_description_id from product_description where name = "Suzy Shier");
UPDATE product SET `order_price` = '17' WHERE product_description_id = @productDescriptionIdForSuzy and price = 25 and country_code='CA';
/* for La Saneza */
select @productDescriptionIdForLaSaneza:=(select product_description_id from product_description where name = "La Senza");
UPDATE product SET `order_price` = '18' WHERE product_description_id = @productDescriptionIdForLaSaneza and price = 25 and country_code='CA';
/* for block busters */
select @productDescriptionIdForBlockBusters:=(select product_description_id from product_description where name = "Blockbuster" and image_url="giftCards/canada/blockbuster.png");
UPDATE product SET `order_price` = '19' WHERE product_description_id = @productDescriptionIdForBlockBusters and price = 25 and country_code='CA';
/* for Banana Republic */
select @productDescriptionIdForBanana:=(select product_description_id from product_description where name = "Banana Republic");
UPDATE product SET `order_price` = '20' WHERE product_description_id = @productDescriptionIdForBanana and price = 25 and country_code='CA';
/* for The Bay  */
select @productDescriptionIdForBay:=(select product_description_id from product_description where name = "The Bay");
UPDATE product SET `order_price` = '21' WHERE product_description_id = @productDescriptionIdForBay and price = 25 and country_code='CA';
/*   for  blacks   */
select @productDescriptionIdForBlacks:=(select product_description_id from product_description where name = "Black's Photography");
UPDATE product SET `order_price` = '22' WHERE product_description_id = @productDescriptionIdForBlacks and price = 25 and country_code='CA';
/* for SpaFinder */
select @productDescriptionIdForSpaFinder:=(select product_description_id from product_description where name = "SpaFinder");
UPDATE product SET `order_price` = '23' WHERE product_description_id = @productDescriptionIdForSpaFinder and price = 25 and country_code='CA';
/* for East side */
select @productDescriptionIdForEastSide:=(select product_description_id from product_description where name = "East Side Mario's");
UPDATE product SET `order_price` = '24' WHERE product_description_id = @productDescriptionIdForEastSide and price = 25 and country_code='CA';
/* for Casey's Bar and Grill */
select @productDescriptionIdForCaseys:=(select product_description_id from product_description where name = "Casey's Bar and Grill");
UPDATE product SET `order_price` = '25' WHERE product_description_id = @productDescriptionIdForCaseys and price = 25 and country_code='CA';
/* for Mark's Work Wearhouse */
select @productDescriptionIdForMarksWork:=(select product_description_id from product_description where name = "Mark's Work Wearhouse");
UPDATE product SET `order_price` = '26' WHERE product_description_id = @productDescriptionIdForMarksWork and price = 25 and country_code='CA';
/* for Home Outfitters */
select @productDescriptionIdForHome:=(select product_description_id from product_description where name = "Home Outfitters");
UPDATE product SET `order_price` = '27' WHERE product_description_id = @productDescriptionIdForHome and price = 25 and country_code='CA';
/*for Canadian tire - pending  */
select @productDescriptionIdForCanadianTire:=(select product_description_id from product_description where name = "Canadian Tire");
UPDATE product SET `order_price` = '28' WHERE product_description_id = @productDescriptionIdForCanadianTire and price = 25 and country_code='CA';
/*for Foot Locker */
select @productDescriptionIdForFootLocker:=(select product_description_id from product_description where name = "Foot Locker" and image_url="giftCards/canada/footLockerCa.png");
UPDATE product SET `order_price` = '29' WHERE product_description_id = @productDescriptionIdForFootLocker and price = 25 and country_code='CA';
/* for Zellers */
select @productDescriptionIdForZellers:=(select product_description_id from product_description where name = "Zellers");
UPDATE product SET `order_price` = '30' WHERE product_description_id = @productDescriptionIdForZellers and price = 25 and country_code='CA';
/* *************************************************** END of $25************************************************************************** */
/* *************************************************** START of $50 ************************************************************************** */
/* for Banana Republic */
select @productDescriptionIdForBanana:=(select product_description_id from product_description where name = "Banana Republic");
UPDATE product SET `order_price` = '16' WHERE product_description_id = @productDescriptionIdForBanana and price = 50 and country_code='CA';
/* for La Saneza */
select @productDescriptionIdForLaSaneza:=(select product_description_id from product_description where name = "La Senza");
UPDATE product SET `order_price` = '17' WHERE product_description_id = @productDescriptionIdForLaSaneza and price = 50 and country_code='CA';
/*for Foot Locker */
select @productDescriptionIdForFootLocker:=(select product_description_id from product_description where name = "Foot Locker" and image_url="giftCards/canada/footLockerCa.png");
UPDATE product SET `order_price` = '18' WHERE product_description_id = @productDescriptionIdForFootLocker and price = 50 and country_code='CA';
/*   for  blacks   */
select @productDescriptionIdForBlacks:=(select product_description_id from product_description where name = "Black's Photography");
UPDATE product SET `order_price` = '19' WHERE product_description_id = @productDescriptionIdForBlacks and price = 50 and country_code='CA';
/* for block busters */
select @productDescriptionIdForBlockBusters:=(select product_description_id from product_description where name = "Blockbuster" and image_url="giftCards/canada/blockbuster.png");
UPDATE product SET `order_price` = '20' WHERE product_description_id = @productDescriptionIdForBlockBusters and price = 50 and country_code='CA';
/*for Canadian tire - pending  */
select @productDescriptionIdForCanadianTire:=(select product_description_id from product_description where name = "Canadian Tire");
UPDATE product SET `order_price` = '21' WHERE product_description_id = @productDescriptionIdForCanadianTire and price = 50 and country_code='CA';
/* for Casey's Bar and Grill */
select @productDescriptionIdForCaseys:=(select product_description_id from product_description where name = "Casey's Bar and Grill");
UPDATE product SET `order_price` = '22' WHERE product_description_id = @productDescriptionIdForCaseys and price = 50 and country_code='CA';
/* for East side */
select @productDescriptionIdForEastSide:=(select product_description_id from product_description where name = "East Side Mario's");
UPDATE product SET `order_price` = '23' WHERE product_description_id = @productDescriptionIdForEastSide and price = 50 and country_code='CA';
/* for Home Outfitters */
select @productDescriptionIdForHome:=(select product_description_id from product_description where name = "Home Outfitters");
UPDATE product SET `order_price` = '24' WHERE product_description_id = @productDescriptionIdForHome and price = 50 and country_code='CA';
/* for Mark's Work Wearhouse */
select @productDescriptionIdForMarksWork:=(select product_description_id from product_description where name = "Mark's Work Wearhouse");
UPDATE product SET `order_price` = '25' WHERE product_description_id = @productDescriptionIdForMarksWork and price = 50 and country_code='CA';
/*Laura secord */
select @productDescriptionIdForLaura:=(select product_description_id from product_description where name = "Laura Secord");
UPDATE product SET `order_price` = '26' WHERE product_description_id = @productDescriptionIdForLaura and price = 50 and country_code='CA';

/* for The Bay  */
select @productDescriptionIdForBay:=(select product_description_id from product_description where name = "The Bay");
UPDATE product SET `order_price` = '27' WHERE product_description_id = @productDescriptionIdForBay and price = 50 and country_code='CA';
/* for WaySpa */
select @productDescriptionIdForWaySpa:=(select product_description_id from product_description where name = "WaySpa");
UPDATE product SET `order_price` = '28' WHERE product_description_id = @productDescriptionIdForWaySpa and price = 50 and country_code='CA';
/* for Zellers */
select @productDescriptionIdForZellers:=(select product_description_id from product_description where name = "Zellers");
UPDATE product SET `order_price` = '29' WHERE product_description_id = @productDescriptionIdForZellers and price = 50 and country_code='CA';
/* for iTunes */
select @productDescriptionIdForITunes:=(select product_description_id from product_description where name = "iTunes" and image_url="giftCards/canada/iTunesCa.png");
UPDATE product SET `order_price` = '30' WHERE product_description_id = @productDescriptionIdForITunes and price = 50 and country_code='CA';
/* *************************************************** END of $50************************************************************************** */
/* *************************************************** START of $100 ************************************************************************** */
/*for Foot Locker */
select @productDescriptionIdForFootLocker:=(select product_description_id from product_description where name = "Foot Locker" and image_url="giftCards/canada/footLockerCa.png");
UPDATE product SET `order_price` = '4' WHERE product_description_id = @productDescriptionIdForFootLocker and price = 100 and country_code='CA';
UPDATE product SET `order_price` = '5' WHERE sku_name = 294;
UPDATE product SET `order_price` = '6' WHERE sku_name = 242;
/* for Elmwood Spa */
select @productDescriptionIdForElmwood:=(select product_description_id from product_description where name = "Elmwood Spa");
UPDATE product SET `order_price` = '7' WHERE product_description_id = @productDescriptionIdForElmwood and price = 100 and country_code='CA';
/* for Home Outfitters */
select @productDescriptionIdForHome:=(select product_description_id from product_description where name = "Home Outfitters");
UPDATE product SET `order_price` = '8' WHERE product_description_id = @productDescriptionIdForHome and price = 100 and country_code='CA';
/* for Mark's Work Wearhouse */
select @productDescriptionIdForMarksWork:=(select product_description_id from product_description where name = "Mark's Work Wearhouse");
UPDATE product SET `order_price` = '9' WHERE product_description_id = @productDescriptionIdForMarksWork and price = 100 and country_code='CA';
/* for SpaFinder */
select @productDescriptionIdForSpaFinder:=(select product_description_id from product_description where name = "SpaFinder");
UPDATE product SET `order_price` = '10' WHERE product_description_id = @productDescriptionIdForSpaFinder and price = 100 and country_code='CA';
/* for WaySpa */
select @productDescriptionIdForWaySpa:=(select product_description_id from product_description where name = "WaySpa");
UPDATE product SET `order_price` = '11' WHERE product_description_id = @productDescriptionIdForWaySpa and price = 100 and country_code='CA';
/*for Canadian tire - pending  */
select @productDescriptionIdForCanadianTire:=(select product_description_id from product_description where name = "Canadian Tire");
UPDATE product SET `order_price` = '12' WHERE product_description_id = @productDescriptionIdForCanadianTire and price = 100 and country_code='CA';
/* for Zellers */
select @productDescriptionIdForZellers:=(select product_description_id from product_description where name = "Zellers");
UPDATE product SET `order_price` = '13' WHERE product_description_id = @productDescriptionIdForZellers and price = 100 and country_code='CA';
/* for The Bay  */
select @productDescriptionIdForBay:=(select product_description_id from product_description where name = "The Bay");
UPDATE product SET `order_price` = '14' WHERE product_description_id = @productDescriptionIdForBay and price = 100 and country_code='CA';

/* entry for filemanagement for 641*/
INSERT INTO app_property VALUES 
('PreviousProcessedFile', '20070205_Some_Filename', 'The last file that was processed for shipping order', 'FileName'
);

/*for replacing marchCauses by march_2009_causes.do action 704 */
select @systemTemplateId:=(select sys_template_id from sys_template where description = "Email template for new paying user");
UPDATE sys_template SET design = '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd"><html><head><title>FiftyP</title><meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css"><!--.verdana {	font-family: Verdana, Geneva, sans-serif;}--></style></head><div><body ><table  width="744" border="0">	<tr><td><table width="744" border="0" align="left" cellpadding="0" cellspacing="0" style="border:15px solid #7B2B83;border-bottom:0px;">			  <tr>			    <td width="635" style="border-bottom:0px solid #7B2B83">			      <table width="100%" border="0">			        <tr>			          <td width="50%"><img src="cid:logo_parent.gif" width="294" height="84"></td>  <td width="50%" align="center" valign="top" style="padding:15px 10px 0px 0px;font-family:verdana;font-size:12px;" >	 <br /> Welcome to FiftyP!<br/>	    We''re glad you''re here!	 </td> </tr>	 </table></td>	 </tr>	  <tr >	 <td style="padding-left:15px;font-size:12px; font-family:verdana;">	<p><b>Thanks for joining our growing community of families raising money-wise,   caring kids.</b> <br />    To help you jumpstart your kids'' progress here''s what   other FiftyP parents recommend:</p>				      <p><img src="cid:welcome_email_logo.jpg" width="600" height="508"><br />				       <br/>Because FiftyP is also about sharing, your kids can start to make a difference   right away. <STRONG>We give away 50% of our profits </STRONG>to charity so   encourage your kids to rate our <A href="http://www.fiftyp.com/${causeMonth}" target="_blank">four featured causes</A> to help direct FiftyP''s monthly donation.<br/></p>				      <p>Let FiftyP begin working for your family today. To log in, go to <A href="http://www.fiftyp.com" target="_blank">http://www.fiftyp.com</A>. And, click <A href="http://www.fiftyp.com/swf/parentDemo/parentDemo.html" target="_blank">here</A> if you haven''t watched our Parent demo yet.<BR>				        <br/>				        Our best to your family and thanks again for joining,<BR>				      The FiftyP Team<br/><br />				        ************************************************************************************<BR>				        <b>A   Special Offer for FiftyP Members: </b>FiftyP has teamed up with Scholastic   for a great offer! Get 20% off your purchase at the <A href="http://store.scholastic.com/webapp/wcs/stores/servlet/HomeView?storeId=10052&catalogId=10051" target="_blank">Scholastic Store Online</A>. &nbsp;Use code FTP09 through ${scholasticDate} at   checkout on any purchase of $49 or more!<BR>				        <br>				    </p>				</td>			  </tr>			  <tr>			    <td bgcolor="#7B2B83" style="padding:5px"> <font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">					For more information please contact our support team at </font><a href=''mailto:support@fiftyp.com''><font  style="font-size:11px; line-height:16px" face="verdana" color="#ffffff">support@fiftyp.com</font></a><br>			    </td>			  </tr>			</table>	</td>	</tr>	<tr>		<td>			<div style="padding-left:15px;font-family:verdana;font-size:12px;">            <br />				<p>OPT OUT: You are receiving this message because you are a member of FiftyP.com. <BR>				  If you do not wish to receive these messages in the future,<BR>				  please send   us an email at <A href="mailto:support@fiftyp.com" target="_blank">support@fiftyp.com</A> with unsubscribe in the subject   line.<BR>				  <BR>				  You are currently listed in our mailing list as: <A href=mailto:${userName?split("@")[0]}@fiftyp.com target="_blank">${userName?split("@")[0]}@fiftyp.com</A><BR>				  <BR>				  FiftyP,   Inc.<BR>				  114 Washington Street<BR>				  South Norwalk, CT 06854<BR></p></div>	    </td>	</tr></table></body>'
WHERE sys_template_id = @systemTemplateId  ;

/* ------------------------------------------------------------------ */
/* April Causes (#846)*/
/* ------------------------------------------------------------------ */
update cause set month = 0 where month = 1;
update cause set month = 1 where month = 2;

insert into ngo_profile values ('Play Soccer Nonprofit International', 3, 'Play Soccer Nonprofit International', 'frontPage/play_soccer_logo.jpg', 'accounting_api1.fiftyp.com', 'CBG27W337RDPCN5G', 'ANLtbss44zmc-2JgAPYn1Tf9sBp8AMR3rDp0AYTHo4MRtAKvNb63.qCM');
insert into ngo_profile values ('Wolf Conservation Center', 4, 'Wolf Conservation Center', 'frontPage/wolf_logo.jpg', 'accounting_api1.fiftyp.com', 'CBG27W337RDPCN5G', 'ANLtbss44zmc-2JgAPYn1Tf9sBp8AMR3rDp0AYTHo4MRtAKvNb63.qCM');
insert into ngo_profile values ('Save the Children', 5, 'Save the Children', 'frontPage/save_the_children.jpg', 'accounting_api1.fiftyp.com', 'CBG27W337RDPCN5G', 'ANLtbss44zmc-2JgAPYn1Tf9sBp8AMR3rDp0AYTHo4MRtAKvNb63.qCM');

/* soccer, whale, wolf */
insert into cause values (9, 'ENVIRONMENT', 3,
  'Soccer for Good',
  '$5 buys a team jersey;<br>$10 provides a soccer ball;<br>$15 buys a year''s worth of weekly nutritious snacks for one child;<br>$25 supplies a first-aid kit.<br><br>Kids all over the world love soccer, but many don''t have a team to play on or even a ball to kick around. That''s changing in six African countries, where children from disadvantaged communities now come together once a week to learn the rules and skills of the game - and much more. They learn about good nutrition and staying healthy - important in a part of the world where malaria and other diseases are common. And they take part in activities that teach them leadership, teamwork, and respect for others.',
  'share/psni_iconssoccerforgood.png',
  'share/42.HoS_9.png',
  'share/psni_iconssoccerforgood.png',
  '56A5EC',
  'Thank you!',
  'to Soccer for Good',
  'Scores One^for African Kids! African kids are crazy about soccerCM using anything that can be kicked for the sake of playing the game. So soccer is a natural starting point for a program that@ wants to make the world a better place for kids. The program is now operating in six African countriesCM where kids from disadvantaged communities come together to learn and play soccer - and much more. Each week they also learn about good nutritionCM sanitationCM and staying healthy. They take part in activities that teach them leadershipCM teamworkCM and respect for others. And they benefit from services such as mobile libraries and community gardens.   Programs like these depend on the help of people around the world - people like ChildName of FiftyPCM whose donation of dollaramount is making a difference for African kids.',
  'Cameroon, Ghana, Malawi, Senegal, South Africa & Zambia',
  2,
  'FiftyP is making a difference! This month it will donate $amtValue1 to support programs that protect endangered animals and brighten the lives of children in need. FiftyP\\''s contribution will return endangered red wolves to the wild and help biologists study the amazing songs of male humpback whales.  The money will also provide musical instruments for students in underserved schoolsCM and will bring soccerCM education, and important community services to African children and their families.');

insert into cause values (10, 'ENVIRONMENT', 2,
  'Whale Songs',
  '$5 pays for recording 3 minutes of whale songs;<br>$10 pays for the recording to be studied;<br>$15 buys the headphones worn while collecting songs;<br>$25 provides the fuel to send the research boat to the whale gathering spot.<br><br>Did you know that male humpback whales sing beautiful songs that can last half an hour? And that whales in the same group all sing the same song? Collecting these tunes can teach us a lot about this endangered species: how they communicate with each other, for example, and where they go to give birth.   Their songs may also provide a way we can protect them. Although whales are gigantic, many are injured in collisions with ships. As we learn where humpbacks are likely to sing, we can place listening devices at sea so shippers can hear them and slow down.   To collect humpback songs, a biologist drops an underwater microphone deep into the sea. The mike is attached to a digital recorder, so the songs can be analyzed and stored.',
  'share/wcds_iconswhalesongs.png',
  'share/42.HoS_10.png',
  'share/wcds_iconswhalesongs.png',
  '4CC417',
  'Thank you!',
  'to Whale Songs',
  'Captures@Whale Songs! Male humpback whales are known for their beautifulCM haunting songsCM some of the longest in the animal kingdom. Members of the same group all sing the same @ songCM but a whale will switch to a new song if it joins a different group.  Scientists want to learn more about the music of this endangered species: how humpbacks use songs to communicateCM for exampleCM and when and where they sing. Their songs may reveal where they migrate in the fall - which could lead to ways to protect them from danger.   Thanks to ChildName of FiftyPCM the humpback melodies will continue to be heard. ChildName donated dollaramount from gender Share account to support the work of researchers who record and analyze these surprising songs.',
  'Turks & Caicos Islands, West Indies',
  2,
  'FiftyP is making a difference! This month it will donate $amtValue1 to support programs that protect endangered animals and brighten the lives of children in need. FiftyP\\''s contribution will return endangered red wolves to the wild and help biologists study the amazing songs of male humpback whales.  The money will also provide musical instruments for students in underserved schoolsCM and will bring soccerCM education, and important community services to African children and their families.');

insert into cause values (11, 'ENVIRONMENT', 4,
  'Red Wolf Pups',
  '$5 pays for gas to pick up deer meat, a favorite red wolf meal;<br>$10 buys 3 feet of chain link fence to shelter the wolves from humans;<br>$15 provides a pooper-scooper for keeping the wolf home clean;<br>$25 pays for vaccines to protect one red wolf pup from disease.<br><br>Red wolves once ruled the wilderness, but years of hunting and land development made them all but disappear. Wolves are an important predator; without them, deer and smaller mammals overrun the forest, destroying plant life and animal homes.   Now red wolves are returning to the wild, thanks to programs that breed them in captivity and release their young to wildlife preserves.  To protect these young wolves from danger, it''s important to preserve their natural fear of humans. A good way is to place the pups soon after birth into a den of wild wolves, which will raise them as their own. That''s the goal of the Red Wolf Pups project, which plans to breed a pair of these rare wolves next spring.',
  'share/wcc_iconsredwolfpups.png',
  'share/42.HoS_11.png',
  'share/wcc_iconsredwolfpups.png',
  'FD7303',
  'Thank you!',
  'to Red Wolf Pups',
  'Helps^Red Wolves Go Wild! Red wolves were once extinct in the wildCM but they’re making a comeback with help from ChildName of FiftyP. ChildName donated dollaramount from gender Share account to @ support a program that plans to breed red wolves in captivity and release their pups into the wild. The wolf pups will be placed in a den of wild wolves that will raise them as their own. The wolf pups will be placed in a den of wild wolves that will raise them as their own.  As large predatorsCM wolves help keep the ecosystem in balance. The loss of red wolves throughout the South allowed the deer population to growCM which in turn caused serious damage to plantsCM treesCM and streams.   Restoring these rare red wolves to their native habitat can take 20 years or more. ThanksCM ChildNameCM for your help in making it happen!',
  'Southeastern US',
  2,
  'FiftyP is making a difference! This month it will donate $amtValue1 to support programs that protect endangered animals and brighten the lives of children in need. FiftyP\\''s contribution will return endangered red wolves to the wild and help biologists study the amazing songs of male humpback whales.  The money will also provide musical instruments for students in underserved schoolsCM and will bring soccerCM education, and important community services to African children and their families.');

insert into cause values (12, 'ENVIRONMENT', 5,
  'Plumpy''nut',
  'Babies who are severely undernourished need special foods to help them quickly gain weight and build strength. Plumpy''nut, which costs $2 per packet, is a ready-to-eat mixture that tastes like peanut butter and gives babies the calories and protein they need to regain their strength.  Your donation makes it possible to provided this needed help to young children in countries where drought, floods and conflict often lead to food shortages, poor nutrition and disease.',
  'share/stc_iconsplumpynut.png',
  'share/42.HoS_12.png',
  'share/stc_iconsplumpynut.png',
  '9B30FF',
  'Thank you!',
  'to Plumpy''nut',
  'Provides Hope^to Hungry Children! In many parts of the worldCM countries affected by drought, floods and conflict face a severe shortage of food. Children under age two are the hardest hit by @ poor nutrition: They lose weightCM become weakCM and are more likely to get sick. poor nutrition: They lose weightCM become weakCM and are more likely to get sick.   Babies suffering from severe malnutrition need special foods to help them quickly gain weight and build strength. Plumpy\\''nut is a high-energyCM ready-to-eat mixture in a squeezable foil pouch. It tastes like peanut butter and is packed with the calories and protein that babies need to regain their strength.   Thanks to ChildName of FiftyP and his donation of dollaramountCM children affected by hunger will get the nutrition support they need.',
  'Africa, Asia, Latin America',
  2,
  'FiftyP is making a difference! This month it will donate $amtValue1 to support programs that protect endangered animals and brighten the lives of children in need. FiftyP\\''s contribution will return endangered red wolves to the wild and help biologists study the amazing songs of male humpback whales.  The money will also provide musical instruments for students in underserved schoolsCM and will bring soccerCM education, and important community services to African children and their families.');

insert into fiftyp_donation values (4, 168, '2009-04-01 00:00:00', '2009-04-30 23:59:59');