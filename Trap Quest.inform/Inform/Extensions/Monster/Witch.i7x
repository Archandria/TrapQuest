Witch by Monster begins here.

witch is a monster. witch is intelligent. witch has a number called altar-uses. The altar-uses of a witch is 2. witch is captive. witch has a number called curse-quest.

witch is in Woods20.  Understand "sneering" as witch. The text-shortcut of witch is "wi". A witch has a number called altar-questioned. A witch has a number called doom-warned. The doom-warned of a witch is usually 0.

To say ShortDesc of (M - witch):
	say "witch".

To say MediumDesc of (M - witch):
	say "sneering witch".
	
To decide which figure-name is the monster-image of (M - witch):
	decide on the figure of witch.

To say MonsterDesc of (M - witch):
	say "A tall brunette woman dressed in a black latex skirt with purple frills underneath, black latex gloves, a black belt with a star for a buckle, and a black blouse that has been left open so that her proud [if diaper quest is 1]presumably milk filled[otherwise]F cup[end if] breasts are on full display. [if there is a diaper retained by M]She is wearing your [ShortDesc of random diaper retained by M] proudly and visibly. [end if]";
	say "[if the bimbo of the player <= 7 and the player is female][line break][first custom style][one of]How typical for this game...[or]Seriously?[purely at random][otherwise if the bimbo of the player <= 7][one of]I bet she loves motor-boating![or]Nice![at random][otherwise if the bimbo of the player <= 12][line break][variable custom style][one of]She looks good in that outfit.[or]What a naughty look![purely at random][otherwise][line break][second custom style][one of]Wow! She's probably like, magic and stuff![or]I know her boobs are casting a spell on me! Teehee![purely at random][end if][roman type][line break]".

To set up (M - witch):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 9;
	[now the sex-length of M is 2;]
	now M is captive;
	now the health of M is the maxhealth of M.

This is the spawn initial witch rule:
	if witch is alive, now witch is in Woods20.
The spawn initial witch rule is listed in the setting up woods monsters rules.

Definition: witch (called M) is human:
	decide yes.

Definition: witch (called M) is wenchy:
	decide yes.

Part 1 - Misc Flavour

To say GroundPeeReaction of (M - witch):
	say "[BigNameDesc of M] looks disappointed. [line break][speech style of M]'What a waste. Next time pee in a [if diaper quest is 1]diaper[otherwise]cup[end if] for me, and I'll let you use my altar in exchange.'[roman type][line break]".

To say GroundPeeSexReaction of (M - witch):
	say "[BigNameDesc of M] laughs loudly. [line break][speech style of M]'Okay now THAT is hilarious.'[roman type][line break]".

To say DiaperReaction of (M - witch):
	say "[BigNameDesc of M] smirks and looks directly at your dampening crotch. [line break][speech style of M]'[one of]Ooh, I hope that you're going to give that to me later.'[or]You're such an exhibitionist! You love doing this in front of me, don't you?'[stopping][roman type][line break]";
	if the humiliation of the player < 15000, say "[one of]You are so ashamed you wish the ground would just open up and swallow you. [or][stopping]You turn bright red and refuse to look at [NameDesc of M] in the eye.".


Part 2 - Perception


[
Latex Transformation Helping Witch:
curse-quest Meanings:
0: Not yet seen that you are transforming.
1: Seen that you are transforming, asked for first item (fae mushroom).
2: received first item, asked for second item (recipe).
3: Saved you and now likes you.
]

Definition: witch (called M) is normally guardian:
	decide no.

Definition: witch (called M) is normally ally:
	decide no.

Definition: witch (called M) is normally buddy:
	if the curse-quest of M >= 3, decide yes;
	decide no.

Definition: witch (called M) is normally acquaintance:
	if the curse-quest of M >= 1, decide yes;
	decide no.

Definition: witch (called M) is objectifying the player:
	decide no.

