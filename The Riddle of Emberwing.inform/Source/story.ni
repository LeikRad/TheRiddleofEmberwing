"The Riddle of Emberwing - Prologue" by LeikRad

Chapter 1 - The Whispering winds

The Guiding Stone is nowhere.
The Forest is a room. "A dense and silent forest, covered in damp mist. Shadows dance among the ancient trunks."
The Glen is west of the Forest. "The fog drifts between the trees of the glade. The distant sound of running water mingles with the chirping of unseen birds. In the center of the clearing, half-buried in moss and earth, rises a stone obelisk."

The Obelisk is a fixed in place thing in the Glen. "A stone structure covered in moss. Glowing runes are engraved on its surface."
The description of the Obelisk is "The runes glow softly: 'In flame I slept, in storm I woke. My heart was stolen, my wings denied. Seek the eye, the scale, the stone — return them, and I shall soar again.' As you touch the letters, you feel a strange pulse beneath the stone."

After examining the Obelisk for the first time:
	say "Tarin's heart races. The words echo like a long-forgotten prophecy.";
	now the Obelisk Discovered is true.

The Village Path is east of the Forest. "A leaf-covered path leads back to the village of Brelmere, silent and shrouded in mist."

The Village Center is a room. "The heart of Brelmere pulses with unease. Villagers murmur and exchange worried glances."
The Village Path is west of the Village Center.

The Tavern is north of the Village Center. "The muffled sound of mugs and voices mixes with the smell of ale and aged wood."

The Elder House is northwest of the Village Center. "An old house with an arched roof, where the village elder receives those who seek wisdom."

The Shepherd's Cottage is southwest of the Village Center. "Tarin's modest stone-and-thatch cottage feels uneasy beneath the gray sky."

The Farmland is south of the Shepherd's Cottage. "Open, silent fields where Tarin's sheep once grazed. Now, they seem barren."

The Haunted House is southeast of the Village Center. "A forgotten building, cloaked in ivy and shadows. No one dares approach it."

Tarin's Mother is a woman in the Shepherd's Cottage. "Miren lies pale and struggling to breathe. The air is thick with the smell of bitter herbs."
Understand "miren", "mother", "mum", "sick" as Tarin's Mother.

The Messenger is a man in the Village Center. "An old man in a soaked hood, carrying a satchel of maps and scrolls."
The description of the Messenger is "His face is marked by worry. He brings ill tidings."
Understand "man", "old man", "messenger" as the Messenger.

The Elderly is a man in the Elder House. "The elder sits before the fire, eyes half-closed, as if hearing ancient voices in the crackling flames."
Understand "elder", "man", "wise man" as the Elder.

Conversing is an action applying to one visible thing.
Understand "talk to [someone]" or "speak with [someone]" as conversing.

Carry out conversing:
	if the noun is Tarin's Mother:
		say "She murmurs something incomprehensible. The illness seems tied to the land itself... perhaps to the dragon's disappearance?";
	else if the noun is the Messenger:
		say "'The dragon... is gone,' he says. 'Emberwing vanished from the Isle of Ash. The crops fail. Beasts grow restless. And now this...' — he points to the stormy sky.";
	else if the noun is the Elder:
		say "'The runes glow once more — they haven't done so since Emberwing's time... This may be the end... or a new beginning,' he says gravely.";
	else:
		say "[The noun] doesn’t seem interested in talking.";

The Obelisk Discovered is a truth state that varies. The Obelisk Discovered is false.

Every turn when the location is the Shepherd's Cottage and the Obelisk Discovered is true:
	say "The words from the obelisk dance in Tarin's mind... the heart, the scale, the stone... could this be the path to saving his mother?";

Remembering is an action applying to nothing.
Understand "remember" or "recall" as remembering.

Carry out remembering:
	if the Obelisk Discovered is true:
		say "'In flame I slept, in storm I woke. My heart was stolen, my wings denied. Seek the eye, the scale, the stone — return them, and I shall soar again.'";
	else:
		say "There’s nothing to recall yet... perhaps you need to explore further.";

Chapter 2 - The Sky Cracks

Crossroads is a room. "Blahblah."
Village of Brelmere is west of the Crossroads.

Chapter 3 - The Eye of the Dragon

[Rooms]
Birchwood Path is a room.  "A strange fog envelops everything, you can barely see your feet when you look down."
Cave Entrance is a room. "You encroach on a strange terrain formation with stones that seem to heavy to move on your own."
Crystal Caverns is a room. "BALGLAGLASDLGDSLG."

[Connections]
Birchwood Path is east of the Crossroads. 
Birchwood Path is east of Birchwood Path.
Cave Entrance is north of Birchwood Path.
Birchwood Path is west of Birchwood Path.
Birchwood Path is south of Birchwood Path.
Crystal Caverns is north of Cave Entrance. 

