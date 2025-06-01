"The Riddle of Emberwing - Prologue" by LeikRad

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