To compute perception of (M - witch):
	now M is interested;
	now the altar-questioned of M is 0;
	if M is released:
		say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'You again!  [if M is in Dungeon20]I can't believe you had the nerve to come back here!'[otherwise]Come here, you little slut!'[end if][roman type][line break]";
		anger M;
	otherwise if doom counter > 0 and the doom-warned of M is 0 and the player-class is not cultist:
		say "[BigNameDesc of M] notices you and seems actually concerned for once. [line break][speech style of M]'I can't believe I'm saying this but thank Goddess you're here, something terrible is happening in that old mansion nearby! The cult there is trying to summon one of their dread gods. I know how to stop them, but I'm not allowed to leave this altar so it's going to have to fall to you. Now, what you'll need is very simple. You need to get together a bell, book, and candle, and then say a simple incantation. I'll teach you... scratch that, I've no confidence in your ability to remember this. Take these notes. They might help with the other items as well.'[roman type][line break]";
		now the doom-warned of M is 1;
		let N be a random doom notes;
		now N is in Woods20;
		let C be a random black candle;
		now C is in Dungeon33;
		let B be a random reception bell;
		now B is in Hotel01;
	otherwise if the latex-transformation of the player > 0:
		if the curse-quest of M is 0 or the curse-quest of M >= 3:
			say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of][if the latex-transformation of the player < 7]Merlin's Cock, I can feel that magic from a mile away. You've been cursed with a powerful latex transformation spell, and it won't be long before you're an almost mindless sex doll!  Look, I can[otherwise]Oh my, you've been turned into a sex doll haven't you?  Can you still hear me in there?  If you can understand me, I can still[end if] cure this for you[or]Merlin's Cock, have you been affected by the rare latex curse again?  Of course I can help you again sweetie[stopping], but first I need you to bring me a fae mushroom....'[roman type][line break]";
			now the curse-quest of M is 1;
			calm M;
		otherwise if the curse-quest of M is 1:
			say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'So, did you get that fae mushroom I need?'[roman type][line break]";
			calm M;
		otherwise if the curse-quest of M is 2:
			say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'So, did you get that recipe I need?'[roman type][line break]";
			calm M;
	otherwise if the curse-quest of M >= 3:
		say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'Hey, you!  Good to see you again. I hope you're having a fun adventure!'[roman type][line break]";
		calm M;
	otherwise if the class of the player is vixen:
		say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if][line break][speech style of M]'[one of]Don[']t think I can[']t see through that ridiculous disguise you fucking bitch. You didn[']t pay me the last time you used my altar!'[or]There[']s no way I[']m letting you off the hook now, bitch!'[stopping][roman type][line break]";
		anger M;
	otherwise:
		say "[one of][WitchInitialGreeting of M][or][BigNameDesc of M] looks up[if the player is sluttily dressed]. [otherwise]!  [end if]She doesn't say anything but it looks like she's paying attention to you now.[stopping]".

To say WitchInitialGreeting of (M - witch):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if newbie tips is 1:
		say "[speech style of M]'Hi bitch. Putting jewellery on this altar will bless some of your items, but you have to pay me for the privilege. ";
		if diaper quest is 0, say "I accept cups of semen [if watersports fetish is 1]and urine [end if]as payment. They're, err, spell ingredients... or something. If you've got any in a drinking vessel, just [bold type]give[speech style of M] the vessel to me and I'll transfer the liquid into my container and then give you the vessel back. You can take my goblet if you need something to collect stuff in - but I wouldn't try drinking anything out of it if I were you, it's permanently cursed. [if diaper lover > 0]I also accept soggy diapers, but only if they're really nice and squelchy. [end if]";
		otherwise say "I accept soggy diapers as payment, but only when they're well used, all really nice and squelchy. They're, err, spell ingredients... or something. I'm definitely not some kind of weird diaper pervert. Anyway ";
		say "I'll let you use the altar for free two times, so you can see how awesome it is, but after that you'll have to pay me.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'You look like you know how this works. I'm the keeper of this altar. If you want to use it, pay me or fuck off.'[roman type][line break]".

To compute friendly boredom of (M - witch):
	if the player is not in the location of M, now M is uninterested.

altar-drops is a number that varies.

Report dropping in the presence of witch:
	increase altar-drops by 1;
	if altar-drops > 5 and the bimbo of the player < 10 and the class of the player is maid:
		say "Like a busy and industrious little maid, you neatly pile up your equipment, keeping one nervous eye on the nearby altar, hoping that nothing too nasty wanders up while you're stripping yourself down to the bare minimum. The witch seems to be watching you with a smirking expression, as if she knows what you're doing. But she says nothing. Somehow, that makes it even more humiliating.";
		humiliate 200;
		now altar-drops is -200.

Part 3 - Motion and Seeking

To compute (M - witch) seeking (D - a direction):
	if M is released, try M going D;
	compute motion reactions of M.
	
To compute motion of (M - witch):
	if the location of M is not Woods20:
		let L be the location of M;
		let D be the best route from L to Woods20;
		if a random number between 1 and 5 > 2 and D is N-viable:
			try M going D;
			compute motion reactions of M.

Part 4 - Combat

To say MovementBlock of (M - witch):
	say "[one of][BigNameDesc of M] clasps her hands together and raises them with a flourish, causing a thorny wall to burst out of the ground, blocking your path.[or][BigNameDesc of M] clasps her hands together, raising them above her head as a thorny wall bursts out of the ground, blocking your path.[or][BigNameDesc of M] raises her hands above her head and claps, causing a thorny wall to burst out of the ground, blocking your path.[or]A resounding clap rings through the [location of the player] as a thorny wall bursts from the ground, blocking your path. You look over your shoulder at [NameDesc of M], who is grinning smugly.[or]A resounding clap shakes the air around you, causing a thorny wall to burst out of the ground, blocking your path. You look over your shoulder at [NameDesc of M], who grins smugly.[or]A resounding clap shakes the ground, causing a thorny wall to burst from it, blocking your path. You look over your shoulder at [NameDesc of M], who cackles derisively.[or]A thunderclap rings through the air as you try to escape, a thorny wall bursting from the ground, blocking your path. [BigNameDesc of M] cackles.[or]A thorny wall bursts from the ground, blocking your path. You look over at [NameDesc of M], who has her hands raised over her head.[or]A thorny wall bursts from the ground, blocking your path. [BigNameDesc of M] cackles derisively.[or]A thorny wall bursts from the ground, blocking your path. [BigNameDesc of M] laughs contemptuously.[in random order]".
	
To say StandingBlock of (M - witch):
	say "[one of][BigNameDesc of M] pulls down on one of her many brown curls. An invisible hand grabs you by your [ShortDesc of hair] and yanks you to the ground as soon as you try to stand up.[or][BigNameDesc of M] flicks a small leaf out of her hair. A tree branch strikes out at you as you try to stand up, hitting you square between the shoulders. She cackles as your knees hit the ground once more.[or][BigNameDesc of M] reaches up to squeeze one of her nipples, causing [milk] to stream onto the ground as you stand up. You accidentally slip in it and topple back onto your hands and knees.[or][BigNameDesc of M] pulls down on one of her many brown curls. An invisible force scrunches up your [ShortDesc of hair] and yanks you to the ground as soon as you try to stand up.[or][BigNameDesc of M] reaches up to squeeze one of her breasts, causing small droplets of [milk] to form at her nipples. Your [BreastDesc] burgeon with size, shrinking back to normal after your attempt to stand has failed.[or][BigNameDesc of M] pulls down on one of her many brown curls. You feel pain in your scalp as something takes hold of your [ShortDesc of hair] and yanks you to the ground as soon as you try to stand up.[in random order]".

Section 1 - Attack

The witch attack rules is a rulebook. The priority attack rules of witch is usually the witch attack rules.

This is the witch summons a random monster rule:
	repeat with M running through uninterested monsters in the Woods:
		unless (the boredom of M > 100 or the number of interested monsters in the Woods > 3):
			compute witchsummoning M;
			if M is interested:
				say "[one of]What has that done??  Her mischievous grin tells you that it can't be anything good.[or][stopping]";
				rule succeeds.
The witch summons a random monster rule is listed last in the witch attack rules.

To compute witchsummoning (M - a monster):
	do nothing.

To compute witchsummoning (M - a mannequin):
	say "[BigNameDesc of current-monster] puts her fingers in her mouth and whistles.";
	now M is interested;
	anger M.

To compute witchsummoning (M - a demoness):
	say "[BigNameDesc of current-monster] chants in an infernal language you don't understand.";
	now M is interested;
	anger M.

To compute witchsummoning (M - a fairy):
	unless the boredom of M > 0:
		say "[BigNameDesc of current-monster] raises her hands to her cup mouth and whispers softly into them.";
		now M is interested;
		anger M.

To compute witchsummoning (M - a giant wasp):
	say "[BigNameDesc of current-monster] whispers some arcane words[one of]. It almost sounds like she is hissing[or][stopping].";
	now M is interested;
	anger M.

The latex punishment rule of witch is usually the no latex punishment rule.

This is the witch is satisfied once the player is boned rule:
	if the player is monster fucked or the player is vine fucked:
		follow the witch monster fucked taunting rule;
		rule succeeds.
The witch is satisfied once the player is boned rule is listed last in the witch attack rules.

This is the witch monster fucked taunting rule:
	let M be current-monster;
	if the player is not vine-cursed:
		say "[BigNameDesc of M] places one hand on your forehead, chanting under her breath as she pours magical energy into your body. The vines around you freeze as her other hand slams into the ground, which rumbles ominously as the energy drains from your body and into the soil. For an instant, you can feel every vine in the forest, all extensions of a single being deep inside the earth, which you somehow know feels just as connected with you. [BigNameDesc of M] spits in your face. [line break][speech style of M]'Shouldn[']t have messed with me, bitch. He[']s never going to leave you alone now.'[roman type][line break]";
		now the player is vine-cursed;
	otherwise:
		say "[one of][BigNameDesc of M] smirks, leaning forward to spit on your face before turning away. Looks like she's finished with you.[or][BigNameDesc of M] leans forward, spitting in your face. [line break][speech style of M]'I'm finished with you.'[or][BigNameDesc of M] spits at your feet, transferring her interest to a nearby tree. Looks like she's finished with you.[or][BigNameDesc of M] seems happy, and begins adjusting her skirt. [line break][speech style of M]'I'm finished with you.'[or][BigNameDesc of M] smirks, turning her attention to a loose button on her shirt. Looks like she's finished with you.[or][BigNameDesc of M] spits in your face. [speech style of M]'I'm finished with you.'[or][BigNameDesc of M] smirks. [line break][speech style of M]'I'm done with you.'[or][BigNameDesc of M] adjusts her skirt, looking up briefly. [line break][speech style of M]'I[']m done with you.'[or][BigNameDesc of M] kicks a clod of dirt into your face. [line break][speech style of M]'I'm done with you.'[or][BigNameDesc of M] adjusts her belt, looking up briefly. [line break][speech style of M]'I'm done with you.'[or][BigNameDesc of M] wipes a bit of dirt off her exposed breasts. Looks like she's finished with you.[or][BigNameDesc of M] cackles triumphantly, kicking a clod of dirt in your face. [line break][speech style of M]'Enjoy yourself, Bitch! I'm done with you.'[or][BigNameDesc of M] looks down at you scornfully, throwing back her head as she emits a bone-chilling laugh. [line break][speech style of M]'Enjoy yourself, Bitch! I'm done with you.'[or][BigNameDesc of M] launches a wad of hot spit into your face. She laughs triumphantly at the audible splat. [line break][speech style of M]'Enjoy yourself, Bitch! I'm done with you.'[or][BigNameDesc of M] leans forward, obnoxiously laughing in your face. [line break][speech style of M]'Enjoy yourself, Bitch! I'm done with you.'[in random order][roman type][line break]";
	bore M;
	rule succeeds.
The monster fucked taunting rule of witch is usually the witch monster fucked taunting rule.

This is the witch summons cursed clothing rule:
	if the player is upright and a random number between 1 and 2 is 1:
		let M be current-monster;
		let H be a random off-stage basic loot heels;
		let C be a random off-stage corset;
		let G be a random off-stage fetish appropriate gag;
		let D be a random eligible diaper;
		let A be a random off-stage pair of anklecuffs;
		if H is actually summonable:
			say "[one of][BigNameDesc of M] points at your feet and flicks her finger upward. You are forced onto your tiptoes as high heels appear on your feet![or][BigNameDesc of M] points at your feet and waves her hand upward. You are forced forward onto your toes as high heels appear on your feet![or][BigNameDesc of M] points at your feet and waves her hand upward. You very nearly lose your balance as you as high heels appear on your feet![or][BigNameDesc of M] points at your feet and flicks her finger upward. High heels appear on your feet, forcing you onto your tiptoes.[or][BigNameDesc of M] points at your feet and waves her hand upward. High heels appear on your feet, forcing you onto your tiptoes.[in random order]";
			summon H cursed;
			now the heel-height of H is 3;
			now H is posture training;
			now the raw-magic-modifier of H is -1;
			compute summoned quest of H;
		otherwise if C is actually summonable:
			say "[one of][BigNameDesc of M] points at your [BellyDesc], balling up her hands and dropping them to her sides. You feel the air forced out of your lungs as a tight corset materialises around your waist.[or][BigNameDesc of M] points at your [BellyDesc], balling up her hands and dropping them to her sides. You gasp as air is forced out of your lungs by the tight corset that appears around your waist.[or][BigNameDesc of M] points at your [BellyDesc], balling up her hands and dropping them to her sides. Air is forced out of your lungs as a tight corset materialises around your waist.[or][BigNameDesc of M] points at your [BellyDesc], balling up her hands and dropping them to her sides. Air is forcefully ejected from your lungs as a tight corset materialises around your waist.[in random order]";
			summon C cursed;
			now C is posture training;
			now the raw-magic-modifier of C is -1;
			compute summoned quest of C;
		otherwise if G is actually summonable:[TODO: update for opengags]
			if G is opengag:
				say "[one of][BigNameDesc of M] holds up a fist, your mouth opening against your will as she uncurls her fingers. [big he of M] smirks as a [printed name of G] materializes in your mouth.[or][BigNameDesc of M] holds up a fist, magically forcing your jaws apart as she uncurls her fingers. A rigid [printed name of G] attaches itself to your face as [he of M] finishes her spell.[at random][line break][variable custom style]'UUOAAH!?!'[roman type][line break]";
			otherwise:
				say "[one of][BigNameDesc of M] holds up a fist, your mouth opening against your will as she uncurls her fingers. Clasping her hands together, she attaches a [printed name of G] to your face.[or][BigNameDesc of M] holds up a fist, magically forcing your jaws apart as she uncurls her fingers. [big he of M] clasps her hands together, your teeth suddenly digging into hard plastic. A [printed name of G] has been attached to your face![or][BigNameDesc of M] holds up a fist, she slowly uncurls her fingers, forcing your jaws apart. She instantly clasps her hands together. Your tongue is forced to the bottom of your mouth as a [printed name of G] attaches itself to your face.[or][BigNameDesc of M] holds up a fist, she slowly uncurls her fingers, forcing your jaws apart. She  instantly clasps her hands together. Your teeth dig into hard plastic as a [printed name of G] attaches itself to your face.[or][BigNameDesc of M] holds up a fist, she slowly uncurls her fingers, forcing your jaws apart. She  instantly clasps her hands together. Your mouth stays open as a [printed name of G] attaches itself to your face.[or][BigNameDesc of M] holds up a fist, she pops it open, forcing your jaws apart. She instantly clasps her hands together. You claw at your mouth in vain as a [printed name of G] attaches itself to your face.[or][BigNameDesc of M] holds up a fist, she pops it open, forcing your jaws apart. She instantly clasps her hands together. Your eyes widen in shock as a [printed name of G] attaches itself to your face.[or][BigNameDesc of M] holds up a fist, she pops it open, forcing your jaws apart. She instantly clasps her hands together as a [printed name of G] attaches itself to your face. [line break][variable custom style]'MMMMPH!'[roman type][in random order]";
			summon G cursed;	
		otherwise if D is actually summonable:
			say "[BigNameDesc of M] makes a ball with her hands whilst pointing them in your direction. A large diaper materialises around your loins!";
			summon D cursed;
		otherwise if A is actually summonable:
			say "[one of][BigNameDesc of M] points one hand at either of your feet and swipes them inward. Your legs snap together as metal cuffs appear around your ankles![or][BigNameDesc of M] points one hand at either of your feet and swipes them in opposite directions. Metal cuffs appear around your ankles, forcing them together![or][BigNameDesc of M] points at either of your feet and swipes her hands them in opposite directions. Your legs snap together as metal cuffs appear around your ankles![or][BigNameDesc of M] points at either of your feet and swipes her hands toward each other. Metal cuffs appear around your ankles, forcing them together![in random order]";
			summon A locked;
		otherwise if the player is not immobile and a random number between 1 and 5 > 2:
			say "Using some kind of magical force, [NameDesc of M] grabs hold of your feet and tries to pull them off the ground!";
			let B be the largeness of breasts + (the largeness of belly * 2) + the thickness of hips;
			let R be a random number from 6 to B;
			if R > B / 2:
				say "You lose your balance and go flying, landing on your hands and knees!";
				try kneeling;
			otherwise:
				say "She doesn't manage to lift you off the ground this time.";
		otherwise:
			say SelectionFrustrated of M;
		rule succeeds.
The witch summons cursed clothing rule is listed last in the witch attack rules.

This is the witch tries to trip the player rule:
	if the player is upright and the player is not immobile:
		compute tripping attack of current-monster;
		rule succeeds.
The witch tries to trip the player rule is listed last in the witch attack rules.

To say MonsterTripAnnounceFlav of (M - witch):
	say "[one of]The witch holds her hand in the air, causing a giant clay hand to grow out of the ground.[or]The witch raises her hand, causing a giant clay hand to grow out of the ground.[purely at random]".

To say MonsterTrippedFlav of (M - witch):  [We say "it", not "she" here because the player is actually being tripped by a giant clay hand.]
	say "[if there is a worn nipple chain]It hooks a finger around your nipple chain, yanking you to the ground.[otherwise if there is a worn nipple piercing]It nimbly snatches the ring in one nipple and tugs down, the pain making you squeal and toppling you onto all fours on the ground[otherwise][one of]It chops your ankle out from under you, causing you to topple over onto your hands and knees.[or]It grabs your ankle, yanking it out from under you. You topple onto your hands and knees.[or]It grabs you by your ankles, tossing you off the ground. You yelp as you fly through the air and land on your hands and knees.[or]It grabs you by the wrist and yanks you onto your hands and knees.[or]It picks you up by your waist and roughly tosses you onto your hands and knees.[or]It grabs you at the knees and roughly yanks them out from under you. You fall to the ground![in random order][end if]".

To say MonsterFailedTripFlav of (M - witch):
	say "[one of]It swings over to chop your legs out from under you, but you jump on top of it instead, causing it to disintegrate.[or]It tries to grab your ankles, but you kick it away, destroying it instantly.[or]It grabs you by the ankle but you crush its fingers with your other foot.[or]It grabs your wrist, but you yank it clean off the ground, causing it to disintegrate.[or]It tries to grab your waist, but you dodge out of the way. It disintegrates.[or]It reaches up to grab your legs, but you kick it powerfully before it gets close, destroying it instantly.[in random order]".

To say SelectionFrustrated of (M - witch):
	say "[one of][BigNameDesc of M] crosses her arms, laughing proudly at her handiwork.[or][BigNameDesc of M] throws her head back and laughs derisively.[or][BigNameDesc of M]'s breasts jiggle as she throws her head back and cackles derisively.[or][if there is a worn pair of anklecuffs][BigNameDesc of M] points at your [random worn pair of anklecuffs], cackling madly.[otherwise][BigNameDesc of M] holds her middle finger in your direction, laughing scornfully.[end if][or][BigNameDesc of M] points at you with a grin, laughing scornfully.[or][BigNameDesc of M] cackles madly, seemingly pleased by your awkward situation.[or][BigNameDesc of M] cackles with glee, pleased by your awkward situation.[or][BigNameDesc of M] squats, holding her stomach and cackling madly. She's clearly pleased by your situation.[or][BigNameDesc of M] laughs derisively, holding her middle finger in your direction.[in random order]";[The witch is only bored once you're getting fucked.]

This is the witch summons vines rule:
	if the number of vines in the location of the player is 0 and vine boss is alive and the number of off-stage vines > 0:
		say "[BigNameDesc of current-monster] places her hands on the ground, and hums. Living vines sprout out of the ground!";
		let V be a random off-stage vines;
		now V is in the location of the player;
		now V is revealed;
		now the TrapNo of V is 0;
		rule succeeds;
	otherwise if the number of aggressive vines in the location of the player is 0 and vine boss is alive:
		say "[BigNameDesc of current-monster] places her hands on the ground, and hums. Living vines sprout out of the ground!";
		let V be a random vines in the location of the player;
		now V is revealed;
		now the TrapNo of V is 0;
		rule succeeds.
The witch summons vines rule is listed last in the witch attack rules.

This is the witch summons mannequins rule:
	if the number of mannequins in the Woods is 0:
		let N be a random off-stage mannequin;[the witch can summon ANY mannequin]
		summon N in the woods;
		now N is interested;
		anger N;
		rule succeeds.
The witch summons mannequins rule is listed last in the witch attack rules.

This is the witch has nothing left to do but wait rule:
	compute the default taunting of current-monster;
	rule succeeds.

To compute the default taunting of (M - witch):
	say "[BigNameDesc of M] stands and laughs at your awkward situation.".

To say PresentFriendlyRejectionFlav of (M - witch):
	say "[speech style of M]'[one of]I have better things to do than waste my time playing with whores. And FYI, I stand around doing nothing all day.'[or]I[']m bored, but I[']m not THAT bored. Wow.'[or]I should sic some vines on you for even asking me that. Holy shit, what a whore.'[at random][roman type][line break]";
	
	
Section 2 - Damage

To compute damage of (M - witch):
	if the health of M > 0:
		if M is captive:
			now M is released;
			anger M;
			now M is interested;
			say "The [noun] shrieks with rage, and turns aggressive!";
		otherwise:
			anger M;
			now M is interested;
			say DamageReaction (the health of M) of M;
	otherwise:
		if the health of M <= 0:
			compute death of M.

To say DamageReactHealthy of (M - witch):
	say "[one of]The [noun] screams with rage, taking the hit![or]The [noun] chants threateningly at the top of [his of M] lungs![stopping]".

To say DamageReactDamaged of (M - witch):
	say "The [noun] takes the hit, wincing as [he of M] [one of]chants[or]continues chanting[stopping] under her breath!".

To say DamageReactTired of (M - witch):
	say "The [noun] takes the hit, staggering as [he of M] repeats a slurred chant between breaths.".

To say DamageReactWeak of (M - witch):
	say "The [noun] takes the hit, screaming in pain!".

To say DamageReactSubmissive of (M - witch):
	say "The [noun] staggers as [he of M] takes the hit, seeming to take extra care not to turn [his of M] back towards you.".

To compute unique death of (M - witch):
	say "[BigNameDesc of M] disappears, leaving just a tattered robe and several gems. Shortly after, the robe vanishes.";
	if gladiatorcurse is 0, uncurse gladiators;
	loot M;
	loot M;
	loot M;
	let P be a random off-stage pure totem;
	if P is a thing:
		say "The defeated [M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of P]!";
		now P is in the location of the player;
		compute autotaking P;
	destroy M.

Part 5 - Dominant Sex

To say DominanceSuccess of (M - witch):
	now player-fucking is 1;
	increase the times-dominated of M by 1;
	let weiner-use be 0;
	if the size of penis > 1 and the number of cursed pussy covering clothing is 0, now weiner-use is 1;
	if weiner-use is 1:
		say "You force [NameDesc of M] onto [his of M] hands and knees and get behind [him of M]. [one of][if there is a worn tattoo]A red star tattooed around [his of M] [asshole] catches your eye, and you go straight for it[otherwise]Feeling particularly sadistic, you go straight for [his of M] [asshole][end if][or]Once again, you go straight for [his of M] [asshole][stopping], pushing [if the size of penis > 5]your entire length [end if]in with no lubrication. You enjoy the intense feelings around your [ShortDesc of penis] as [NameDesc of M] screams in despair. [if the size of penis < 6]Soon [he of M] is[otherwise]Immediately [he of M] starts[end if] pleading with you to stop.[line break][speech style of M]'Please, please, it's too much!  I'll do anything!  Here, I'll bless your items!'[roman type][line break]";
		orgasm;
	otherwise:
		say "You force [NameDesc of M] onto [his of M] hands and knees and get behind [him of M]. [if the player is male][big he of M] seems to expect you to fuck [him of M] in some way so screams with shock and pain when you [otherwise]When you are sure [he of M] isn't looking, you suddenly [end if]force your entire fist into [his of M] asshole. [BigNameDesc of M] immediately screams in shock and surprise. [big he of M] then starts pleading with you to stop.[line break][speech style of M]'Please, please, it's too much!  I'll do anything!  Here, I'll bless your items!'[roman type][line break]";[TODO: describe her tattoo]
	let bless-count be 0;
	repeat with X running through blessable things:
		increase bless-count by 1;
	if bless-count > 0:
		let R be a random number between 1 and bless-count;
		let bless-times be 1;
		if the size of penis > 4, increase bless-times by 1;
		if the size of penis > 7, increase bless-times by 1;
		while bless-times > 0:
			repeat with X running through blessable things:
				if R is 1:
					say "Your [printed name of X] shines brightly!";
					bless X;
				otherwise:
					decrease R by 1;
			decrease bless-times by 1;
	otherwise:
		say "[speech style of M]'Oh you have nothing to bless...'[roman type][line break]";
	if weiner-use is 1, say "Luckily for her, you are near finishing anyway, as the effects of this game have made you super sensitive and this witch's ass is TIGHT!  You release your [if the size of penis < 5]small[otherwise if the size of penis < 8]average[otherwise]huge[end if] load inside of [him of M], moaning with pleasure. [big he of M] seems grateful that you finished so quickly.[line break][speech style of M]'Thank you for being merciful. But if you ever come back here, I will crush you.'[roman type][line break]With that she stands up, makes a few intricate hand gestures, and vanishes.";	
	otherwise say "You give [him of M] one final fist pump, and then slowly remove your arm from [his of M] butt. [big he of M] seems grateful that you stopped torturing [him of M] so soon.[line break][speech style of M]'Thank you for finishing so quickly. But if you ever come back here, I will crush you.'[roman type][line break]With that [he of M] stands up, makes a few intricate hand gestures, and vanishes.";
	Dignify 50.

To say DominanceFailure of (M - witch):
	say "You lunge at [NameDesc of M] with your arms outstretched. [big he of M] sidesteps you easily, standing over you without a hint of mercy in [his of M] eyes.".

To compute failed dominance punishment of (M - witch):
	if the size of penis > min penis size:
		now the size of penis is min penis size;
		say "[speech style of M]Say goodbye, and good fucking riddance.[roman type][line break][BigNameDesc of M] removes a jar of pink powder from underneath [his of M] skirt and throws its contents over your crotch. You look down in horror as your penis shrivels into a [ShortDesc of penis]!";
		compute angry punishment of M;[if you're not naked she will punish you further.]
		say "[big he of M] appears to be satisfied with that and leaves you alone.";
	otherwise if vine boss is alive and the times-dominated of M > a random number between 1 and 0:[She warned you!]
		if the number of worn not sissifying tearable clothing > 0:
			compute angry punishment of M;
		otherwise if watersports fetish is 1:[We don't compute urination of M here because she's not finished with you yet, also we want her to stay mad.]
			say angry punishment insult of M;
			say "[UrinationFlav of M]";
			FacePiss from M;
		Drag to WoodsBoss01 by M;
		now M is in Woods16;
	otherwise:
		say "[speech style of M]Let's see if you fuck with me again after this![roman type][line break]";
		if weakness tattoo is not worn and there is a worn tattoo:
			say "[BigNameDesc of M] hits your ankle with a bolt of energy from [his of M] fingertip, growling an incantation under [his of M] breath. You feel strength drain from your body as a tiny black star appears on your skin. [big he of M] appears to be satisfied, and leaves you alone.";
			summon weakness tattoo;
		otherwise:
			say "[BigNameDesc of M] fires a bolt of energy into your chest, repeating a short chant as strength permanently leaves your body. [big he of M] appears to be satisfied with that and leaves you alone.";
			StrengthDown 5;
		compute sissification;
	Bore M.

To say angry punishment insult of (M - witch):
	say "[speech style of M]'You[']re gonna wish you never fucking crossed me.'[roman type][line break]";

To say angry punishment clothing destruction of (M - witch) on (C - a clothing):
	if M is intelligent, say "[first custom style]'[if C is nipple covering and the largeness of breasts > 3]You think I like walking around with my tits out?'[otherwise if C is ass covering]Like this is going to keep anyone from your [fuckholes].'[otherwise]As if you deserve clothes!'[end if][roman type][line break]".

To say angry punishment accessory confiscation of (M - witch):
	if M is intelligent, say "[first custom style]'I[']ll keep this.'[roman type][line break]".

To say DragFlav of (M - witch) to (R - a room):
	let D be Woods16;
	say "[BigNameDesc of M] drags you to the [D] and throws you over the edge. You land in the [R] with a thud!".

To uniquely destroy (M - witch):
	now the curse-quest of M is 0.

Part 6 - Conversation

Section 1 - Greeting

To say FirstResponse of (M - witch):
	if the curse-quest of M >= 3:
		say RepeatResponse of M;
	otherwise if the class of the player is priestess:
		say "[speech style of M]'[one of]Ha, so they finally got an altar bitch for the dungeon.'[or]So, the dungeon finally got a new altar bitch?'[or]Wow, another dungeon bitch? They're really going through you these days.'[or]Ha, so you're the new dungeon bitch? I've got to say, I don't envy you.'[at random][roman type][line break]";
	otherwise if the class of the player is fertility goddess:
		say "[speech style of M]'What do you want? I[']m not going to bless any condoms if that[']s what you[']re here for, you obviously wouldn't even use them.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Hi there, bitch. Give me some cum[if watersports fetish is 1] or piss[end if] to use my altar or piss off.'[or]Hi. The altar isn't free, so if you don't have any [semen][if watersports fetish is 1] or urine[end if], fuck off.'[at random][roman type][line break]".

To say RepeatResponse of (M - witch):
	if the curse-quest of M >= 3:
		say "[speech style of M]'[one of]Hey. You know, it's not an easy life being an altar witch...'[or]Hey, feel free to use my altar whenever you want.'[or]Hi there! Feel free to stay around and chat. Not like there's much else to do in this shit-hole.'[or]Hey, if you ever meet a washed up demon lord anywhere, don[']t believe a word he says about me.'[at random][roman type][line break]";
	otherwise if the class of the player is priestess:
		say "[speech style of M]'[one of]So, how's the altar life treating you?'[or][if the the analvirgin of the player is 0 and the player is male or the player is female and the virgin of the player is 0]Wow, I can actually smell the sex on you from here. You're a dungeon bitch, aren't you.'[otherwise]You know, most dungeon bitches don[']t keep their cherry for so long.'[end if][or]If not for all the arse fucking, I would sort of envy you dungeon bitches. It's fucking boring up here.'[at random][roman type][line break]";
	otherwise if the class of the player is cultist:
		say "[speech style of M]'[one of]You aren[']t going to convert me so you might as well piss off.'[or]Hey, can you see this? I[']m flipping you off.'[or]Keep your shitty scripture to yourself, bitch.'[or]That altar of yours is hiding for a reason, bitch.'[or]Whatever you want me to cure, you can piss off. It's what you get for worshipping false idols.'[at random][roman type][line break]";
	otherwise if the class of the player is fertility goddess:
		say "[speech style of M]'[one of]SHIT! Mistress, I wasn[']t slacking- Oh. It's you.'[or]Only thing worse than a whore is a whore that gets pregnant.'[or]Not everyone wants to breed with you. Piss off'[or]If you[']re here about an offering, I figure I should tell you that your vagina isn[']t an acceptable container.'[or]If you[']re dumb enough to get pregnant, you[']re probably dumb enough to piss me off. So piss off.'[at random][roman type][line break]";
	otherwise if the class of the player is succubus:
		say "[speech style of M]'[one of]So, he returned? I thought he got his ass kicked by some bitch in dress up.'[or]If you[']re here about his return, FYI I don[']t care.'[or]If you[']re here about him, tell him I just bought a new roll of condoms.'[at random]";
	otherwise:
		say "[speech style of M]'[one of]You heard me before. Pay up or piss off.'[or]You heard what I said before. If you can't pay, piss off.'[or]I'll say it again. If you want to use the altar, you better fucking pay me first.'[at random][roman type][line break]".

To say UnfriendlyResponse of (M - witch):
	say "[speech style of M]'[one of]You can forget about using my altar!'[or]I'm going to make you regret what you did!'[or]Never mess with witch!'[or]Don't mess with an altar witch!'[in random order][roman type][line break]".
	
To say SubmissiveResponse of (M - witch):
	if the player is feeling dominant:
		say "[speech style of M]'[one of]You really don[']t have any idea who you[']re messing with, do you?'[or]I'm going to enjoy torturing you.'[or][if M is captive]You have some nerve coming back here.'[otherwise]How nice of you to come find me.'[end if][at random][roman type][line break]";
	otherwise if the player is not feeling submissive:
		say "[speech style of M]'Fuck off. I want to watch you fucking suffer.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'Don't worry, I[']ll make sure someone gets on top of you, you fucking bitch.'[roman type][line break]".

To say midDominanceResponse of (M - witch):
	if the relevant sex addiction of M < 12:
		say "[speech style of M]'[one of]Most interesting thing I've seen all night.'[or]Why would I want to ruin the show?'[or]This is hilarious.'[or]Ha! Help yourself!'[at random][roman type][line break]";
	otherwise if the class of the player is priestess:
		say "[speech style of M]'[one of]And miss a chance to see a dungeon bitch in action?'[or]No way, it's been so long since I got to see a dungeon bitch in action.'[or]For a dungeon bitch? No way, I want to see the show!'[or]No way! I want to see [if the player is male]if you can out-whore the last dungeon bitch with only one hole![otherwise]if you whore it up better than the last dungeon bitch![end if]'[at random][roman type][line break]";
	otherwise if the class of the player is cultist:
		say "[speech style of M]'[one of]I would, but I don't want to catch anything.[or]And risk catching whatever disease *they* gave you?[or]No, I'll stay right here where it's clean, thanks.[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I'd rather watch.'[or]I'd rather sit back and enjoy the show.'[at random][roman type][line break]".

Section 2 - Questioning

To compute annoyance of (M - witch):
	if M is uninterested:
		say "[BigNameDesc of M] doesn't seem to realise you're talking to her.";
	otherwise if M is unfriendly:
		say "[BigNameDesc of M] seems to be purposefully ignoring you.";
	otherwise:
		say "[speech style of M]'It's boring enough standing around here without you badgering me all day.'[roman type][line break]".

To say WhoQuestion of (M - witch):
	say "[variable custom style]'[one of]How many altar uses do I have left?'[or]Can you remind me how many altar uses I have left?'[or]Hey, do I have any more uses of the altar?[or]Hey, can I still use the altar?'[at random][roman type][line break]".

To say WhoAnswer of (M - witch):
	say "[BigNameDesc of M] rolls her eyes. [line break][speech style of M]'You have [if the altar-uses of M > 1][altar-uses of M] uses left. Don[']t try to slip one by me, I[']ll know.'[otherwise if the altar-uses of M is 1]1 use left.[otherwise]None left. Give me something to drink first.'[end if][roman type][line break]".

To compute WhoAnswer of (M - witch):
	say "[speech style of M]'Nobody of consequence.'[roman type][line break]".

To compute WhereQuestion of (M - witch):
	say "[variable custom style]'Can you tell me anything about alchemy?'[roman type][line break]".

To compute WhereAnswer of (M - witch):
	if the curse-quest of M >= 3:
		say "[speech style of M]'[one of]Tinctures tend to have really nasty drawbacks. Timing is everything.'[or]Recipes seem to change depending on what you like.'[or]Salves won[']t stay on if you go for a swim. If you[']re wearing one, be prepared to stay dirty, or make sure you don[']t get that way.'[or][if pregnancy fetish is 1]It's not a coincidence that the recipe for the elixir of life includes a fae mushroom.'[otherwise]A potion of blessing is essentially sugar water anywhere other than the dungeon.'[end if][or]Powerful creatures tend to drop powerful reagents.'[or]Obviously, try not to mess up. There's a risk you don't end up with exactly what you wanted.'[at random][roman type][line break]";
	otherwise:
		say "[one of][BigNameDesc of M] snorts. [line break][speech style of M]'Ha. Like you[']d even know an eye of newt from a gargoyle[']s toenail.'[or][BigNameDesc of M] chuckles to herself. [speech style of M]'Wouldn[']t you like to know.'[at random][roman type][line break]".
		
To compute StoryAnswer of (M - witch):
	if the curse-quest of M >= 3:
		say "[speech style of M]'[one of]I found a rare class headgear that gave me a bunch of cool powers, but apparently it wasn[']t supposed to be obtainable in my play-through, so I'm stuck in here until the glitch gets patched out.'[or]I was trained to be an altar witch from birth. I've been here for as long as I can remember. FYI, it's pretty fucking boring.'[or]I was once an acolyte of the evil demon lord Xavier, but I quit when he lost all his power. He won[']t stop leaving me creepy voice-mails.'[sticky random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Don[']t you think that[']s a little forward?'[or]Fuck you.'[or]Fuck off.'[at random][roman type][line break]".

To compute EscapeQuestion of (M - witch):
	say "[variable custom style]'Is there anything special about this altar?'[roman type][line break]".

To compute EscapeAnswer of (M - witch):
	if the curse-quest of M >= 3:
		say "[speech style of M]'[one of]You[']ll get a better effect depending on your offering.'[or]The goddess that reigns over this altar doesn[']t care how often it[']s used, only what you put on it.'[at random] Feel free to use it!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Yeah. You have to pay me to use it.'[or]Only if you pay me first.'[or]Yeah, it can bless some of your items. If you pay me first.'[or]If you put an offering on it, you[']ll get something blessed depending on its value. But don[']t think I[']m letting you do that unless I get an offering too.'[at random][roman type][line break]".

[using the default advice question]
To compute AdviceAnswer of (M - witch):
	say "[speech style of M]'[if the pregnancy of the player > 0]Keep your legs closed, [one of]skank[or]whore[at random].[otherwise][one of]Fairies are fucking annoying, but tag is one of their favourite games. They're not bothered if you win.'[or]The demoness is a lot of things. Sadistic. Nosey. Arrogant. A bitch....But she's actually pretty limited as a guest in the mortal world. If she uses up a large chunk of her power, you can just run away.'[or]Personally, I think the vines liven up this place, but if you're tired of them, keep this in mind. They aren't connected to any aboveground plant.'[or]As an altar witch, I'm not allowed to wear underwear, but you are. A good pair of panties can help you out in more ways than one.'[at random][end if][roman type][line break]".


Section 3 - Drink Requesting

To compute friendly drink of (M - witch):
	if the curse-quest of M >= 3:
		say "[speech style of M]'Sorry, I don't have anything on me...'[roman type][line break]";
	otherwise:
		say "[speech style of M]'No.'[roman type][line break]".
	
To compute unfriendly drink of (M - witch):
	compute annoyance of M.


Part 7 - Trading

To decide which number is the bartering value of (T - a thing) for (M - witch):
	decide on 0.



Witch ends here.

