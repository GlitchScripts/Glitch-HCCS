// Glitch's HCCS scripting project
// ***************************
//          To Do            *
// ***************************

// Make this whole thing a pop-up message of some kind?
// Does mafia support pop-up messages with drop-down menues? Unlikely, but that would be cool.
// Need to go back and steal code ideas from Ezandora's Voting Booth script because I like the way it pops up.

// ***************************
//        Notes       	     *
// ***************************

// This script really just exists to help me reach my goal of getting 100% runs with all of the familiars that I own.
// Once I've finished 100% runs with all familiars, I'll shift to using optimized ones (camel, professor, lefty, etc.)
// Building my script to only use a single familiar is also nice in that it removes a LOT of extra route planning...


void main()
{
	use_familiar($familiar[Peppermint Rhino]);
#25	use_familiar($familiar[Flaming Face]);
#24	use_familiar($familiar[Mini-Skulldozer]);
#19	use_familiar($familiar[Warbear Drone]);
#16	use_familiar($familiar[Twitching Space Critter]);
#15	use_familiar($familiar[Helix Fossil]);
#14	use_familiar($familiar[Xiblaxian Holo-Companion]);
#13	use_familiar($familiar[Baby Z-Rex]);
#12	use_familiar($familiar[Lil' Barrel Mimic]);
#10	use_familiar($familiar[Chocolate Lab]);
#9	use_familiar($familiar[Cute Meteor]);
#8	use_familiar($familiar[Unspeakachu]);
#7	use_familiar($familiar[Stooper]);
#6	use_familiar($familiar[Disgeist]);
#5	use_familiar($familiar[Bowlet]);
#4	use_familiar($familiar[Cornbeefadon]);
#3	use_familiar($familiar[Mu]);
#2	use_familiar($familiar[Party Mouse]);
#1	use_familiar($familiar[Yule Hound]);

#22	use_familiar($familiar[Homemade Robot]); //SPECIAL NOTE - only 90% fam run possible with this guy in Community Service

	equip($slot[familiar], $item[tiny stillsuit]);

	print("The next familiar has been set for a 100% run and the tiny stillsuit has been equipped!", "blue");

}
