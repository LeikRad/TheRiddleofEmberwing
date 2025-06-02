"The Riddle of Emberwing - Prologue" by LeikRad

Chapter 1 - The Whispering winds

Tarin is a man. The player is Tarin.
Understand "me" or "myself" or "Tarin" as Tarin.

When play begins:
	say "You step outside of your small cottage that was heavy with the scent of bitter herbs and an unspoken, pervasive worry. Your mother, Miren, lies on her cot, her breathing shallow and ragged, each rasp a painful reminder of the strange illness gripping her. Outside, the land of Eldwyn itself seems to hold its breath, the vibrant greens muted, the air still and uneasy since the disappearance of Emberwing, its mighty dragon guardian.[paragraph break]";
	say "A desperate resolve begins to form within you. Old village tales whisper of remedies linked to the land's deepest magic, to the very essence of the dragons. Perhaps answers, and a cure for Miren, lie hidden in the whispering wilds beyond Brelmere, or within forgotten lore known only to a few... Your gaze might instinctively drift towards the old forest path, or perhaps the village elder holds some fragment of wisdom that could light the way.[paragraph break]";
	
The Village Center is a room. "The heart of Brelmere pulses with an almost tangible unease. Villagers, when seen, murmur in hushed tones and exchange worried glances, their faces etched with the strain of the failing land and Miren's worsening condition. The air itself feels heavy.
Looking around, you can make out the shapes of the surrounding buildings despite the ever-present mist:
To the north, the somewhat brighter, though still subdued, entrance of the [Tavern] promises ales and company, though likely little cheer these days.
Northwest, a thin tendril of smoke curls from the chimney of the [Elder House], a beacon of quiet wisdom in troubled times.
Your own [Shepherd's Cottage] lies to the southwest, a constant, painful reminder of your mother's plight and the urgency of your quest.
Further off, to the southeast, the dark and crumbling silhouette of the [Haunted House] broods against the grey sky, a place most villagers shun and speak of only in whispers.
The main village path continues west, leading towards the old [Forest], while another track heads east towards the [Crossroads] and the uncertain paths beyond."

PHasGuide is a truth state that varies. PHasGuide is false.

The Forest is a room. "A dense and silent forest, covered in damp mist. Shadows dance among the ancient trunks."
The Glen is west of the Forest. "The fog drifts between the trees of the glade. The distant sound of running water mingles with the chirping of unseen birds. In the center of the clearing, half-buried in moss and earth, rises a stone obelisk."

The Obelisk is a fixed in place thing in the Glen. "A stone structure covered in moss. Glowing runes are engraved on its surface."
The description of the Obelisk is "The runes glow softly: 'In flame I slept, in storm I woke. My heart was stolen, my wings denied. Seek the eye, the scale, the stone — return them, and I shall soar again.' As you touch the letters, you feel a strange pulse beneath the stone."

After examining the Obelisk for the first time:
	say "Tarin's heart races. The words echo like a long-forgotten prophecy.";
	now the Obelisk Discovered is true.

The Village Path is east of the Forest. "A leaf-covered path leads back to the village of Brelmere, silent and shrouded in mist."

The Village Path is west of the Village Center.

The Tavern is north of the Village Center. "The muffled sound of mugs and voices mixes with the smell of ale and aged wood."

The Elder House is a room. "An old house with an arched roof, where the village elder receives those who seek wisdom. A sturdy study table sits near the hearth, covered in scrolls and old tomes. [if Guiding Stone is in Elder House]A beautiful golden pendant rests invitingly amongst the clutter on the table.[end if]"

The Elder House is northwest of the Village Center. 

The Guiding Stone is in the Elder House.
Understand "stone" or "pendant" or "golden pendant" or "guiding stone" as the Guiding Stone.
The description of the Guiding Stone is "This golden pendant is exquisitely crafted and feels ancient. It is surprisingly warm to the touch and seems to hum with a subtle, reassuring energy."

After taking the Guiding Stone when the Guiding Stone was in the Elder House:
	now PHasGuide is true;
	if Obelisk Discovered is true:
		say "You reach out and take the golden pendant from the table. The Elder, seeing your determined expression now that you've found the Obelisk and its riddle, nods slowly. 'So, you have chosen your path, young Tarin. That is the Guiding Stone. It has waited many years in this old house for one with such a vital purpose. It is said to quicken in the presence of ancient magic and to illuminate the way when all seems lost in shadow or illusion. Take it, and may it serve you well.'";
	else:
		say "You pick up the beautiful golden pendant from the table. It feels surprisingly warm in your palm. The Elder watches you with a thoughtful, unreadable expression, but says nothing more about it for the moment.";
	[The action of taking completes, and the stone is now with the player]

Check going from the Elder House (this is the give guiding stone on exit rule):
	if Obelisk Discovered is true and PHasGuide is false and the Guiding Stone is in the Elder House:
		[This ensures the Elder only offers it if Tarin knows the quest, doesn't have the stone, and the stone is still available]
		if the player is the actor: [Good practice to ensure it's the player]
			say "As you turn towards the doorway, intending to leave, the Elder clears his throat softly. 'One moment more, young Tarin.'[paragraph break]He rises from his chair with a deliberate slowness, retrieves the gleaming golden pendant from his study table, and steps towards you.[paragraph break]'The path revealed by the Obelisk is an ancient and perilous one,' he says, his voice imbued with a quiet solemnity. 'Many have faltered where you intend to tread. This is a Guiding Stone.' He gently presses the warm pendant into your hand. 'It has rested here for longer than most in Brelmere can recall, waiting for a true seeker to aid. It may help you find your way when confusion reigns and the ways are shrouded in more than just mist. Keep it close, listen to its whispers.'[paragraph break]";
			now the player carries the Guiding Stone; [Moves the stone to the player]
			now PHasGuide is true; [Sets the flag]
			say "(You now possess the Guiding Stone.)[paragraph break]The Elder gives you a final, encouraging nod. 'Go now, and may wisdom light your steps.'";
			[The 'going' action will now proceed after this text]

The Shepherd's Cottage is southwest of the Village Center. "Tarin's modest stone-and-thatch cottage feels uneasy beneath the gray sky."

The Farmland is south of the Shepherd's Cottage. "Open, silent fields where Tarin's sheep once grazed. Now, they seem barren."

The Haunted House is southeast of the Village Center. "A forgotten building, cloaked in ivy and shadows. No one dares approach it."

Tarin's Mother is a woman in the Shepherd's Cottage. "Miren lies pale and struggling to breathe. The air is thick with the smell of bitter herbs."
Understand "miren", "mother", "mum", "sick" as Tarin's Mother.

The Messenger is a man in the Village Center. "An old man in a soaked hood, carrying a satchel of maps and scrolls. He stands near the entrance of the village weared out, just as if he had ran for days straight."
The description of the Messenger is "His face is marked by worry. He brings ill tidings."
Understand "man", "old man", "messenger" as the Messenger.

The Elderly is a man in the Elder House. "The elder sits before the fire, eyes half-closed, as if hearing ancient voices in the crackling flames."
Understand "elder", "man", "wise man" as the Elder.

Conversing is an action applying to one visible thing.
Understand "talk to [someone]" or "speak with [someone]" or "speak or [someone]"as conversing.

Carry out conversing:
	if the noun is Tarin's Mother:
		say "She murmurs something incomprehensible. The illness seems tied to the land itself... perhaps to the dragon's disappearance?";
	else if the noun is the Messenger:
		say "'The dragon... is gone,' he says. 'Emberwing vanished from the Isle of Ash. The crops fail. Beasts grow restless. And now this...' — he points to the stormy sky. He stutters 'I-I-I must get to word to the Skyreach Monastery to-o-o-o the west!";
	else if the noun is the Elder:
		if Obelisk Discovered is true:
			say "'The runes on the stone you found... they pulse with an ancient energy I have not felt since Emberwing last graced our skies,' the Elder says, his voice a gravelly whisper. He looks at you with a heavy gaze. 'This may be the end of an age, young Tarin... or perhaps, the dawn of a new, more perilous one. The path ahead is yours to choose, between the lost woods of Birchwood Path directly east or village ruined by an ancient disaster southeast. In the meanwhile I'll try to contact the Skyreach monks to the west for help.'";
		else:
			say "'The land is sick, mirroring the fading light of Emberwing,' the Elder murmurs, his gaze distant, fixed on the dying embers in his hearth. 'Our roots are intertwined with the great dragon. Ancient signs, whispers of the old magic, may yet reveal a path to healing... if one has the courage and wisdom to seek them out in the forgotten places. The deep forest to the west has always held its secrets close, and its heart, the Glen, even more so.'";	
	else:
		say "[The noun] doesn’t seem interested in talking.";

The Obelisk Discovered is a truth state that varies. The Obelisk Discovered is false.

Every turn when the location is the Shepherd's Cottage and the Obelisk Discovered is true:
	say "The words from the obelisk dance in Tarin's mind... the heart, the scale, the stone... could this be the path to saving his mother?";

Remembering is an action applying to nothing.
Understand "remember" or "recall" as remembering.

Instead of going west from Glen when Obelisk Discovered is false:
	say "A peculiar sense of unease holds you back from venturing further west for now, as if the ancient trees themselves are barring your way. Perhaps there's something of significance here in this glade that you must understand before the path into the deeper wilds will reveal itself."

Instead of going east from Village Center when Obelisk Discovered is false:
	say "You feel a strong reluctance to head towards the crossroads just yet. There's a palpable sense that your true journey hasn't quite begun, that some vital insight or purpose is still missing – perhaps something to be found within the village or its immediate, quieter surroundings."
Carry out remembering:
	if the Obelisk Discovered is true:
		say "'In flame I slept, in storm I woke. My heart was stolen, my wings denied. Seek the eye, the scale, the stone — return them, and I shall soar again.'";
	else:
		say "There’s nothing to recall yet... perhaps you need to explore further.";

Chapter 2 - The Sky Cracks

Crossroads is a room. "You stand at a lonely, windswept crossroads where paths diverge into the mists. To the west lies the troubled village of Brelmere, its chimneys barely visible. The path eastward plunges into the ominous silence of the Birchwood, while another track leads south towards the Whispering Marsh. The air is heavy with an unspoken disquiet, and the sky above is a canvas of bruised clouds."

Village Center is west of the Crossroads.

Chapter 3 - The Eye of the Dragon

[Rooms]
Birchwood Path is a room.  "A strange fog envelops everything, you can barely see your feet when you look down."
Cave Entrance is a room. "You encroach on a strange terrain formation with stones that seem to heavy to move on your own."


Crystal Caverns is a room. "The air within the Crystal Caverns hums with a palpable, raw energy. Countless multifaceted crystals jut from the walls, ceiling, and floor, their myriad facets catching and refracting any stray light into a mesmerizing, silent dance of prismatic colours. Ethereal, illusory images of a great, winged dragon seem to flicker and glide at the very edges of your vision, always just out of clear sight. A winding path of crushed crystal crunches softly underfoot, leading deeper into the glittering heart of the cavern where [if the Dragon Eye is on the Crystal Pedestal]a natural stone pedestal rises expectantly[otherwise if the Dragon Eye is nowhere and the player is not carrying the Dragon Eye]a now-empty stone pedestal stands, still radiating a faint warmth[else]a natural stone pedestal stands, its purpose already fulfilled[end if]."

The Crystal Pedestal is a supporter in Crystal Caverns. 
The description of the Crystal Pedestal is "A natural rock formation, smoothed by time or perhaps ancient magic, rises from the cavern floor. It seems to be a focal point of the cave's potent energy."
The Dragon Eye is on the Crystal Pedestal. [This changes its initial location from 'in Crystal Caverns']

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
The description of the Dragon Eye is "A magnificent gem, roughly the size of your fist. It pulses with an inner light, warm and vibrant, resembling a dragon's knowing eye."

When play begins:
	now the av_mushrooms is {Glowing Mushroom, Tree Mushroom, Covered Mushroom}.

[Mushroom Spawn Logic]	
Before going to Birchwood Path:
	repeat with item running through mushrooms in the location: [This refers to mushrooms in Birchwood Path]
		if the item is in Birchwood Path: [Ensure we only remove mushrooms actually in this room]
			now the item is nowhere; [Remove old mushrooms from this specific room]
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
			now MSpawnBonus is 0;
		else:
			say "The fog seems particularly uneventful this time."; [Message if no mushrooms are left to spawn]
			increment MSpawnBonus;
	else:
		say "The path is shrouded in mist, revealing nothing out of the ordinary."; [Message if the chance fails]
		increment MSpawnBonus;
	
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

The Whispering Marsh is a room. "The thick fog covers the swamp like a veil. The vegetation whispers in the wind, and ahead, the entrance to a forgotten village can be glimpsed."

Whispering Marsh is south of Crossroads.
The Burnt Village Grounds is a room. "This was once the heart of Ashen Hollow, but now it's a haunting testament to ruin and sorrow. A thick, choking carpet of grey ash blankets everything, muffling all sound, and the silence is as profound and cold as a forgotten tombstone. The acrid smell of old fires and despair hangs heavy in the still air.
The skeletal remains of burnt-out buildings stand like blackened, broken teeth against a perpetually sorrowful sky:
To the northeast, what might have been the [Burnt Seer's House] leans precariously, its empty window sockets like vacant eyes staring into nothingness.
Eastward, the collapsed roof and charred timbers of the [Burnt Shepherd's House] paint a grim picture of its former life.
The path heading southeast disappears into the [Burnt Farmland], now utterly desolate and barren.
Directly south, the forge of the [Burnt Blacksmith] stands as a dark, gaping maw, still radiating a faint, ghostly warmth.
To the southwest, the [Burnt Tavern] is a chaotic jumble of scorched beams and overturned, broken furniture.
And to the west, the [Burnt Storage House] is little more than a heap of smoldering, unstable debris.
The only discernible way out of this place of ashes and memories seems to be north, back towards the eerie embrace of the [Whispering Marsh]."

The Burnt Village Grounds is south of the Whispering Marsh.

The Burnt Seer's House is a room. "The seer's former dwelling. Fragments of colored glass still glint in the broken windows, as if awaiting new visions."

The Burnt Seer's House is northeast of the Burnt Village Grounds.

The Burnt Shepherd's House is a room. "A small stone house, once modest but cozy. Ashes cover the threshold, like a shroud from the past."

The Burnt Shepherd's House is east of the Burnt Village Grounds.

The Burnt Farmland is a room. "The once fertile fields lie burnt and abandoned. Only the smell of scorched earth remains as a memory of what was."

The Burnt Farmland is southeast of the Burnt Village Grounds.

The Burnt Blacksmith is a room. "Twisted tools and molten metals are scattered across the floor. The ancient heat still seems to emanate from the blackened walls."

The Burnt Blacksmith is south of the Burnt Village Grounds.

The Burnt Tavern is a room. "Broken tables, overturned benches, and charred barrels tell tales of lost nights. A sweet smell of smoke still hangs in the air."

The Burnt Tavern is southwest of the Burnt Village Grounds.

The Burnt Storage House is a room. "Charred boxes and destroyed shelves fill the space. The air is dense, as if the ash never left the place."

The Burnt Storage House is west of the Burnt Village Grounds.

The Dragon Scale is a thing. The Dragon Scale is portable.

Understand "scale" or "dragon scale" as the Dragon Scale. [Translated "escama" and "escama de dragao"]

A dragon-note is a kind of thing. Understand "note", "ticket", "message", or "clue" as a dragon-note. [Translated "nota", "bilhete", "mensagem", "pista"]

The Seer's Note is a dragon-note. The description is "An old note: 'Even in pain, fire preserves what is essential.'"

The Seer's Note is in the Burnt Seer's House.

The Blacksmith's Note is a dragon-note. The description is "A scorched piece of parchment: 'Ashes hide truths that withstand time.'"

The Blacksmith's Note is in the Burnt Blacksmith.

The Tavern Note is a dragon-note. The description is "A burnt napkin with scratched words: 'In the hearth of sorrow, scales endure.'"

The Tavern Note is in the Burnt Tavern.

To decide whether the player has all dragon-notes:
	if the player carries the Seer's Note and the player carries the Blacksmith's Note and the player carries the Tavern Note, decide yes;
	decide no.

The notes-message-shown is a truth state that varies. The notes-message-shown is false.

To try-check-notes:
	if the player has all dragon-notes and notes-message-shown is false:
		say "[line break]The three notes form a clear message. Something awaits you in the central hearth of the village...";
		now The Dragon Scale is in the Burnt Village Grounds;
		now notes-message-shown is true;

After taking the Seer's Note for the first time:
	say "As you read the note, you feel a shiver. It's as if something ancient is trying to remember…";
	try-check-notes.

After taking the Blacksmith's Note for the first time:
	say "The words echo in your mind, like fragments of a forgotten prophecy.";
	try-check-notes.

After taking the Tavern Note for the first time:
	say "The words 'In the hearth of sorrow, scales endure' shine for a brief moment. It seems to be the key to something.";
	try-check-notes.

Every turn:
	if the player has all dragon-notes and notes-message-shown is false:
		say "[line break]The three notes form a clear message. Something awaits you in the central hearth of the village...";
		now The Dragon Scale is in the Burnt Village Grounds;
		now notes-message-shown is true.

After taking The Dragon Scale for the first time:
	say "As soon as you touch the scale, you hear a distant whisper: 'I remember you...'.";

Chapter 5 - The Stone of Storms

Skyreach Monastery Exterior is a room. "You've reached the monastery atop the sheer cliffs of Skyreach. It is eerily silent and clearly abandoned. Ancient scrolls, tattered by wind and time, lay scattered across a weathered courtyard. The monastery's great bell has toppled from its tower, half-buried and cracked."
Skyreach Interior Hall is a room. "This vast, circular hall must have been the heart of the Skyreach Monastery. Dust motes dance in the few rays of light that pierce the gloom from high, narrow windows. The air is still and heavy with forgotten prayers. In the very center of the stone floor, a large, intricate circular pattern is deeply carved."
Valley is a room. "A narrow, wind-scoured valley carves its arduous way through the lower shoulders of the mountains. The path is rough and uneven, littered with fallen scree from the towering rock walls that flank you. The constant, mournful moan of the wind echoes between these stony sentinels, carrying with it the chill of higher altitudes."

Cliff is a room. "The path has transformed into a treacherous, narrow ledge clinging to a sheer cliff face. Far below, the valley floor is a distant, rugged ribbon. Ahead, a series of ancient, rickety-looking rope bridges span a terrifyingly deep chasm, swaying gently in the relentless wind. They appear to be the only way further west towards the high peaks where Skyreach Monastery is said to lie."

The Valley is west of Glen.
The Cliff is west of Valley.
The Skyreach Monastery Exterior is west of Cliff.
The Skyreach Interior Hall is north of Skyreach Monastery Exterior.
PHasStone is a truth state that varies. PHasStone  is false.
The Stone Of Storms is a thing. The description is "A shard of obsidian, cool to the touch yet humming with a barely contained energy. It seems to reflect a clear sky within its polished depths."
The Stone Of Storms is nowhere. [It will appear when the puzzle is solved]
Understand "stone" or "stone of storms" or "obsidian shard" or "shard" or "orb" as Stone Of Storms.

The FloorSockets are a device in Skyreach Interior Hall. The FloorSockets are fixed in place.
The description of the FloorSockets is "The intricate pattern on the floor culminates in this central section. Two distinct sockets are set into the stone: one is perfectly round and deep, shaped to hold an orb, while the other is a shallower, teardrop-shaped depression. Around them, an inscription is carved into the stone. It reads: 'When flame meets eye, and scale bears weight, the storm shall part the sky’s own gate.'"
Understand "sockets" or "socket" or "floor sockets" or "carved pattern" or "pattern" or "inscription" as FloorSockets.

[ --- Section: Puzzle State Variables --- ]

eye_is_in_socket is a truth state that varies. eye_is_in_socket is false.
scale_is_in_socket is a truth state that varies. scale_is_in_socket is false.
skyreach_puzzle_is_solved is a truth state that varies. skyreach_puzzle_is_solved is false.
SkyEpilogue is a truth state that varies. SkyEpilogue is false.
[ --- Section: Puzzle Interaction Logic --- ]


Instead of inserting something into the FloorSockets when skyreach_puzzle_is_solved is true:
	say "The sockets have already served their purpose; the Stone of Storms has been revealed, and the floor pattern is now quiescent."

Instead of inserting the Dragon Eye into the FloorSockets:
	if the player does not carry the Dragon Eye:
		say "(first taking the Dragon Eye)[command clarification break]You don't have the Dragon Eye to place." instead;
	if eye_is_in_socket is true:
		say "The Dragon Eye is already securely nestled in its socket." instead;
	now eye_is_in_socket is true;
	remove the Dragon Eye from play; [The Eye is consumed by the puzzle]
	say "You carefully place the Dragon Eye into the round, orb-shaped socket. It fits perfectly, and for a moment, the flame within the Eye seems to flare, casting dancing shadows.";
	try_skyreach_puzzle_completion.

Instead of inserting the Dragon Scale into the FloorSockets:
	if the player does not carry the Dragon Scale:
		say "(first taking the Dragon Scale)[command clarification break]You don't have the Dragon Scale to place." instead;
	if scale_is_in_socket is true:
		say "The Dragon Scale is already resting in its designated spot.";
	now scale_is_in_socket is true;
	remove the Dragon Scale from play; [The Scale is consumed by the puzzle]
	say "You lay the Dragon Scale into the teardrop-shaped depression. It settles with a soft click, its weight seeming to press down on a hidden mechanism.";
	try_skyreach_puzzle_completion.

Instead of inserting something (called the wrong_item) into the FloorSockets:
	say "[The wrong_item] doesn't seem to fit either of the sockets, nor does it feel right for this ancient mechanism."


[ --- Section: Puzzle Completion Phrase --- ]

To try_skyreach_puzzle_completion:
	if eye_is_in_socket is true and scale_is_in_socket is true and skyreach_puzzle_is_solved is false:
		now skyreach_puzzle_is_solved is true;
		say "[line break]As both the Eye and Scale settle into their respective sockets, the carved lines of the floor pattern begin to glow with an intense, ethereal light! The air crackles with energy. Suddenly, a deafening CRACK shatters the silence as a brilliant bolt of pure lightning descends from the shadowy ceiling above, striking the very center of the pattern with pinpoint accuracy!";
		now the Stone Of Storms is in Skyreach Interior Hall; [The Stone appears]
		say "Where the lightning struck, the stone floor has been blasted open, or perhaps magically parted. Amidst smoking edges, the Stone of Storms now lies revealed. It is a shard of obsidian, humming with a potent, contained energy and reflecting an unseen light within its polished facets.";
		say "You glance upwards. Through a newly formed, jagged hole in the monastery's ancient roof, the previously tumultuous storm clouds are rapidly parting, revealing a serene, starlit sky. The howling wind that buffeted the monastery dies down to a gentle, almost reverent breeze.";
		say "In the newfound stillness, a mighty, triumphant roar echoes from some far-distant mountain peak, carried on the clear night air.";
	else if eye_is_in_socket is true and scale_is_in_socket is false:
		say "The Eye rests in its socket, pulsing faintly. The other socket remains empty.";
	else if scale_is_in_socket is true and eye_is_in_socket is false:
		say "The Scale sits firmly in its place. The eye-shaped socket is still unfilled.";

After taking the Stone Of Storms for the first time:
	now PHasStone is true;
	say "As you take the Stone Of Storms, you feel tremors as if the very winds and earth try to shake the very foundation of the monastery.";
		
After going South from the Skyreach Interior Hall:
	if PHasStone is true:
		if the player is in Skyreach Monastery Exterior:
			now SkyEpilogue is true; [Set the flag immediately]
			[--- The Dragon Appears & Epilogue Begins ---]
			say "[line break][bold type]As you take your first steps away from the monastery, the Stone of Storms pulsing faintly in your grasp, the very air around you grows inexplicably cold. A vast, winged shadow sweeps over the desolate passes, plunging you into sudden twilight. The faint scent of ozone and something impossibly ancient fills your senses.";
			say "With a sound like a mountainside shearing in two, a colossal form lands directly before you, its impact shaking the precarious path. It's Emberwing, scales deep with scars, iridescent gold of the brighest day, its eyes like molten gold, burning with an intelligent, ancient light. The air around it crackles visibly with contained power. It fixes its gaze upon the Stone of Storms, then slowly, deliberately, upon you.";
			say "The dragon lowers its massive, horned head, close enough now that you can feel the warmth radiating from its nostrils. A voice, deep and resonant as rolling thunder, echoes not in your ears, but directly within the confines of your mind";
			say "'I was deceived,' the dragon mumbles, a hint of something unreadable in its tone – sadness? Or perhaps ancient sorrow. 'A hunter stole my essence, scattered it. You brought me back.'";
			say "You feel that the orb that you took is starting to dissintagrate. The dragon speaks again - 'Thanks to you, I'm able to regain my power, and bring prosperity and peace to nature. As a show of gratitude, I would see you home, mortal...? - The dragon waits patiently for your name'"; [Using [K] for paragraph break as an alternative if [paragraph break] gives issues, or just use multiple say "" for new paragraphs]
			say "'Tarin, my name's Tarin.' You blurt out. 'Ah what a fine name. Then let's not take much longer, I'm sure your peers and family are waiting for you and your newfound counts of adventure.";
			say "You hop on to Emberwings back, and after a few seconds you are only able to see clouds beneath you, Emberwing's magicks helping you balance on it's back. Landing just outside the village, the commotion has drawn a crowd, and you can see your fellow villagers, including your mother.";
			say "But just as you are about to part ways, you hear the Dragon's voice inside your head again: 'Your stories are more important than you think. As the great cycles turn, their wisdom will be sought anew. Hold onto their truth, Tarin, for the storms may gather again.'";
			say "You are home. The adventure with the Stone of Storms is over, but the dragon's words linger, a promise and a warning entwined.[paragraph break]";
			say "[bold type]THE END... ?";
			end the story finally;
		
