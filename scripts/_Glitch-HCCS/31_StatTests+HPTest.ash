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



///////////////////////////////////////////////////////////////////////////////////////////////
//	Then move on to the rest of my free fights for power leveling via NEP and Backing Up to Sausage Goblins

	wait(1);
		cli_execute("outfit _HCCS-PowerLeveling-Myst"); //Outfit with saber + Kramco + bastille item

	wait(1);
		adv1($location[the neverending party], -1, ""); //Spent 1 free turn in NEP to reach Level 5 and simultaneously force a non-combat, but make sure Kramco and June Cleaver are NOT equipped
		
		
		
// Get an early Kramco goblin and back up to it 11 times for the scaling monster stats. Later on, I can refine how many free fights, backups, and other resources I use in order to save them for garbo profits in aftercore. But for now, just breeze through the HCCS loops.

//	Remember to use chest x-rays, shattering punches, gingerbread hit, and smoke bombs after the 10 NEP free fights are used up

// Don't use the equalizing oil until free fights are done otherwise scalers are more difficult than they need to be

// IF YOU GET STUCK AND CAN'T MAX THE TESTS, CHANGE MAXIMIZER TO PULLABLE/BUYABLE




## 	IMPORTANT! This section is only useful if you're a mysticality class:

		set_property("choiceAdventure1059", "1"); //Helping Make Ends Meat > Sure, I'll go check it out (accept the Meatsmith's quest)
		visit_url("shop.php?whichshop=meatsmith");
		
		
	//At this point I'm not yet sure how to select the choice "What do you need?" since it's not truely a choice adventure
		run_choice(1); //UNTESTED!!! Choose "What do you need?"
		
		
	//Once that's figured out, then I can accept the quest and unlock the Skeleton Store
		visit_url("choice.php?whichchoice=1059&option=1");


	//Get the initial visit out of the way "Skeletons In Store"
		visit_url("adventure.php?snarfblat=439"); //The Skeleton Store (Zone #439)

	//Then map the monsters and fight a novelty tropical skeleton for a cherry (myst: oil of expertise) or a 
		use_skill(1,$skill[map the monsters]);
		visit_url("adventure.php?snarfblat=439"); //The Skeleton Store (Zone #439)
		run_choice(1, "heyscriptswhatsupwinkwink=1746"); //Fight a novelty tropical skeleton, monster ID #1746
	
	wait(1);
 		cli_execute("outfit _HCCS-Parka"); //Make sure this outfit does NOT equip June Cleaver or Kramco (don't want wanderers or unexpected non-combats)
		cli_execute("parka acid"); //Switches to dilophosaur mode, which allows using "Spit jurassic acid" (yellow ray with a free kill, 99 turn cooldown)
		
		
	wait(1);
		set_property("customCombatScript","HCCS-YellowRay_NoveltyTropicalSkeleton.ccs");
			//[ default ]
			//skill Spit jurassic acid
			//skill shattering punch
			//attack with weapon
			
			
	print("You should now have a cherry that you can saucecraft", "blue");
		
		use_skill(1,$skill[advanced saucecrafting]); //10 MP to generate five scrumptious reagents
		if (cli_execute(make 1 oil of expertise)) {} //Makes your Muscle and Moxie equal to your Mysticality for 5 Adventures








#######################################
##MANUAL COMMAND SECTION
#######################################


############# MYSTICALITY CLASS #############
//Oil of expertise	2,000 - easy to obtain in-run from Skeleton store -	Expert Oiliness (5 Adventures) Makes your Muscle and Moxie equal to your Mysticality

############# MUSCLE CLASS #############
//Oil of stability		Stabilizing Oiliness (5 Adventures) Makes your Mysticality and Moxie equal to your Muscle
//maybe monkey wish for the Stabilizing Oiliness effect if musc class (lime itself is not wishable)


############# MOXIE CLASS #############
//Oil of slipperiness - (5 Adventures of Slippery Oiliness) Makes your Muscle and Mysticality equal to your Moxie
// monkeypaw effect Slippery Oiliness

#######################################





 	print("The three stat tests and the HP test are now complete.", "blue");	
}

