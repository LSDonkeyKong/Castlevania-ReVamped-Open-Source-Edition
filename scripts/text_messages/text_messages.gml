function item_messages()
{
global.message_lifemaxup = @"LIFE MAX UP
Maximum HP increased by 1. HP fully restored."

global.message_heartmaxup = @"HEART MAX UP
Maximum number of hearts increased by 5. Press " + input_verb_get_icon("subweapon") + " to use sub-weapons."

global.message_whipaim = @"DYNAMIC STRIKE
Aim your whip in 8 directions. Hold a direction and press " + input_verb_get_icon("attack") + ". Hold " + input_verb_get_icon("aimlock") + " to prevent movement while aiming."

global.message_slide = @"BREEZEY SLIDE
Pass through tight spaces with an unoffensive slide. Hold " + input_verb_get_icon("down") + " and press " + input_verb_get_icon("jump") +  " while on the ground. Hold " + input_verb_get_icon("down") + " to slide continuously."

global.message_morningstar = @"MORNING STAR
Elongated chain whip that can break certain types of blocks. Press " + input_verb_get_icon("attack") +  " to strike with the whip."

global.message_walljump = @"GRIPPING CLAWS
Slides down walls and grants the ability to wall-jump. Press " + input_verb_get_icon("jump") +  " while holding a direction against a wall."

global.message_groundpound = @"BRIDGE SNAPPER
Destroy thin blocks with an offensive dive move. Hold " + input_verb_get_icon("down") + " and press " + input_verb_get_icon("jump") +  " while in the air. A damaging shockwave is released upon landing."

global.message_flamewhip = @"FLAME WHIP
A burning chain whip that deals repetitive damage and destroys certain types of blocks. Hold " + input_verb_get_icon("attack") + " to keep whip extended. Press " + input_verb_get_icon("swap") + " to swap the current whip."

global.message_icewhip = @"FROST WHIP
An ice-cold chain whip that deals massive damage and destroys certain types of blocks. Press " + input_verb_get_icon("swap") + " to swap the current whip."

global.message_thunderwhip = @"THUNDER WHIP
A quick-to-swing electrified chain whip that deals minor damage and destroys certain types of blocks. Press " + input_verb_get_icon("swap") + " to swap the current whip."

global.message_dubblejump = @"LEAP STONE
Allows a second jump to be performed. Press " + input_verb_get_icon("jump") + " while in midair."

global.message_dash = @"DASH STONE
Grants the ability to perform a gravity-defying dash. Hold " + input_verb_get_icon("dash") + " to use the dash. A dash can be performed endlessly in the air."

global.message_waterarmor = @"AQUATIC ARMOR
Allows full range of movement in water. Ability to wall-jump, dash and double-jump underwater restored."

global.message_superslide = @"SPIKED BOOTS
A faster slide move with minor offensive capability. Destroys certain kinds of blocks. Hold " + input_verb_get_icon("down") + " and press " + input_verb_get_icon("jump") +  " while on the ground. Hold " + input_verb_get_icon("down") + " to slide continuously."
}

function card_messages()
{
	knife_string = "??????\n"
	axe_string = "??????\n"
	holywater_string = "??????\n"
	bible_string = "??????\n"
	boomerang_string = "??????\n"
	rosary_string = "??????\n"
	stopwatch_string = "??????\n"
	laurel_string = "??????\n"
	healingstrike_string = "??????\n"
	cardiacstrike_string = "??????\n"
	heartdiscount_string = "??????\n"
	critical_string = "??????\n"
	blazingstride_string = "??????\n"
	phaseslide_string = "??????\n"
	meteordash_string = "??????\n"
	arsenalswap_string = "??????\n"
	kinship_string = "??????\n"
	cursed_string = "??????\n"
	
	if global.knife_card > 0 
		knife_string = "Knife Card\nTriples the amount of knives thrown using the Knife subweapon."
	if global.axe_card > 0 
		axe_string = "Axe Card\nIncreases the area covered by the Axe subweapon."
	if global.holywater_card > 0 
		holywater_string = "Holy Water Card\nThe Holy Water subweapon gains a trailing effect."
	if global.bible_card > 0 
		bible_string = "Bible Card\nIncreases the area covered by the Bible subweapon."
	if global.boomerang_card > 0 
		boomerang_string = "Boomerang Card\nSlows the effect of the Boomerang subweapon, allowing more damage to accumulate."
	if global.rosary_card > 0 
		rosary_string = "Rosary Card\nWidens the area covered by the Rosary subweapon."
	if global.watch_card > 0 
		stopwatch_string = "Stopwatch Card\nDoubles the effect time of the Stopwatch subweapon."
	if global.laurel_card > 0 
		laurel_string = "Laurel Card\nDoubles the amount of healing by the Laurel subweapon."
	if global.healingstrike_card > 0 
		healingstrike_string = "Healing Strike Card\nEvery few successful whip strikes, HP is healed by 1."
	if global.cardiacstrike_card > 0 
		cardiacstrike_string = "Cardiac Strike Card\nEvery successful strike of the whip drops a heart."
	if global.heartdiscount_card > 0 
		heartdiscount_string = "Heart Discount Card\nReduces the heart cost of subweapons."
	if global.critical_card > 0 
		critical_string = "Critical Card\nAdds a chance for all weapons to deal critical hits and reveals damage values."
	if global.blazingsteps_card > 0 
		blazingstride_string = "Blazing Stride Card\nA trail of flames will appear in the user's footsteps."
	if global.phaseslide_card > 0 
		phaseslide_string = "Heavy Boots Card\nNegates the effects of knockback when damaged."
	if global.meteordash_card > 0 
		meteordash_string = "Meteor Dash Card\nAdds offensive capability to the Dash. Requires an additional ability."
	if global.arsenalswap_card > 0 
		arsenalswap_string = "Corpse Run Card\nAllows one chance to obtain lost money after a death."
	if global.kinship_card > 0 
		kinship_string = "Kinship Card\nSummons a familiar to attack enemies."
	if global.cursed_card > 0 
		cursed_string = "Cursed Card\nAll damage is fatal and subweapons cost twice as many hearts, but enemies drop 3 times as much money."	
}

