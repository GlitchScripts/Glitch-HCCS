// Glitch's HCCS scripting project
// ***************************
//          To Do            *
// ***************************
// ALL THE THINGS! (aka this is where I stop using scripts and just finish my run manually)
// Getting there, little by little :)

///////////////////////////////////////////////////////////////////////////////////////////////
// #9 Breed More Collies (37-41 turns)
///////////////////////////////////////////////////////////////////////////////////////////////

void main()
{

// This section handles the buffs and item configurations needed to pass the familiar weight test


//		Can I use the shortest order cook here to give my familiar some free XP?


// This section uses the Saber to get Meteor Showered

	//I used to do this in other zones that would let me use the saber's third option and get free items from the monster, but since this script is intended for 100% familiar runs, anytime I use an attack familiar it ends up killing the monster after casting Meteor Shower, but BEOFRE I can use the Force, so adventuring in the NEP is best because the monsters are strong scalers and can survive an attack familiar.

	set_property("choiceAdventure1324", "5"); //It Hasn't Ended, It's Just Paused > Pick a fight (Set this choice just in case the non-combat appears)
	set_property("choiceAdventure1387", "2"); //"You will go find two friends and meet me here." (since the 3rd choice doesn't work in NEP
	
	wait(1);	
		cli_execute("outfit _HCCS-Parka"); //Make sure this outfit equips the Saber, but does NOT equip the June Cleaver or Kramco in the offhand slot(don't want wanderers or unexpected non-combats), and not the garbage shirt to avoid errors.

		if (use_skill(1,$skill[Cannelloni Cocoon])) {} //20 MP for 1000 HP to avoid misc. errors like [(Macro Aborted ("hppercentbelow 10"))]

		set_property("customCombatScript","HCCS-MeteorShowerSaber.ccs");
			//[ default ]
			//skill meteor shower
			//"skill Use the Force, Glitch!" //note that I've tested this and the quotes around the entire skill and using my actual in-game player name are REQUIRED for this to work

	// Now adventure in the NEP
		adv1($location[the neverending party], -1, "");

		print("You should now have 1 turn of Meteor Showered (+20 to Familiar Weight)", "blue");
		
	set_property("customCombatScript","default.ccs"); //Change back to this for a clean slate to avoid any future mixups
		//[ default ]
		//special action
		//attack with weapon

	wait(1);
		cli_execute("maximize familiar weight");	
	
	wait(1);
		cli_execute("pool 1");
		cli_execute("cast 1 Leash of Linguini");
		cli_execute("cast 1 Empathy of the Newt");
		cli_execute("cast 1 Blood Bond");
		cli_execute("cast 1 Cincho: Party Soundtrack");
		cli_execute("beach head Do I Know You From Somewhere?");



	wait(1);
//		visit_url("council.php");
//		run_choice(5); //5=Breed More Collies (Familiar Weight)




//	print("Familiar weight test complete!", "blue");

}
