// Glitch's HCCS scripting project: Trainset Configuration Script (Myst Class Only)
// ***************************
//          To Do            *
// ***************************
// Figure out a clean way to automatically run this twice. I just do it manually for now with a printed reminder at the bottom.

// ***************************
//        Notes       	     *
// ***************************
// This script almost always needs to be run twice for some reason.


void main()
{
	print("Installing trainset in workshed","blue");
	wait(1);
		 if (cli_execute("use model train set")) {}
	
	
	print("Setting trainset options","blue");
	wait(1);
		visit_url("choice.php?pwd&whichchoice=1485&option=1&slot[0]=3&slot[1]=8&slot[2]=17&slot[3]=16&slot[4]=14&slot[5]=1&slot[6]=7&slot[7]=20",true,true);
	
		// Allstat -> coal -> mus -> myst -> mox -> meat -> candy -> ore

		// The &slot[0]={num} is what you change for the parts.
		// 1: Mine/Meat
		// 2: Carbonation/MP regen
		// 3: All stats
		// 4: Hot resist, cold damage
		// 5: Stench resist, spooky damage
		// 6: Mill/Wood + Stats
		// 7: Candy
		// 8: Double/Coal
		// 9: Cold resist, stench damage
		// 11: Spooky resist, sleaze damage
		// 12: Sleaze resist, hot damage
		// 13: Monster level
		// 14: Mox
		// 15: Booze/Groin
		// 16: Mys 
		// 17: Mus 
		// 18: Food drop/Prawn
		// 19: Diner
		// 20: Ore

	print("Trainset configured for Myst class in HCCS!","blue");
	print("Double-check the trainset via Tourguide link because it often needs to be set at least twice for some reason.","red");
}









