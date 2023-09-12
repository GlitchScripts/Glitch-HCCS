// Glitch's HCCS scripting project
// ***************************
//          To Do            *
// ***************************
// ALL THE THINGS! (aka this is where I stop using scripts and just finish my run manually)
// Getting there, little by little :)

///////////////////////////////////////////////////////////////////////////////////////////////
// #3 Build Playground Mazes (1 turn) - Mysticality, every 30 bonus mysticality saves 1 turn. (Buffed - Base)/30
// #4 Feed The Children (1 turn) - Muscle, every 30 bonus muscle saves 1 turn. (Buffed - Base)/30
// #5 Feed Conspirators (1 turn) - Moxie, every 30 bonus moxie saves 1 turn. (Buffed - Base)/30
// #6 Donate Blood (1 turn)
///////////////////////////////////////////////////////////////////////////////////////////////

void main()
{

	print("Begin powerleveling via free fights to go from Level 5 to Level 15 for the stat tests", "blue");
	

	// Start with some specific free fights

	wait(1);
		cli_execute("outfit _HCCS-GarbageShirtScrapbook"); //Make sure this outfit equips the Saber and Scrapbook (for +exp), but NOT June Cleaver or Kramco (don't want wanderers or unexpected non-combats)

	wait(1);
		set_property("customCombatScript","HCCS-FeelEnvy_GoblinFlapper.ccs");
			//[ default ]
			//skill feel envy
			//skill bowl sideways //increase base stat gain (including +ML gains) from each monster by 50%
			//attack with weapon

		use_skill(1,$skill[map the monsters]);
		visit_url("adventure.php?snarfblat=558"); //Spend my first free turn at an unusually quiet barroom brawl (Zone #558)
		run_choice(1, "heyscriptswhatsupwinkwink=2252"); //Fight a goblin flapper, monster ID #2252

	print("You should now have an Imported Taffy", "blue");

	wait(1);
		//Now that the barroom brawl is open, we can send the FallBot there
		cli_execute("autumnaton send an unusually quiet barroom brawl");

	wait(1);
		set_property("customCombatScript","HCCS-FeelEnvy_Ungulith.ccs");
			//[ default ]
			//skill feel envy
			//skill shattering punch
			//attack with weapon
			
		cli_execute("reminisce 1932"); //Fight an Ungulith and use Feel Envy for a corrupted marrow, then shattering punch since it's NOT a free fight

	print("You should now have a Corrupted Marrow", "blue");

	wait(1);
		set_property("customCombatScript","default.ccs"); //Change back to this to avoid any future issues
			//[ default ]
			//special action
			//attack with weapon

		cli_execute("reminisce 1942"); //Fight a Witchess Bishop for a Sacramento wine
		
	print("You should now have a bottle of Sacramento wine", "blue");

		cli_execute("reminisce 1198"); //Fight a Black Crayon Pirate so the locket ends with +50% Booze Drops

	print("Your combat lover's locket should now have +50% Booze Drops to help cap the Item Test", "blue");


	wait(1);
		cli_execute("outfit _HCCS-PowerLeveling"); //Outfit with Saber + Kramco + Cincho (for the Confetti Extravaganza combat skill which "doubles statgain at end of fight")
		
		
	//FUTURE - ADD SOME CRAZY CUSTOM COMBAT SCRIPT STUFF HERE TO HANDLE MY FREE FIGHTS FOR ME//
		
		print("Now use free scaling fights in NEP (combined with Backing Up to Sausage Goblins). I'll script this later.", "blue");




// Don't use the equalizing oil until free fights are done otherwise scalers are more difficult than they need to be

## 	IMPORTANT! This option depends on which class you are running:
##	Stat equalizing effects:
	//	monkeypaw effect Expert Oiliness  //Makes your Muscle and Moxie equal to your MYSTICALITY (easy to obtain in-run from Skeleton store, but uses a Saber)
	//	monkeypaw effect Stabilizing Oiliness  //Makes your Mysticality and Moxie equal to your MUSCLE (lime is hard to get in an HCCS run)
	//	monkeypaw effect Slippery Oiliness  //Makes your Muscle and Mysticality equal to your MOXIE (jumbo olive is hard to get in an HCCS run)
	
	

// 	print("IF YOU GET STUCK AND CAN'T MAX THE TESTS, CHANGE MAXIMIZER TO PULLABLE/BUYABLE.", "red");
	
	
//	wait(1);
//		visit_url("council.php");
//		run_choice(3); //3=Build Playground Mazes (Myst)
//			print("Myst stat test complete!", "blue");


//	wait(1);
//		cli_execute("maximize muscle");
//		visit_url("council.php");
//		run_choice(2); //2=Feed The Children (Muscle)
//		run_choice(1); //1=Donate Blood (HP)
//			print("Muscle stat and HP tests complete!", "blue");


//	wait(1);
//		cli_execute("maximize moxie");
//		visit_url("council.php");
//		run_choice(4); //4=Feed Conspirators (Moxie)
//			print("Moxie stat test complete!", "blue");

	
// 	print("The three stat tests and the HP test are now complete.", "blue");

}