function shop_messages()
{
		knife_description = "Knife Card\nTriples the amount of knives thrown using the Knife subweapon."
		axe_description = "Axe Card\nIncreases the area covered by the Axe subweapon."
		holywater_description = "Holy Water Card\nThe Holy Water subweapon gains a trailing effect."
		bible_description = "Bible Card\nIncreases the area covered by the Bible subweapon."
		boomerang_description = "Boomerang Card\nSlows the effect of the Boomerang subweapon, allowing more damage to accumulate."
		rosary_description = "Rosary Card\nWidens the area covered by the Rosary subweapon."
		stopwatch_description = "Stopwatch Card\nDoubles the effect time of the Stopwatch subweapon."
		laurel_description = "Laurel Card\nDoubles the amount of healing by the Laurel subweapon."
		healingstrike_description = "Healing Strike Card\nEvery few successful whip strikes, HP is healed by 1."
		cardiacstrike_description = "Cardiac Strike Card\nEvery successful strike of the whip drops a heart."
		heartdiscount_description = "Heart Discount Card\nReduces the heart cost of subweapons."
		critical_description = "Critical Card\nAdds a chance for all weapons to deal critical hits and reveals damage values."
		blazingstride_description = "Blazing Stride Card\nA trail of flames will appear in the user's footsteps."
		phaseslide_description = "Heavy Boots Card\nNegates the effects of knockback when damaged."
		meteordash_description = "Meteor Dash Card\nAdds offensive capability to the Dash. Requires an additional ability."
		arsenalswap_description = "Corpse Run Card\nAllows one chance to obtain lost money after a death."
		kinship_description = "Kinship Card\nSummons a familiar to attack enemies."
		cursed_description = "Cursed Card\nAll damage is fatal and subweapons cost twice as many hearts, but enemies drop 3x as much cash."	
}

function bestiary_names(entry_number)
{
	if argument0 = 0 && ds_map_find_value(global.savedata,"bestiary0") != undefined
		return("Zombie")
	if argument0 = 1 && ds_map_find_value(global.savedata,"bestiary1") != undefined
		return("Black Leopard")
	if argument0 = 2 && ds_map_find_value(global.savedata,"bestiary2") != undefined
		return("Vampire Bat")
	if argument0 = 3 && ds_map_find_value(global.savedata,"bestiary3") != undefined
		return("Fish-Man")
	if argument0 = 4 && ds_map_find_value(global.savedata,"bestiary4") != undefined
		return("The Black Knight")
	if argument0 = 5 && ds_map_find_value(global.savedata,"bestiary5") != undefined
		return("Medusa Head")
	if argument0 = 6 && ds_map_find_value(global.savedata,"bestiary6") != undefined
		return("Ghost")
	if argument0 = 7 && ds_map_find_value(global.savedata,"bestiary7") != undefined
		return("Dragon Skull Cannon")
	if argument0 = 8 && ds_map_find_value(global.savedata,"bestiary8") != undefined
		return("Stained-Glass Ghost")
	if argument0 = 9 && ds_map_find_value(global.savedata,"bestiary9") != undefined
		return("Slime")
	if argument0 = 10 && ds_map_find_value(global.savedata,"bestiary10") != undefined
		return("Beholder")
	if argument0 = 11 && ds_map_find_value(global.savedata,"bestiary11") != undefined
		return("Gargoyle")
	if argument0 = 12 && ds_map_find_value(global.savedata,"bestiary12") != undefined
		return("Skele-Dragon")
	if argument0 = 13 && ds_map_find_value(global.savedata,"bestiary13") != undefined
		return("Blazing Spirit")
	if argument0 = 14 && ds_map_find_value(global.savedata,"bestiary14") != undefined
		return("Hunchback")
	if argument0 = 15 && ds_map_find_value(global.savedata,"bestiary15") != undefined
		return("Skeleton")
	if argument0 = 16 && ds_map_find_value(global.savedata,"bestiary16") != undefined
		return("Raven")
	if argument0 = 17 && ds_map_find_value(global.savedata,"bestiary17") != undefined
		return("Stone Man")
	if argument0 = 18 && ds_map_find_value(global.savedata,"bestiary18") != undefined
		return("Hellhound")
	if argument0 = 19 && ds_map_find_value(global.savedata,"bestiary19") != undefined
		return("Floating Skull")
	if argument0 = 20 && ds_map_find_value(global.savedata,"bestiary20") != undefined
		return("Spider")
	if argument0 = 21 && ds_map_find_value(global.savedata,"bestiary21") != undefined
		return("Mini-Mummy")
	if argument0 = 22 && ds_map_find_value(global.savedata,"bestiary22") != undefined
		return("Thornweed")
	if argument0 = 23 && ds_map_find_value(global.savedata,"bestiary23") != undefined
		return("Eagle")
	if argument0 = 24 && ds_map_find_value(global.savedata,"bestiary24") != undefined
		return("Wall-Widow")
	if argument0 = 25 && ds_map_find_value(global.savedata,"bestiary25") != undefined
		return("Swamp Thing")
	if argument0 = 26 && ds_map_find_value(global.savedata,"bestiary26") != undefined
		return("Water Blob")
	if argument0 = 27 && ds_map_find_value(global.savedata,"bestiary27") != undefined
		return("Frog")
	if argument0 = 28 && ds_map_find_value(global.savedata,"bestiary28") != undefined
		return("Mudman")
	if argument0 = 29 && ds_map_find_value(global.savedata,"bestiary29") != undefined
		return("Bone Scimitar")
	if argument0 = 30 && ds_map_find_value(global.savedata,"bestiary30") != undefined
		return("Yorick")
	if argument0 = 31 && ds_map_find_value(global.savedata,"bestiary31") != undefined
		return("Winged Guard")
	if argument0 = 32 && ds_map_find_value(global.savedata,"bestiary32") != undefined
		return("Lesser Demon")
	if argument0 = 33 && ds_map_find_value(global.savedata,"bestiary33") != undefined
		return("Killer Toys")
	if argument0 = 34 && ds_map_find_value(global.savedata,"bestiary34") != undefined
		return("Killer Mirror")
	if argument0 = 35 && ds_map_find_value(global.savedata,"bestiary35") != undefined
		return("Jack O'Bones")
	if argument0 = 36 && ds_map_find_value(global.savedata,"bestiary36") != undefined
		return("Dulachan")
	if argument0 = 37 && ds_map_find_value(global.savedata,"bestiary37") != undefined
		return("Golden Guard")
	if argument0 = 38 && ds_map_find_value(global.savedata,"bestiary38") != undefined
		return("Gremlin")
	if argument0 = 39 && ds_map_find_value(global.savedata,"bestiary39") != undefined
		return("Frosty Bones")
	if argument0 = 40 && ds_map_find_value(global.savedata,"bestiary40") != undefined
		return("Creeper Bones")
	if argument0 = 41 && ds_map_find_value(global.savedata,"bestiary41") != undefined
		return("Blood Skeleton")
	if argument0 = 42 && ds_map_find_value(global.savedata,"bestiary42") != undefined
		return("Bone Claymore")
	if argument0 = 43 && ds_map_find_value(global.savedata,"bestiary43") != undefined
		return("Axe Knight")
	if argument0 = 44 && ds_map_find_value(global.savedata,"bestiary44") != undefined
		return("Freddie")
	if argument0 = 45 && ds_map_find_value(global.savedata,"bestiary45") != undefined
		return("Ectoplasm")
	if argument0 = 46 && ds_map_find_value(global.savedata,"bestiary46") != undefined
		return("Rose Demon")
	if argument0 = 47 && ds_map_find_value(global.savedata,"bestiary47") != undefined
		return("Blue Crow")
	if argument0 = 48 && ds_map_find_value(global.savedata,"bestiary48") != undefined
		return("Burning Man")
	if argument0 = 49 && ds_map_find_value(global.savedata,"bestiary49") != undefined
		return("Harpy")
	return("????????????")
}