[Variables]
GMush_placed is a truth state that varies. GMush_placed is false.
TMush_placed is a truth state that varies. TMush_placed is false.
CMush_placed is a truth state that varies. CMush_placed is false.
Cave_is_open is a truth state that varies. Cave_is_open is false.
The MushSlots are a thing in Cave Entrance. The MushSlots are fixed in place. "Three oddly shaped slots are carved deep into the stone.
	[if the number of slots currently filled is 0]They are all currently empty, expectantly waiting.
	[otherwise if the number of slots currently filled is 1]One slot now holds a mushroom, which emits a faint, almost imperceptible hum. Two empty slots remain.
	[otherwise if the number of slots currently filled is 2]Two slots now hold their respective mushrooms, a subtle combined energy emanating from them. Only one empty slot is left.
	[otherwise]All three slots are now filled with mushrooms. They seem to pulse with a gentle, collective energy, as if waiting for a final catalyst or perhaps having already fulfilled their purpose.[end if]".

Understand "slot" or "slots" or "indentation" or "indentations" or "carvings" as the MushSlots.
To decide what number is the number of slots currently filled:
	let count be 0;
	if GMush_placed is true, increment count;
	if TMush_placed is true, increment count;
	if CMush_placed is true, increment count;
	decide on count.
	
	
The MushCount is a number that varies.
MSpawnBonus is a number that varies. MSpawnBonus is 0.
BMSpawnChanceNumerator is a number that varies. BMSpawnChanceNumerator is 2. [e.g., base 20% chance if denominator is 10]
MSpawnChanceDenominator is a number that varies. MSpawnChanceDenominator is 10. [Chance will be X in 10]

A mushroom is a kind of thing.
The description of a mushroom is usually "It's a curious-looking fungus."

The Glowing Mushroom is a mushroom. "You see a faint glowing near the ground in the fog."
The Glowing Mushroom is nowhere.

The Tree Mushroom is a mushroom. "You see light eminating from a hollow tree trunk."
The Tree Mushroom is nowhere.

The Covered Mushroom is a mushroom. "A deer picks at the ground. It looks like it's trying to eat something."
The Covered Mushroom is nowhere.

The av_mushrooms is a list of mushrooms that varies.
The Dragon Eye is in the Crystal Caverns.
The description of the Dragon Eye is "A magnificent gem, roughly the size of your fist. It pulses with an inner light, warm and vibrant, resembling a dragon's knowing eye."

When play begins:
	now the av_mushrooms is {Glowing Mushroom, Tree Mushroom, Covered Mushroom}.

[Mushroom Spawn Logic]	
Before going to Birchwood Path:
	say "MushCount before entering Birchwood: [MushCount]. Available: [av_mushrooms]."; [More detailed debug]
	repeat with item running through mushrooms in the location: [This refers to mushrooms in Birchwood Path]
		if the item is in Birchwood Path: [Ensure we only remove mushrooms actually in this room]
			now the item is nowhere; [Remove old mushrooms from this specific room]
			say "Removed [the item] from Birchwood Path.";
	[***** CHANCE TO SPAWN MUSHROOM *****]
	let current_numerator be BMSpawnChanceNumerator + MSpawnBonus;
	let effective_numerator be current_numerator;
	if effective_numerator > MSpawnChanceDenominator:
		now effective_numerator is MSpawnChanceDenominator; [Cap at 100% chance, e.g., 10 in 10]
	if a random chance of effective_numerator in MSpawnChanceDenominator succeeds:
		if the number of entries in av_mushrooms is greater than 0:
			sort av_mushrooms in random order;
			let the chosen be entry 1 of av_mushrooms;
			now the chosen is in the Birchwood Path;
			say "You notice something peculiar on the ground as you step into the fog."; [Optional flavor text]
			say "Spawned [chosen] in Birchwood Path.";
			now MSpawnBonus is 0;
		else:
			say "The fog seems particularly uneventful this time."; [Message if no mushrooms are left to spawn]
			say " Tried to spawn, but no available mushrooms left.";
			increment MSpawnBonus;
	else:
		say "The path is shrouded in mist, revealing nothing out of the ordinary."; [Message if the chance fails]
		say "Mushroom spawn chance failed.";
		say "Mushroom spawn chance ([effective_numerator] in [MSpawnChanceDenominator]) failed.";
		increment MSpawnBonus;
	[Part 2: Dynamic Cave Direction Logic]
	
[EZ route out]
Using is an action applying to one thing.
Understand "use [thing]" as using.
Carry out using the Guiding Stone:
	if the location is Birchwood Path:
		say "The Guiding Stone vibrates gently and pulls you toward safety...";
		move the player to Crossroads;
		say "The fresh air seems light compared to the dense fog, you feel relieved.";
	otherwise:
		say "Nothing happens."
		
