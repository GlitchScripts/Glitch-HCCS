// Glitch's HCCS scripting project
// ***************************
//          To Do            *
// ***************************
// ALL THE THINGS! (aka this is where I stop using scripts and just finish my run manually)
// Getting there, little by little :)

///////////////////////////////////////////////////////////////////////////////////////////////
// #11 Make Margaritas (1-3 turns) - every +30% item saves 1 turn, every +15% booze drop saves 1 turn
///////////////////////////////////////////////////////////////////////////////////////////////
// Try to route this test at the end so that the Teleportitis side-effect from Feel Lost (+60% item drop) can be easily removed



void main()
{

// This section handles the buffs and item configurations needed to pass the item and booze drop test

	wait(1);
		cli_execute("maximize booze drop, -food drop, item drop -equip champagne bottle -equip surprisingly capacious handbag");

	wait(1);
		cli_execute("cast 1 steely-eyed squint");
		cli_execute("cast 1 Feel Lost");
		cli_execute("cast 1 Fat Leon's Phat Loot Lyric");
		cli_execute("cast 1 Seek out a Bird");
		cli_execute("cast 1 Singer's Faithful Ocelot");
		cli_execute("cast 1 The Spirit of Taking");
		cli_execute("cast 1 ode");
		cli_execute("drink 1 Sacramento wine");
		cli_execute("fortune buff hagnk");
		cli_execute("genie effect infernal thirst");
		
	print("Check the maximizer manually", "red");
	print("Possibly drink your stillsuit booze for +item bonus", "blue");
	print("Possibly Bowl Straight Up for +25% item drop", "blue");

// future do this

	wait(1);
//		visit_url("council.php");
//		run_choice(9); //9=Make Margaritas (Item and Booze Drops)

//	print("Item/Booze drop test complete!", "blue");
	
//	print("Now performing Final Service", "blue");
	
	wait(1);
//		visit_url("council.php");
//		run_choice(30); //30=Final Service

	wait(1);
//		if (cli_execute("99_AftercoreStartingTasks.ash")) {}

}