function bestiary_entries(entry_number)
{
	if argument0 = 0 && ds_map_find_value(global.savedata,"bestiary0") != undefined
		return("The walking corpses of previous uninvited guests, turned putrid and evil by their time in the haunted castle. Hoards of these undead  climb out of the ground and overwhelm intruders.")
	if argument0 = 1 && ds_map_find_value(global.savedata,"bestiary1") != undefined
		return("An extremely rare curiosity, Dark Lord Dracula was astonished to find a leopard with this coloration during his travels. He immediately sought to tame and breed it, and, as such, the castle is now full of these little pets of his. Don't let their cute face fool you - these dark felines are just as dangerous as any normal leopard. Taking advantage of their dark fur, Black Leopards often wait in the darkness of tight spaces, to surprise and then charge their prey.")
	if argument0 = 2 && ds_map_find_value(global.savedata,"bestiary2") != undefined
		return("A bat, cursed by the Dark Lord to suck the blood of any unfortunate passerby. They enjoy dark corridors and tend to hang out near the ceiling, but will attack quickly when provoked and pursue their prey.")
	if argument0 = 3 && ds_map_find_value(global.savedata,"bestiary3") != undefined
		return("Creatures from the Black Lagoons of the Amazon, these humanoid fish monsters have taken residence in the deeper, wetter parts of Dracula's castle. Despite having the appearance of fish, these creatures are actually amphibious and attack with their fire-breath.")
	if argument0 = 4 && ds_map_find_value(global.savedata,"bestiary4") != undefined
		return("A renowned warrior of Arthurian legend, the Black Knight is said to have bested Sir Calogrenant of the Round Table in single combat. He was reportedly later killed by Sir Yvain, but other stories indicate that he was actually killed by King Arthur while he was questing for the Holy Grail. Regardless of how he met his end, he was brought back from the depths of hell to serve as a guardian of Dracula's Castle.")
	if argument0 = 5 && ds_map_find_value(global.savedata,"bestiary5") != undefined
		return("The children of the Gorgon Sister Medusa. Despite taking on the basic appearance of their mother, these floating heads do not have the ability to turn their prey to stone. Their movement is rather predictable, but they attack with force.")
	if argument0 = 6 && ds_map_find_value(global.savedata,"bestiary6") != undefined
		return("The damned souls of those who wandered into Castlevania and met their end, leaving nothing behind but their regrets. They now float around the halls endlessly, lashing out at any living thing they may come across. ")
	if argument0 = 7 && ds_map_find_value(global.savedata,"bestiary7") != undefined
		return("The reanimated heads of dragons that have their fire-breathing muscles still intact. Immoble, they defend areas as stationary canons, hence their name. They tend to use two fire attacks: a fireball that they can launch over long distances and a fire-breath that they use to incinerate closer targets. Despite often being in groups of two or more, each dragon is an individual entity and must, therefore, be destroyed on its own. Those who find themselves fighting these monsters would do well to keep their distance and find cover when at all possible. ")
	if argument0 = 8 && ds_map_find_value(global.savedata,"bestiary8") != undefined
		return("A cursed collection of stained glass shards, brought together to form a sharp monstrosity. Despite its intimidating stature, this monster is still just glass.")
	if argument0 = 9 && ds_map_find_value(global.savedata,"bestiary9") != undefined
		return("These unintelligent anomalies have no known origin. They come in many different colors, each moving at a different pace, and pounce on passersby indiscriminately. ")
	if argument0 = 10 && ds_map_find_value(global.savedata,"bestiary10") != undefined
		return("A fleshy monster known and named for its unblinking eye. These creatures have been described in numerous ways, often including many eyes and a mouth, but those who call the castle home seem to only possess one eye. They use this eye to keep careful track of their targets and will rush those who are not careful.")
	if argument0 = 11 && ds_map_find_value(global.savedata,"bestiary11") != undefined
		return("These finely carved statues were commissioned by the Dark Lord as ornaments for his castle. He later found ways to get demonic spirits to possess them, and now they act as guardians. They hide in their perches and swoop down on unsuspecting intruders.")
	if argument0 = 12 && ds_map_find_value(global.savedata,"bestiary12") != undefined
		return("The remains of one of the many thousands of dragons that have been slain over the years. Dark Lord Dracula encountered the bones of many of these worm-like reptilians and has used his dark magic to reanimate them. Due to the incomplete nature of their skeleton, however, Skele-Dragon are stuck to one spot and cannot chase after their prey. Monster hunters should use this to their advantage as they watch out for their erratic movements and fire-breath.")
	if argument0 = 13 && ds_map_find_value(global.savedata,"bestiary13") != undefined
		return("Unlike the standard ghosts that haunt the Castle, these spirits are ripped directly from hell and bring with them some of the hellfire. Seeking release from their eternal torment, Blazing Spirits attack passerby with a fiery viciousness. ")
	if argument0 = 14 && ds_map_find_value(global.savedata,"bestiary14") != undefined
		return("Despite having the appearance of hunched over men, these are actually monstrous creatures summoned forth from the dark forests of the world. Having adapted to the tree-tops of their home, these creatures are extremely agile and will pounce on their target over and over until it is dead. As such, when facing these monsters, it is best to keep your distance.")
	if argument0 = 15 && ds_map_find_value(global.savedata,"bestiary15") != undefined
		return("A simple, undead skeleton revived from the bones of past guests to the castle. Their bodies are cobbled together from many different bodies, and, therefore, often have extra bones, which they use as a projectile. Avoid these and move in close for a quick kill.")
	if argument0 = 16 && ds_map_find_value(global.savedata,"bestiary16") != undefined
		return("Cursed birds that haunt the airy parts of the castle. These persistent attackers use their talons to deal damage as they swoop down on their prey over and over. ")
	if argument0 = 17 && ds_map_find_value(global.savedata,"bestiary17") != undefined
		return("A collection of stones given life through unholy rituals. Rather than being possessed by a spirit, each individual rock is given life. When attacked, these monsters split into smaller versions of themselves to overwhelm their foes.")
	if argument0 = 18 && ds_map_find_value(global.savedata,"bestiary18") != undefined
		return("A monstrous hound summoned from the depths of hell. These dogs are vicious, yet cautious. They will lie in wait in closed corridors and then rush out at their prey when they get close.")
	if argument0 = 19 && ds_map_find_value(global.savedata,"bestiary19") != undefined
		return("A cursed skull that Dracula has given the powers of flight. He has also placed a portal inside of its mouth that allows it to vomit out a torrent of jagged bones from the crypts hidden in the castle.")
	if argument0 = 20 && ds_map_find_value(global.savedata,"bestiary20") != undefined
		return("An absurdly large arachnid, kept as a favored pet by the Dark Lord. These creepy-crawlies use their webs and venom to overwhelm their prey.")
	if argument0 = 21 && ds_map_find_value(global.savedata,"bestiary21") != undefined
		return("A lesser mummy pillaged from hidden tombs in Egypt. These mindless mummies have been reanimated with dark magic to haunt the halls of Castlevania. Their wraps have become loose with time, and they will throw these cursed scraps at their foes.")
	if argument0 = 22 && ds_map_find_value(global.savedata,"bestiary22") != undefined
		return("A kind of violent mandrake made in the Dark Lord's torture lab. Using the fluids of his dying victims, Dracula sprouted these thornweeds as a trap for unwitting trespassers. Watch the floors carefully and eliminate these weeds quickly.")
	if argument0 = 23 && ds_map_find_value(global.savedata,"bestiary23") != undefined
		return("These well-trained eagles assist the Hunchbacks, serving as support who carry in reinforcements. Watch the skies, as they have been known to drop Hunchbacks directly on top of their targets. ")
	if argument0 = 24 && ds_map_find_value(global.savedata,"bestiary24") != undefined
		return("A poor widow who spent the remainder of her life staring at the wall. When she died, her spirit got stuck in the wall. She spends her afterlife jumping between surfaces to attack any who remind her of the joy she once had.")
	if argument0 = 25 && ds_map_find_value(global.savedata,"bestiary25") != undefined
		return("The Swamp Thing was originally a person, who was murdered by a jealous friend. His body was dumped in the haunted swamps that surround Castlevania. Here, he became one with the swamp and now manages all the plantlife in the castle with his countless bodies.")
	if argument0 = 26 && ds_map_find_value(global.savedata,"bestiary26") != undefined
		return("Water cursed with a perverted consecration. Rather than being blessed with the power to cleanse evil, this water has instead become evil and seeks to suck out the life of anything it can touch.")
	if argument0 = 27 && ds_map_find_value(global.savedata,"bestiary27") != undefined
		return("A favorite pet of witches, these frogs are much larger than standard, and their tongue can deliver a sharp blow to any unfortunate targets.")
	if argument0 = 28 && ds_map_find_value(global.savedata,"bestiary28") != undefined
		return("The haunted corpse of an unfortunate soul that drowned in the dark swamps around Castlevania. They sunk into the deep parts of the castle and prowl in the darkness. Their bodies have become so infused with the mud that they are very difficult to destroy.")
	if argument0 = 29 && ds_map_find_value(global.savedata,"bestiary29") != undefined
		return("Another of the undead remains of previous ''guests'' to the castle. These skeletons were trained in the art of swordplay in life, and use those skills to lash out at intruders in their afterlife.")
	if argument0 = 30 && ds_map_find_value(global.savedata,"bestiary30") != undefined
		return("Alas, poor Yorick! This poor man once served a great prince, raising him in the absence of the king. After his untimely passing, Yorick's head was removed and used as a memento of sorts. In his undeath, he has found it difficult to keep track of his head and often drops it on the floor, where he proceeds to inadvertently kick it around at alarming speeds. While he surely means no harm, his confused fumblings can prove as deadly as any other monster in the castle.")
	if argument0 = 31 && ds_map_find_value(global.savedata,"bestiary31") != undefined
		return("A skeleton that the Dark Lord Dracula fused with the wings of a harpy. These chimeric undead can soar through the air and use their spears to skewer their enemies.")
	if argument0 = 32 && ds_map_find_value(global.savedata,"bestiary32") != undefined
		return("Fallen angels who were corrupted by the fires of hell, these demons were sent forth by Lucifer to assist the Dark Lord in his conquest. Seeking vengeance for their fallen status, Lesser Demons lash out violently at mortals. They can take to the skies and attack their victims with their sharp talons. ")
	if argument0 = 33 && ds_map_find_value(global.savedata,"bestiary33") != undefined
		return("An assortment of childhood toys for an unfortunate soul that grew up in the castle. While cute and playful with children, these creations become violent when they spot an intruder.")
	if argument0 = 34 && ds_map_find_value(global.savedata,"bestiary34") != undefined
		return("A mirror with a very angry ghost trapped inside by one of Dracula's experiments. Despite being unable to leave the mirror, these vicious spirits still find ways to attack those foolish enough to walk by them.")
	if argument0 = 35 && ds_map_find_value(global.savedata,"bestiary35") != undefined
		return("Jack O'Bones are skeletons that have been possessed by the mischievous spirit of Jack O'the Lantern. The bones that they throw will bounce around the room, tricking unsuspecting opponents. ")
	if argument0 = 36 && ds_map_find_value(global.savedata,"bestiary36") != undefined
		return("A dark, violent creature that takes the appearance of a man without a head. Legends of this monster abound all across Europe, but one thing remains consistent: his appearance means death. He slays his unfortunate victims with deadly thrusts from his human-bone rapier.")
	if argument0 = 37 && ds_map_find_value(global.savedata,"bestiary37") != undefined
		return("An enchanted set of golden armor tasked with patrolling the halls of Castlevania. Their spears give them the reach and power necessary to take down even well prepared foes. ")
	if argument0 = 38 && ds_map_find_value(global.savedata,"bestiary38") != undefined
		return("Small, mischievous, and intelligent creatures that have been known to cause malfunctions of all kinds of machinery, including ships. Dracula appears to keep them as caretakers of the castle, though they will relentlessly attack anything or anyone that seems out of place. They are particularly aggressive tonight, as they have been fed well past midnight.")
	if argument0 = 39 && ds_map_find_value(global.savedata,"bestiary39") != undefined
		return("These skeletons are the result of the Dark Lord's experiments where he attempted to summon the traitorous spirits from Cocytus. While he was unable to bring forth these spirits, he was able to trap some of the frozen wind of the Ninth Circle of hell. As such, these skeletons possess an icy composure, and will throw their bones with cold accuracy.")
	if argument0 = 40 && ds_map_find_value(global.savedata,"bestiary40") != undefined
		return("Skeletons who have been unfortunately infused with gunpowder by the Dark Lord. These anxious monsters are known to charge their opponents before detonating.")
	if argument0 = 41 && ds_map_find_value(global.savedata,"bestiary41") != undefined
		return("A skeleton that was reanimated using Dark Lord Dracula's own vampiric blood. This gives them special undead properties that prevent them from being destroyed, putting themselves back together shortly after falling apart. Monster hunters would do well to attack and then quickly get away from their bodies before they rise again.")
	if argument0 = 42 && ds_map_find_value(global.savedata,"bestiary42") != undefined
		return("The undead remains of Holy Knights who sought to slay the Dark Lord in life. In death, they serve him as guardians of the castle, using their giant sword and superior strength to slay any intruders.")
	if argument0 = 43 && ds_map_find_value(global.savedata,"bestiary43") != undefined
		return("A suit of heavy armor possessed by a powerful demon. Dracula has engineered this sentry to have a dangerous, boomerang-like axe that returns to its user after being thrown.")
	if argument0 = 44 && ds_map_find_value(global.savedata,"bestiary44") != undefined
		return("Sometimes referred to as The Hat Man, Freddie is a demon known to intrude on people's dreams, often killing them in their sleep with his knife-fingers. He has been given a physical form by the Dark Lord, so that he may stalk the halls of the castle and defend it from intruders. ")
	if argument0 = 45 && ds_map_find_value(global.savedata,"bestiary45") != undefined
		return("Ghosts who have been experimented on by the Dark Lord. Their slimy bodies possess the same incorporeal characteristics of normal ghosts, but with some added durability.")
	if argument0 = 46 && ds_map_find_value(global.savedata,"bestiary46") != undefined
		return("A special species of rose bred by the Dark Lord Dracula to spit fire at anything that gets too close.")
	if argument0 = 47 && ds_map_find_value(global.savedata,"bestiary47") != undefined
		return("A crow of unusual color. These birds are highly intelligent and territorial. They have been known to swoop down and attack passerby simply for coming too close.")
	if argument0 = 48 && ds_map_find_value(global.savedata,"bestiary48") != undefined
		return("A spirit pulled fresh from hell and restored to their physical form. Despite being brought back to Earth, these unfortunate souls are not freed from their eternal torment and carry some hellfire with them. ")
	if argument0 = 49 && ds_map_find_value(global.savedata,"bestiary49") != undefined
		return("The disgusting bird-women first encountered by the Ancient Greeks. Harpies' heads and bodies resemble that of a woman, but putrid and gray. Their arms and legs are those of birds, and they can fly as fast as eagles. They use their vicious talons to shred apart their prey. Many harpies now make their home in Castlevania and serve the Dark Lord as one of his many servants.")
}

