-- SQL update script for release v0.13.
-- Update the gift cards name to remove ; Ticket 555
update product_description set name="D&B" where product_description_id = 5;
update product_description set name="iTunes" where product_description_id = 6;
update product_description set name="JC Penney" where product_description_id = 13;
update product_description set name="Kohl's" where product_description_id = 14;
update product_description set name="Land's End" where product_description_id = 15;
update product_description set name="Darden" where product_description_id = 27;
update product_description set name="Dunkin Donuts" where product_description_id = 28;
update product_description set name="Papa John's" where product_description_id = 29;
update product_description set name="Macy's" where product_description_id = 32;

ALTER TABLE `parent_profile` ADD `ip_address` VARCHAR( 15 ) NULL AFTER `promotional_code_id`;

-- Update Macy's gift card image (was pointing to Land's End image).
update product_description set image_url="giftCards/macys.png" where product_description_id = 32;

-- Marketing copy repeated twice for Dunkin Donuts.  Needed to remove the repeated text.
update product_description set choose_desc="<p>Dunkin' Donuts&copy; Card</p><p>Dunkin' Way To Pay!</p><p>The easy, everyday  way to pay for your favorite Dunkin' Donuts products.</p><p>Dunkin' Donuts has a  reputation for brewing high quality coffee for more than five decades. In fact,  Dunkin' Donuts is using the original proprietary coffee blend recipe  established by its founder Bill Rosenberg in 1950.</p><p>Today, Dunkin' Donuts  is America's largest retailer of coffee-by-the-cup, serving nearly 1 billion  cups of brewed coffee each year. The Dunkin' Donuts Card is accepted at stores  across the United States.</p>" where product_description_id = 28;

-- Update to Blockbuster text. Needed to remove some extra text no longer needed.
update product_description set choose_desc="<p>They're simple, they  hold the change, and they fit into your wallet! Get happy about where your kids  spend their allowance with BLOCKBUSTER&reg; GiftCards - the answer to all gift  dilemmas.</p>" where product_description_id = 3;

-- Remove word "Legal:" from disclaimer text.
update product_description set disclamer_desc="<p>Barnes &amp; Noble gift cards can be used at any Barnes &amp; Noble store nationwide and on Barnes &amp; Noble.com (www.bn.com &lt http://www.bn.com&gt;).  This card can also be used at B. Dalton Bookseller.  Barnes &amp; Noble gift cards will not be replaced if lost or stolen.  They will not be exchanged for cash except where required by law.  Other conditions may apply to online usage.  See website for details.  Barnes &amp; Noble gift cards are issued by Marketing Services (Minnesota) Corp.</p><p>Barnes &amp;  Noble is not a sponsor or co-sponsor of this promotion.  Please see back of gift card for terms and conditions of use.  Barnes &amp; Noble is not liable for any alleged or actual claims related to this offer. <br></p>" where product_description_id = 11;

-- Update disclaimer text for Papa John's
update product_description set disclamer_desc="Papa John's is not affiliated with FiftyP and is not a sponsor or co-sponsor with this promotion." where product_description_id = 29;