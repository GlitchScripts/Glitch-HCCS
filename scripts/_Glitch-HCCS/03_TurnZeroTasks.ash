// Glitch's HCCS scripting project
// ***************************
//          To Do            *
// ***************************
// Maybe make this work for other classes

// ***************************
// *         Notes     	     *
// ***************************
// This is my preferred order of CS tests:
///////////////////////////////////////////////////////////////////////////////////////////////
// #1 Coil Wire (60 turns)
// #2 Clean Steam Tunnels (1 turn)
// #3 Build Playground Mazes (1 turn) - Mysticality, every 30 bonus mysticality saves 1 turn. (Buffed - Base)/30
// #4 Feed The Children (1 turn) - Muscle, every 30 bonus muscle saves 1 turn. (Buffed - Base)/30
// #5 Feed Conspirators (1 turn) - Moxie, every 30 bonus moxie saves 1 turn. (Buffed - Base)/30
// #6 Donate Blood (1 turn)
// #7 Reduce Gazelle Population (1-3 turns) - Weapon/Melee Damage, every +50% saves 1 turn, every +50 damage saves 1 turn. (floored separately)
// #8 Make Sausage (39-41 turns) - Spell Damage, every +50% saves 1 turn, every +50 damage saves 1 turn. (floored separately)
// #9 Breed More Collies (37-41 turns)
// #10 Be a Living Statue (1 turn)
// #11 Make Margaritas (1-3 turns) - every +30% item saves 1 turn, every +15% booze drop saves 1 turn
////////////////////////////////////////////////////////////////////////////////////////////////



void main()
{
	print("Performing pre-adventure actions now:", "blue");


// This section handles the bulk of my early item handling tasks and some buffs
	wait(1);
		if (cli_execute("genie wish for more wishes")) {}
	wait(1);
		if (cli_execute("genie wish for more wishes")) {}
	wait(1);
		if (cli_execute("genie wish for more wishes")) {}
	wait(1);
		if (cli_execute("use Newbiesport™ tent")) {}
	wait(1);
		if (cli_execute("use astral six-pack")) {}
	wait(1);
		visit_url("place.php?whichplace=speakeasy&action=olivers_pooltable"); //For ~50 free meat
	wait(1);
		cli_execute("tutorial.php?action=toot"); //Not sure why this works. Need to learn more about visit_url vs. cli_execute
	wait(1);
		cli_execute("use letter from King Ralph XI");
	wait(1);
		cli_execute("use pork elf goodies sack");
	wait(1);
		cli_execute("autosell * baconstone");
		cli_execute("autosell * hamethyst");
		cli_execute("autosell * porquoise");
	wait(1);
		cli_execute("make bitchin"); //make the meatcar for desert access
	wait(1);
		cli_execute("hermit * clover");
	wait(1);
		cli_execute("raffle 3 storage"); //Meh, just buy three tickets
	wait(1);
		use_skill(1,$skill[summon crimbo candy]); //3 MP and want to ensure this is done early in the run for those valuable complex candies
	wait(1);
		cli_execute("fold makeshift garbage shirt");
	wait(1);
		cli_execute("outfit _HCCS-GarbageShirtScrapbook"); //Make sure this outfit does NOT equip Kramco (don't waste those strong scalers this early), and make sure it DOES include the garbage shirt (not Parka yet), as well as the Familiar Scrapbook (for the stat gains)
	wait(1);
		cli_execute("saber familiar");
		cli_execute("backupcamera reverser on");
		cli_execute("backupcamera ml");
		cli_execute("boombox food"); //Set this to "food" here for the +3-5 MP regen to refill MP during the coil wire test
		cli_execute("guzzlr accept platinum");
	wait(1);
		cli_execute("guzzlr abandon");
	wait(1);
		cli_execute("set choiceAdventure1494 = 2");	//Pick which of the 3 choices you want for the S.I.T. Course Completion Certificate
		use($item[S.I.T. Course Completion Certificate]); //Then use the S.I.T. Course item
			//1 = Write in Psychogeology, aftercore valuable is lump of loyal latite (+5 fam weight)
			//2 = Write in Insectology, aftercore valuable is flapper fly (100% meat drop)
			//3 = Write in Cryptobotany, no aftercore value


## 	IMPORTANT! This option depends on which class you are running:
	wait(1);
//		cli_execute("retrocape muscle thrill");
		cli_execute("retrocape mysticality thrill");
//		cli_execute("retrocape moxie thrill");


## 	IMPORTANT! This option depends on which class you are running:
	
	wait(1);
		//	Mafia might throw an error when tuning the moon WHILE the spoon is equipped, so let's unequip it now and maybe test it later to confirm
		cli_execute("unequip hewn moon-rune spoon"); //This won't do anything bad if the spoon ISN'T equipped, so just run it to be safe
				
	wait(1);
		visit_url("inv_use.php?whichitem=10254&pwd&doit=96&whichsign=8"); //Tune the moon with the spoon
		
//			1=The Mongoose
//			2=The Wallaby
//			3=The Vole
//			4=The Platypus
//			5=The Opossum
//			6=The Marmot
//			7=The Wombat
//			8=The Blender
//			9=The Packrat

	print("The moon has been tuned with the spoon.", "blue");
	print("Turn 0 tasks are complete.", "purple");
}