function bestiary_hp(entry_number)
{
	if argument0 = 0 && ds_map_find_value(global.savedata,"bestiary0") != undefined
		return("1")
	if argument0 = 1 && ds_map_find_value(global.savedata,"bestiary1") != undefined
		return("3")
	if argument0 = 2 && ds_map_find_value(global.savedata,"bestiary2") != undefined
		return("3")
	if argument0 = 3 && ds_map_find_value(global.savedata,"bestiary3") != undefined
		return("4")
	if argument0 = 4 && ds_map_find_value(global.savedata,"bestiary4") != undefined
		return("16")
	if argument0 = 5 && ds_map_find_value(global.savedata,"bestiary5") != undefined
		return("1")
	if argument0 = 6 && ds_map_find_value(global.savedata,"bestiary6") != undefined
		return("16")
	if argument0 = 7 && ds_map_find_value(global.savedata,"bestiary7") != undefined
		return("24")
	if argument0 = 8 && ds_map_find_value(global.savedata,"bestiary8") != undefined
		return("64")
	if argument0 = 9 && ds_map_find_value(global.savedata,"bestiary9") != undefined
		return("1")
	if argument0 = 10 && ds_map_find_value(global.savedata,"bestiary10") != undefined
		return("8")
	if argument0 = 11 && ds_map_find_value(global.savedata,"bestiary11") != undefined
		return("32")
	if argument0 = 12 && ds_map_find_value(global.savedata,"bestiary12") != undefined
		return("40")
	if argument0 = 13 && ds_map_find_value(global.savedata,"bestiary13") != undefined
		return("20")
	if argument0 = 14 && ds_map_find_value(global.savedata,"bestiary14") != undefined
		return("1")
	if argument0 = 15 && ds_map_find_value(global.savedata,"bestiary15") != undefined
		return("8")
	if argument0 = 16 && ds_map_find_value(global.savedata,"bestiary16") != undefined
		return("1")
	if argument0 = 17 && ds_map_find_value(global.savedata,"bestiary17") != undefined
		return("32")
	if argument0 = 18 && ds_map_find_value(global.savedata,"bestiary18") != undefined
		return("9")
	if argument0 = 19 && ds_map_find_value(global.savedata,"bestiary19") != undefined
		return("1")
	if argument0 = 20 && ds_map_find_value(global.savedata,"bestiary20") != undefined
		return("9")
	if argument0 = 21 && ds_map_find_value(global.savedata,"bestiary21") != undefined
		return("20")
	if argument0 = 22 && ds_map_find_value(global.savedata,"bestiary22") != undefined
		return("1")
	if argument0 = 23 && ds_map_find_value(global.savedata,"bestiary23") != undefined
		return("1")
	if argument0 = 24 && ds_map_find_value(global.savedata,"bestiary24") != undefined
		return("1")
	if argument0 = 25 && ds_map_find_value(global.savedata,"bestiary25") != undefined
		return("16")
	if argument0 = 26 && ds_map_find_value(global.savedata,"bestiary26") != undefined
		return("1")
	if argument0 = 27 && ds_map_find_value(global.savedata,"bestiary27") != undefined
		return("12")
	if argument0 = 28 && ds_map_find_value(global.savedata,"bestiary28") != undefined
		return("80")
	if argument0 = 29 && ds_map_find_value(global.savedata,"bestiary29") != undefined
		return("17")
	if argument0 = 30 && ds_map_find_value(global.savedata,"bestiary30") != undefined
		return("20")
	if argument0 = 31 && ds_map_find_value(global.savedata,"bestiary31") != undefined
		return("1")
	if argument0 = 32 && ds_map_find_value(global.savedata,"bestiary32") != undefined
		return("32")
	if argument0 = 33 && ds_map_find_value(global.savedata,"bestiary33") != undefined
		return("1")
	if argument0 = 34 && ds_map_find_value(global.savedata,"bestiary34") != undefined
		return("10")
	if argument0 = 35 && ds_map_find_value(global.savedata,"bestiary35") != undefined
		return("8")
	if argument0 = 36 && ds_map_find_value(global.savedata,"bestiary36") != undefined
		return("1")
	if argument0 = 37 && ds_map_find_value(global.savedata,"bestiary37") != undefined
		return("50")
	if argument0 = 38 && ds_map_find_value(global.savedata,"bestiary38") != undefined
		return("1")
	if argument0 = 39 && ds_map_find_value(global.savedata,"bestiary39") != undefined
		return("8")
	if argument0 = 40 && ds_map_find_value(global.savedata,"bestiary40") != undefined
		return("45")
	if argument0 = 41 && ds_map_find_value(global.savedata,"bestiary41") != undefined
		return("666")
	if argument0 = 42 && ds_map_find_value(global.savedata,"bestiary42") != undefined
		return("17")
	if argument0 = 43 && ds_map_find_value(global.savedata,"bestiary43") != undefined
		return("60")
	if argument0 = 44 && ds_map_find_value(global.savedata,"bestiary44") != undefined
		return("30")
	if argument0 = 45 && ds_map_find_value(global.savedata,"bestiary45") != undefined
		return("24")
	if argument0 = 46 && ds_map_find_value(global.savedata,"bestiary46") != undefined
		return("50")
	if argument0 = 47 && ds_map_find_value(global.savedata,"bestiary47") != undefined
		return("1")
	if argument0 = 48 && ds_map_find_value(global.savedata,"bestiary48") != undefined
		return("32")
	if argument0 = 49 && ds_map_find_value(global.savedata,"bestiary49") != undefined
		return("1")
}

