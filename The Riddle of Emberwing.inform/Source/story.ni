"The Riddle of Emberwing" by LeikRad
Chapter 1 - The Whispering winds.
The Village of Brelmere is a room. "The air smells fresh." [TODO LATER]
The Guiding Stone is in the Village of Brelmere.

Chapter 2 - The Sky Cracks

West of the Village of Brelmere is the Forest.

Chapter 3 - The Eye of the Dragon


The CaveDirection is a direction variable. The CaveDirection is North.

[Mushroom trips, try not to OD]
The mushroom count is a number that varies.
A mushroom is a kind of thing.
The Glowing Mushroom is a mushroom. "You see a faint glowing near the ground in the fog."
The Glowing Mushroom is nowhere.
The Tree Mushroom is a mushroom. "You see light eminating from a hollow tree trunk."
The Tree Mushroom is nowhere.
The Covered Mushroom is a mushroom. "A deer picks at the ground. It looks like it's trying to eat something."
The Covered Mushroom is nowhere.

The available mushrooms is a list of mushrooms that varies.
When play begins:
	now the available mushrooms is {Glowing Mushroom, Tree Mushroom, Covered Mushroom}.

Before going to Birchwood Path:
	repeat with item running through mushrooms in the location:
		now the item is nowhere; [Remove old mushrooms]
	sort available mushrooms in random order;
	let the chosen be entry 1 of available mushrooms;
	now the chosen is in the Birchwood Path; [in to the room it goes] 

	
Crossroads is a room. "Blahblah."

Trail Entrance is a room. "You see a warning sign."

Birchwood Path is a room.  "A strange fog envelops everything, you can barely see your feet when you look down."

Cave Entrance is a room. "You encroach on a strange terrain formation with three slots near some stones that seem to heavy to move on your own."

Village of Brelmere is west of the Crossroads.

Trail Entrance is east of the Crossroads. 

Birchwood Path is east of Trail Entrance. 

[Maze Time YIPPEE]
East of Birchwood Path is Birchwood Path.
North of Birchwood Path is Birchwood Path.
West of Birchwood Path is Birchwood Path.
South of Birchwood Path is Birchwood Path.

The Guiding Stone is a thing.

Using is an action applying to one thing.
Understand "use [thing]" as using.

Carry out using the Guiding Stone:
	if the location is Birchwood Path:
		say "The Guiding Stone vibrates gently and pulls you toward safety...";
		move the player to Trail Entrance;
		say "The fresh air seems light compared to the dense fog, you feel relieved.";
	otherwise:
		say "Nothing happens."
	
Chapter 4 - The Scale of Ember

Chapter 5 - The Stone of Storms

Chapter 6 - Crossing Paths

Chapter 7 - The Return

Chapter 8 - The Consequence

Chapter 9 - Epilogue
