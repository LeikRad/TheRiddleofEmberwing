"The Riddle of Emberwing" by LeikRad

The Whispering Marsh is a room. "O nevoeiro espesso cobre o pântano como um véu. A vegetação sussurra ao vento, e à frente vislumbra-se a entrada de uma aldeia esquecida."

The Village Grounds is a room. "O coração de Ashen Hollow, agora em ruínas. O chão está coberto de cinzas, e o silêncio é pesado como pedra."
The Village Grounds is south of the Whispering Marsh.

The Seer's House is a room. "A antiga habitação da vidente. Fragmentos de vidro colorido ainda reluzem nas janelas partidas, como se aguardassem novas visões."
The Seer's House is northeast of the Village Grounds.

The Shepherd's House is a room. "Uma pequena casa de pedra, outrora modesta mas acolhedora. As cinzas cobrem o limiar, como um manto do passado."
The Shepherd's House is east of the Village Grounds.

The Farmland is a room. "Os campos outrora férteis jazem queimados e abandonados. Apenas o cheiro de terra queimada permanece como recordação do que foi."
The Farmland is southeast of the Village Grounds.

The Blacksmith is a room. "Ferramentas retorcidas e metais fundidos espalham-se pelo chão. O calor antigo ainda parece emanar das paredes negras."
The Blacksmith is south of the Village Grounds.

The Tavern is a room. "Mesas partidas, bancos tombados e barris chamuscados contam histórias de noites perdidas. Um cheiro adocicado a fumo ainda paira no ar."
The Tavern is southwest of the Village Grounds.

The Storage House is a room. "Caixas carbonizadas e prateleiras destruídas enchem o espaço. O ar está denso, como se a cinza nunca tivesse deixado o lugar."
The Storage House is west of the Village Grounds.

The dragon-scale is a thing. The dragon-scale is portable.
Understand "escama" or "escama de dragao" as the dragon-scale.

A dragon-note is a kind of thing. Understand "nota", "bilhete", "mensagem", or "pista" as a dragon-note.

The Seer's Note is a dragon-note. The description is "Um bilhete antigo: 'Mesmo na dor, o fogo preserva o que é essencial.'"
The Seer's Note is in the Seer's House.

The Blacksmith's Note is a dragon-note. The description is "Um pedaço de pergaminho chamuscado: 'As cinzas escondem verdades que resistem ao tempo.'"
The Blacksmith's Note is in the Blacksmith.

The Tavern Note is a dragon-note. The description is "Um guardanapo queimado com palavras riscadas: 'Na lareira do lamento, escamas perduram.'"
The Tavern Note is in the Tavern.

To decide whether the player has all dragon-notes:
	if the player carries the Seer's Note and the player carries the Blacksmith's Note and the player carries the Tavern Note, decide yes;
	decide no.

The notes-message-shown is a truth state that varies. The notes-message-shown is false.

To try-check-notes:
	if the player has all dragon-notes and notes-message-shown is false:
		say "[line break]As três notas formam uma mensagem clara. Algo espera por ti na lareira central da aldeia...";
		now The dragon-scale is in the Village Grounds;
		now notes-message-shown is true;

After taking the Seer's Note for the first time:
	say "Ao leres a nota, sentes um arrepio. É como se algo antigo estivesse a tentar lembrar-se…";
	try-check-notes.

After taking the Blacksmith's Note for the first time:
	say "As palavras ecoam-te na mente, como fragmentos de uma profecia esquecida.";
	try-check-notes.

After taking the Tavern Note for the first time:
	say "As palavras 'Na lareira do lamento, escamas perduram' brilham por breves instantes. Parece ser a chave para algo.";
	try-check-notes.
		
Every turn:
	if the player has all dragon-notes and notes-message-shown is false:
		say "[line break]As três notas formam uma mensagem clara. Algo espera por ti na lareira central da aldeia...";
		now The dragon-scale is in the Village Grounds;
		now notes-message-shown is true.

After taking The dragon-scale for the first time:
	say "Mal tocas a escama, ouves um sussurro ao longe: 'Eu lembro-me de ti...'.";