function bestiary_boss_names(entry_number)
{
	if argument0 = 0 && ds_map_find_value(global.savedata,"bestiary_boss0") != undefined
		return("Phantom Bat")
	if argument0 = 1 && ds_map_find_value(global.savedata,"bestiary_boss1") != undefined
		return("Medusa")
	if argument0 = 2 && ds_map_find_value(global.savedata,"bestiary_boss2") != undefined
		return("Golem")
	if argument0 = 3 && ds_map_find_value(global.savedata,"bestiary_boss3") != undefined
		return("Mummy Man")
	if argument0 = 4 && ds_map_find_value(global.savedata,"bestiary_boss4") != undefined
		return("The Creature")
	if argument0 = 5 && ds_map_find_value(global.savedata,"bestiary_boss5") != undefined
		return("Mirror Monster")
	if argument0 = 6 && ds_map_find_value(global.savedata,"bestiary_boss6") != undefined
		return("Granfalloon")
	if argument0 = 7 && ds_map_find_value(global.savedata,"bestiary_boss7") != undefined
		return("Cthulhu")
	if argument0 = 8 && ds_map_find_value(global.savedata,"bestiary_boss8") != undefined
		return("The Grim Reaper")
	if argument0 = 9 && ds_map_find_value(global.savedata,"bestiary_boss9") != undefined
		return("Dark Lord Dracula")
	return("????????????")
}

