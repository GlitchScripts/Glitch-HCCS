// Glitch's HCCS scripting project
// ***************************
//          To Do            *
// ***************************
// Maybe make this whole project work for other classes

///////////////////////////////////////////////////////////////////////////////////////////////
// #1 Coil Wire (60 turns)
///////////////////////////////////////////////////////////////////////////////////////////////

void main()
{

// This section handles some remaining turn 0 steps in order to prep for and reach Level 5, drink a perfect drink, and finish COIL TEST

	print("Performing pre-coil wire actions now:", "blue");
	
	wait(1);
		use_skill(1,$skill[inscrutable gaze]); //For the +10% myst exp BEFORE using Bastille
 		use_skill(1,$skill[feel peaceful]); //For the +100 DA as an extra failsafe to make sure I can survive the first combat to reach Level 5
	wait(1);
		visit_url("place.php?whichplace=campaway&action=campaway_sky"); //Gaze at the Stars for the "That's Just Cloud-Talk, Man" buff (duration: 100 Adventures) BEFORE using Bastille


## 	IMPORTANT! This option depends on which class you are running:
	wait(1);
//		cli_execute("bastille mainstat brutalist cannon"); //muscle options
		cli_execute("bastille mainstat draftsman catapult"); //mysticality options
//		cli_execute("bastille mainstat art nouveau gesture"); //moxie options


	wait(1);
 		cli_execute("outfit _HCCS-Parka"); //Make sure this outfit does NOT equip June Cleaver or Kramco (don't waste those strong scalers this early)
		cli_execute("parka spikes");

	wait(1);
	//NEP Non-combat Setup:
		visit_url("adventure.php?snarfblat=528"); //The Neverending Party (Early) aka The Beginning of the Neverend
		visit_url("choice.php?whichchoice=1322&option=2"); //Choose the safest option "No, I'm just here to party" (don't accept a quest)


## 	IMPORTANT! This option depends on which class you are running:
	//Mysticality Class Options:
		set_property("choiceAdventure1324", "1"); //It Hasn't Ended, It's Just Paused > Head upstairs
		set_property("choiceAdventure1325", "2"); //A Room With a View... Of a Bed > Read the tomes > Effect: Tomes of Opportunity (Mysticality)

	// Muscle Class Options: (intentionally commented out, used for reference only)
	//		set_property("choiceAdventure1324", "2"); //It Hasn't Ended, It's Just Paused > Check out the kitchen
	//		set_property("choiceAdventure1326", "2"); //Gone Kitchin' > Check out the kitchen > Check out the muscle spice > Effect: Spiced Up (Muscle)

	// Moxie Class Options: (intentionally commented out, used for reference only)
	//		set_property("choiceAdventure1324", "4"); //It Hasn't Ended, It's Just Paused > Basement Urges
	//		set_property("choiceAdventure1328", "2"); //Basement Urges > Basement Urges > Use the hair gel > Effect: The Best Hair You've Ever Had (Moxie)



	// Now adventure in the NEP, use Parka to launch spikes (which will force the next turn after coil wire to give me +20% mainstat exp), and then beat the monster to get to Level 5 so I can drink a perfect drink
	
	// I could force a noncombat with pillkeeper or cincho, but that one initial free fight in NEP with parka is also what gets me up to Level 5 so I can drink a perfect drink and take the coil test first, so I prefer to keep this in (at least until a future IOTM comes out that gives stat gains like Bastille)

	set_property("customCombatScript","HCCS-SpikolodonSpikes.ccs");
		//[ default ]
		//skill launch spikolodon spikes
		//skill detect weakness
		//attack with weapon

	wait(1);
		adv1($location[the neverending party], -1, ""); //Spent 1 free turn in NEP to reach Level 5 and simultaneously force a non-combat, but make sure Kramco and June Cleaver are NOT equipped

	wait(1);
		use_skill(1,$skill[perfect freeze]); //5 MP for a perfect ice cube, probably have about 3 MP remaining
		cli_execute("rest"); //Mafia performs a free rest in your campaway tent, which restores up to 200-300 HP and 100-150 MP
		use_skill(1,$skill[prevent scurvy and sobriety]); //50 MP for perfect drink ingredients
		use_skill(1,$skill[the ode to booze]); //50 MP and Mafia will automatically buy the toy accordion for you
	wait(1);
		cli_execute("acquire perfect dark and stormy");
		cli_execute("drink 1 perfect dark and stormy");

	wait(1);
		visit_url("council.php"); //You only have to visit this twice the first time to get past the "Look at the list" prompt
		visit_url("council.php");
		run_choice(11); //11=Coil wire



// This section handles some cleanup tasks AFTER the coil wire test (mainly the ten-percent bonus)

	print("Performing post-coil wire actions now:", "blue");

	set_property("customCombatScript","default.ccs"); //Change back to this for a clean slate to avoid any future mixups
		//[ default ]
		//special action
		//attack with weapon
	wait(1);
		cli_execute("outfit _HCCS-FireExtinguisher"); //Do NOT equip the "_HCCS-Default" outfit because I don't want Kramco on for the next visit to NEP (it will override the NEP non-combat that I intentionally forced just before the coil wire test)
	wait(1);
		use_skill(1,$skill[inscrutable gaze]); //For the +10% myst exp BEFORE using the ten-percent bonus		
	wait(1);
		cli_execute("use a ten-percent bonus");		
	wait(1);
		adv1($location[the neverending party], -1, ""); //Make sure Kramco and June Cleaver are NOT equipped, and this will give me the +20% mainstat exp buff from the NEP non-combat
		
	
 	print("The COIL WIRE test is complete.", "blue");
}