[Mushroom logic]
Check taking a mushroom: [Optional: Prevent taking if not in the right place or other conditions]
	if the location is not Birchwood Path and the noun is a mushroom:
		say "You can't seem to find any mushrooms here." instead;

After taking a mushroom (called the shroom):
	increment MushCount;
	remove the shroom from av_mushrooms;
	say "You carefully pick the [shroom]. Your MushCount is now [MushCount].";
	now the shroom is in the player. [This line is redundant if standard take rules run, but good for clarity]

[Cavern Stuff]
Instead of going north from Cave Entrance when Cave_is_open is false:
	say "A solid rock wall, marked with those three oddly shaped slots, blocks further passage north. The slots seem to be waiting for something to be placed within them."
	
[Ensure the standard inserting action is understood]
Understand "put [something] in [something]" or "insert [something] into [something]" or "place [something] in [something]" or "place [something] into [something]" as inserting it into.
Check inserting something (called the item) into the MushSlots:
	if the player is not in Cave Entrance: [Should be caught by action system, but belt-and-suspenders]
		say "You need to be at the Cave Entrance to do that." instead;
	if the player is not carrying the item:
		say "(first taking [the item])[command clarification break]You try to place [the item] in the slots." instead;
	if the item is not a mushroom:
		say "[The item] doesn't look like it would fit or belong in any of the slots." instead;
	if the item is a mushroom and the item is not the Glowing Mushroom and the item is not the Tree Mushroom and the item is not the Covered Mushroom:
		say "[The item] is interesting, but it doesn't seem to be one of the special mushrooms required for these slots." instead;

Instead of inserting a mushroom (called the shroom) into the MushSlots:
	if Cave_is_open is true:
		say "The slots are filled and the way is already open." instead;
	if the shroom is the Glowing Mushroom:
		if GMush_placed is true:
			say "A glowing mushroom is already nestled in one of the slots." instead;
		now GMush_placed is true;
		remove the shroom from play; [Crucial: consumes the mushroom]
		say "You carefully place the Glowing Mushroom into one of the slots. It settles in with a soft click and emits a steady, faint light.";
	else if the shroom is the Tree Mushroom:
		if TMush_placed is true:
			say "A tree mushroom is already firmly set in a slot." instead;
		now TMush_placed is true;
		remove the shroom from play;
		say "The Tree Mushroom slides into a slot with a snug fit. You hear a faint, woody resonance.";
	else if the shroom is the Covered Mushroom:
		if CMush_placed is true:
			say "It appears a covered mushroom (or one just like it) has already been placed in a slot." instead;
		now CMush_placed is true;
		remove the shroom from play;
		say "The Covered Mushroom fits neatly into a slot. A subtle earthy scent wafts from it.";
	else:
		[This case should ideally be caught by the "Check inserting" rule above,
		but as a fallback for any other kind of mushroom if you add them later]
		say "[The shroom] doesn't quite fit or feel right for these slots." instead;
	if GMush_placed is true and TMush_placed is true and CMush_placed is true:
		if Cave_is_open is false: [Only trigger the grand opening once]
			now Cave_is_open is true;
			say "As [the shroom] settles into the final slot, all three mushrooms begin to glow in powerful unison, their combined light pushing back the shadows. A deep, resonant hum vibrates through the very stone beneath your feet. With a slow, grinding groan that echoes around the clearing, the rock wall shudders and then slides ponderously aside, revealing a dark passage leading north into the mountain's heart!";
		else:
			[If cave somehow got open and they are still placing, or if they place the last one again after opening - this state should be rare]
			say "The slots are now all filled with their catalysts, and the way forward is clear.";
	else:
		[Give feedback on how many are placed if the cave isn't open yet]
		let count_placed be the number of slots currently filled;
		if count_placed is 1:
			say "With [the shroom] placed, one slot is now filled. Two more to go.";
		else if count_placed is 2:
			say "That's two mushrooms in place now. Just one more mystical fungus needed!";
		[No message if it's the third one, as the cave opening message handles that]

After taking the Dragon Eye:
	say "As your fingers close around the Dragon Eye, a surge of warmth flows up your arm. The gem pulses brightly, and you feel a profound connection to the ancient magic woven into the very stones of these caverns.";
	change the West exit of the Birchwood Path to the Crossroads;
	say "A subtle tremor runs through the ground, and the air shimmers momentarily. You sense a shift in the pathways of this mystical place
	A new passage seems to have opened from these Crystal Caverns, leading directly south towards the surface!
	Simultaneously, you feel that the Trail Entrance itself now holds a direct, albeit hidden, route leading north, straight to these deeper caves.";	
	continue the action;
	
Chapter 4 - The Scale of Ember

Chapter 5 - The Stone of Storms

Chapter 6 - Crossing Paths

Chapter 7 - The Return

Chapter 8 - The Consequence

Chapter 9 - Epilogue