function bestiary_boss_entries(entry_number)
{
	if argument0 = 0 && ds_map_find_value(global.savedata,"bestiary_boss0") != undefined
		return("The King of the Vampire Bats, who long ago was gifted the pure vampiric powers by the Dark Lord Dracula. These gave the Phantom Bat exceptional strength and intelligence. It has been a loyal servant of the Dark Lord ever since, and guards the entrance to his castle faithfully.")
	if argument0 = 1 && ds_map_find_value(global.savedata,"bestiary_boss1") != undefined
		return("The youngest and deadliest of the three Gorgon Sisters. Medusa was originally a beautiful maiden before being spurred by the Goddess Minerva for being violated within the Temple of Minerva. Medusa then became the monstrous woman with snakes for hair and a power to turn those who look upon her to stone. She was slayed by the hero Perseus in antiquity, but has been given new life by the Dark Lord Dracula. She has since lost her ability to turn her foes to stone, but fights with a fiery hatred of mortals, especially mortal men. She serves Dracula so that she may wreak her wrath upon the world once again.")
	if argument0 = 2 && ds_map_find_value(global.savedata,"bestiary_boss2") != undefined
		return("A strange creature supposedly given life through the incantations of a Rabbi Loew in Prague. While it was initially designed to protect the Jewish people in Prague, it went mad after Rabbi Loew failed to let it rest on the Sabbath. It then went on a murderous rampage, before finally being deactivated by Loew and crumbling to pieces. Dracula found these pieces, reassembled the golem, and gave it new life. Unfortunately, Dracula does not let it rest on the Sabbath, and so the Golem has become the dangerous, unstable guardian of the lower parts of the castle.")
	if argument0 = 3 && ds_map_find_value(global.savedata,"bestiary_boss3") != undefined
		return("These five mummies were once Egyptian Priests who served under Ramses II. They were found by Dark Lord Dracula during one of his expeditions to Egypt, and brought back to Castlevania. Being given new, immortal life by Dracula, these Priests now serve  and defend their new master and his castle.")
	if argument0 = 4 && ds_map_find_value(global.savedata,"bestiary_boss4") != undefined
		return("The unfortunate monstrosity created by Dr. Victor Frankenstein in his attempts to uncover the secrets of life. After being rejected by his creator and society as a whole, Frankenstein's monster was cursed to wander. The Dark Lord found him huddled in a cave in the frozen arctic. Dracula promised him a home, and so the Monster defends his newfound family with his life.")
	if argument0 = 5 && ds_map_find_value(global.savedata,"bestiary_boss5") != undefined
		return("An Elven Trickster who was cursed to roam the mirror dimension for his misdeeds and take the shape of any who cross its path. The Mirror Monster was found by Dracula, who used his dark magic to allow the Mirror Monster to temporarily escape its prison in exchange for his service. It now haunts the mirrors of the castle, eagerly awaiting a chance to break free and confront any intruders.")
	if argument0 = 6 && ds_map_find_value(global.savedata,"bestiary_boss6") != undefined
		return("A cursed group of unfortunate souls, forced together meaninglessly in the depths of hell by the devil. They now bear this unholy and torturous shape, lashing out at all living things. This entity was given to Dracula as a gift by Satan as part of their pact to destroy the world. Granfalloon acts as yet another one of Dracula’s generals in his hellish army.")
	if argument0 = 7 && ds_map_find_value(global.savedata,"bestiary_boss7") != undefined
		return("A member of the Great Old Ones that once ruled the earth, Cthulhu was found by Dracula, sleeping in an ancient city beneath the ocean. While worshiped as a god by many cults, Cthulhu has not yet regained his full strength. He allies himself with Dracula so that he may regain his powers, and assist in taking back the world while he waits.")
	if argument0 = 8 && ds_map_find_value(global.savedata,"bestiary_boss8") != undefined
		return("The physical manifestation of Death brought forth to assist the Dark Lord in his evil conquest. He was sent by Lucifer himself as part of a pact with Dracula to help conquer the world and cover it in darkness. The Grim Reaper provided Dracula with much of the knowledge used to raise his army, and currently serves as a general and final guardian to the Dark Lord.")
	if argument0 = 9 && ds_map_find_value(global.savedata,"bestiary_boss9") != undefined
		return("The Dark Lord and Master of Castlevania, Vlad Dracula Tepes. Originally known as ''Vlad the Impaler,'' Dracula became a vampire early in his life and used his abilities to torture the peasents in his land and experiment with evil magics. He fell in love with a woman, but she was ripped away from him and burnt as a witch. He has sworn vengeance ever since and has created a pact with the Devil himself to take over the world. While he was stopped in the past, he is cursed by his pact with the Devil to return again and again, every one-hundred years until his work is complete.")
}

function bestiary_boss_hp(entry_number)
{
	if argument0 = 0 && ds_map_find_value(global.savedata,"bestiary_boss0") != undefined
		return("200")
	if argument0 = 1 && ds_map_find_value(global.savedata,"bestiary_boss1") != undefined
		return("500")
	if argument0 = 2 && ds_map_find_value(global.savedata,"bestiary_boss2") != undefined
		return("200")
	if argument0 = 3 && ds_map_find_value(global.savedata,"bestiary_boss3") != undefined
		return("270")
	if argument0 = 4 && ds_map_find_value(global.savedata,"bestiary_boss4") != undefined
		return("370")
	if argument0 = 5 && ds_map_find_value(global.savedata,"bestiary_boss5") != undefined
		return("500")
	if argument0 = 6 && ds_map_find_value(global.savedata,"bestiary_boss6") != undefined
		return("500")
	if argument0 = 7 && ds_map_find_value(global.savedata,"bestiary_boss7") != undefined
		return("500")
	if argument0 = 8 && ds_map_find_value(global.savedata,"bestiary_boss8") != undefined
		return("500")
	if argument0 = 9 && ds_map_find_value(global.savedata,"bestiary_boss9") != undefined
		return("666")
}

function enemy_nametags(entry_number)
{
	if argument0 = 0 
		return("01.Zombie")
	if argument0 = 1 
		return("02.Black Leopard")
	if argument0 = 2 
		return("03.Vampire Bat")
	if argument0 = 3 
		return("04.Fish-Man")
	if argument0 = 4 
		return("05.The Black Knight")
	if argument0 = 5 
		return("06.Medusa Head")
	if argument0 = 6 
		return("07.Ghost")
	if argument0 = 7 
		return("08.Dragon Skull Cannon")
	if argument0 = 8 
		return("09.Stained-Glass Ghost")
	if argument0 = 9 
		return("10.Slime")
	if argument0 = 10 
		return("11.Beholder")
	if argument0 = 11 
		return("12.Gargoyle")
	if argument0 = 12 
		return("13.Skele-Dragon")
	if argument0 = 13 
		return("14.Blazing Spirit")
	if argument0 = 14 
		return("15.Hunchback")
	if argument0 = 15 
		return("16.Skeleton")
	if argument0 = 16 
		return("17.Raven")
	if argument0 = 17 
		return("18.Stone Man")
	if argument0 = 18 
		return("19.Hellhound")
	if argument0 = 19 
		return("20.Floating Skull")
	if argument0 = 20 
		return("21.Spider")
	if argument0 = 21 
		return("22.Mini-Mummy")
	if argument0 = 22 
		return("23.Thornweed")
	if argument0 = 23 
		return("24.Eagle")
	if argument0 = 24 
		return("25.Wall-Widow")
	if argument0 = 25 
		return("26.Swamp Thing")
	if argument0 = 26 
		return("27.Water Blob")
	if argument0 = 27 
		return("28.Frog")
	if argument0 = 28 
		return("29.Mudman")
	if argument0 = 29 
		return("30.Bone Scimitar")
	if argument0 = 30 
		return("31.Yorick")
	if argument0 = 31 
		return("32.Winged Guard")
	if argument0 = 32 
		return("33.Lesser Demon")
	if argument0 = 33 
		return("34.Killer Toys")
	if argument0 = 34 
		return("35.Killer Mirror")
	if argument0 = 35 
		return("36.Jack O'Bones")
	if argument0 = 36 
		return("37.Dulachan")
	if argument0 = 37 
		return("38.Golden Guard")
	if argument0 = 38 
		return("39.Gremlin")
	if argument0 = 39 
		return("40.Frosty Bones")
	if argument0 = 40 
		return("41.Creeper Bones")
	if argument0 = 41 
		return("42.Blood Skeleton")
	if argument0 = 42 
		return("43.Bone Claymore")
	if argument0 = 43 
		return("44.Axe Knight")
	if argument0 = 44 
		return("45.Freddie")
	if argument0 = 45 
		return("46.Ectoplasm")
	if argument0 = 46 
		return("47.Rose Demon")
	if argument0 = 47 
		return("48.Blue Crow")
	if argument0 = 48 
		return("49.Burning Man")
	if argument0 = 49 
		return("50.Harpy")
}

function boss_nametags(entry_number)
{
	if argument0 = 0
		return("01.Phantom Bat")
	if argument0 = 1
		return("02.Medusa")
	if argument0 = 2
		return("03.Golem")
	if argument0 = 3 
		return("04.Mummy Man")
	if argument0 = 4 
		return("05.The Creature")
	if argument0 = 5 
		return("06.Mirror Monster")
	if argument0 = 6 
		return("07.Granfalloon")
	if argument0 = 7
		return("08.Cthulhu")
	if argument0 = 8
		return("09.The Grim Reaper")
	if argument0 = 9
		return("10.Dark Lord Dracula")
}

function enemy_list_nametags(entry_number)
{
	if argument0 = 0 && ds_map_find_value(global.savedata,"bestiary0") != undefined
		return("Zombie")
	if argument0 = 1 && ds_map_find_value(global.savedata,"bestiary1") != undefined
		return("Black Leopard")
	if argument0 = 2 && ds_map_find_value(global.savedata,"bestiary2") != undefined
		return("Vampire Bat")
	if argument0 = 3 && ds_map_find_value(global.savedata,"bestiary3") != undefined
		return("Fish-Man")
	if argument0 = 4 && ds_map_find_value(global.savedata,"bestiary4") != undefined
		return("The Black Knight")
	if argument0 = 5 && ds_map_find_value(global.savedata,"bestiary5") != undefined
		return("Medusa Head")
	if argument0 = 6 && ds_map_find_value(global.savedata,"bestiary6") != undefined
		return("Ghost")
	if argument0 = 7 && ds_map_find_value(global.savedata,"bestiary7") != undefined
		return("Dragon Skull Cannon")
	if argument0 = 8 && ds_map_find_value(global.savedata,"bestiary8") != undefined
		return("Stained-Glass Ghost")
	if argument0 = 9 && ds_map_find_value(global.savedata,"bestiary9") != undefined
		return("Slime")
	if argument0 = 10 && ds_map_find_value(global.savedata,"bestiary10") != undefined
		return("Beholder")
	if argument0 = 11 && ds_map_find_value(global.savedata,"bestiary11") != undefined
		return("Gargoyle")
	if argument0 = 12 && ds_map_find_value(global.savedata,"bestiary12") != undefined
		return("Skele-Dragon")
	if argument0 = 13 && ds_map_find_value(global.savedata,"bestiary13") != undefined
		return("Blazing Spirit")
	if argument0 = 14 && ds_map_find_value(global.savedata,"bestiary14") != undefined
		return("Hunchback")
	if argument0 = 15 && ds_map_find_value(global.savedata,"bestiary15") != undefined
		return("Skeleton")
	if argument0 = 16 && ds_map_find_value(global.savedata,"bestiary16") != undefined
		return("Raven")
	if argument0 = 17 && ds_map_find_value(global.savedata,"bestiary17") != undefined
		return("Stone Man")
	if argument0 = 18 && ds_map_find_value(global.savedata,"bestiary18") != undefined
		return("Hellhound")
	if argument0 = 19 && ds_map_find_value(global.savedata,"bestiary19") != undefined
		return("Floating Skull")
	if argument0 = 20 && ds_map_find_value(global.savedata,"bestiary20") != undefined
		return("Spider")
	if argument0 = 21 && ds_map_find_value(global.savedata,"bestiary21") != undefined
		return("Mini-Mummy")
	if argument0 = 22 && ds_map_find_value(global.savedata,"bestiary22") != undefined
		return("Thornweed")
	if argument0 = 23 && ds_map_find_value(global.savedata,"bestiary23") != undefined
		return("Eagle")
	if argument0 = 24 && ds_map_find_value(global.savedata,"bestiary24") != undefined
		return("Wall-Widow")
	if argument0 = 25 && ds_map_find_value(global.savedata,"bestiary25") != undefined
		return("Swamp Thing")
	if argument0 = 26 && ds_map_find_value(global.savedata,"bestiary26") != undefined
		return("Water Blob")
	if argument0 = 27 && ds_map_find_value(global.savedata,"bestiary27") != undefined
		return("Frog")
	if argument0 = 28 && ds_map_find_value(global.savedata,"bestiary28") != undefined
		return("Mudman")
	if argument0 = 29 && ds_map_find_value(global.savedata,"bestiary29") != undefined
		return("Bone Scimitar")
	if argument0 = 30 && ds_map_find_value(global.savedata,"bestiary30") != undefined
		return("Yorick")
	if argument0 = 31 && ds_map_find_value(global.savedata,"bestiary31") != undefined
		return("Winged Guard")
	if argument0 = 32 && ds_map_find_value(global.savedata,"bestiary32") != undefined
		return("Lesser Demon")
	if argument0 = 33 && ds_map_find_value(global.savedata,"bestiary33") != undefined
		return("Killer Toys")
	if argument0 = 34 && ds_map_find_value(global.savedata,"bestiary34") != undefined
		return("Killer Mirror")
	if argument0 = 35 && ds_map_find_value(global.savedata,"bestiary35") != undefined
		return("Jack O'Bones")
	if argument0 = 36 && ds_map_find_value(global.savedata,"bestiary36") != undefined
		return("Dulachan")
	if argument0 = 37 && ds_map_find_value(global.savedata,"bestiary37") != undefined
		return("Golden Guard")
	if argument0 = 38 && ds_map_find_value(global.savedata,"bestiary38") != undefined
		return("Gremlin")
	if argument0 = 39 && ds_map_find_value(global.savedata,"bestiary39") != undefined
		return("Frosty Bones")
	if argument0 = 40 && ds_map_find_value(global.savedata,"bestiary40") != undefined
		return("Creeper Bones")
	if argument0 = 41 && ds_map_find_value(global.savedata,"bestiary41") != undefined
		return("Blood Skeleton")
	if argument0 = 42 && ds_map_find_value(global.savedata,"bestiary42") != undefined
		return("Bone Claymore")
	if argument0 = 43 && ds_map_find_value(global.savedata,"bestiary43") != undefined
		return("Axe Knight")
	if argument0 = 44 && ds_map_find_value(global.savedata,"bestiary44") != undefined
		return("Freddie")
	if argument0 = 45 && ds_map_find_value(global.savedata,"bestiary45") != undefined
		return("Ectoplasm")
	if argument0 = 46 && ds_map_find_value(global.savedata,"bestiary46") != undefined
		return("Rose Demon")
	if argument0 = 47 && ds_map_find_value(global.savedata,"bestiary47") != undefined
		return("Blue Crow")
	if argument0 = 48 && ds_map_find_value(global.savedata,"bestiary48") != undefined
		return("Burning Man")
	if argument0 = 49 && ds_map_find_value(global.savedata,"bestiary49") != undefined
		return("Harpy")
}
