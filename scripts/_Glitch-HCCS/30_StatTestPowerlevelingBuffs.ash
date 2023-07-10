// Glitch's HCCS scripting project
// ***************************
//          To Do            *
// ***************************

// ***************************
// *         Notes     	     *
// ***************************
//This section performs most buffs AFTER the coil wire and steam tunnel tests has been completed.

void main()
{

// This section handles the buffs and item configurations needed to reach Level 15 for the stat and HP tests
	
	wait(1);
		cli_execute("rest"); //Mafia performs a free rest in your campaway tent, which restores up to 200-300 HP and 100-150 MP
		if (use_skill(1,$skill[CHEAT CODE: Triple Size])) {}
		if (use_skill(1,$skill[get big])) {} //15 MP
		if (use_skill(1,$skill[song of bravado])) {} //100 MP
		if (use_skill(1,$skill[carol of the thrills])) {} //30 MP
		if (use_skill(1,$skill[feel excitement])) {}
		if (use_skill(1,$skill[feel peaceful])) {}
		if (use_skill(1,$skill[Fat Leon's Phat Loot Lyric])) {} //11 MP
//		if (use_skill(1,$skill[inscrutable gaze])) {} //This skill should already be active, so save the MP

	wait(1);
		if (cli_execute("monorail")) {} //get Favored by Lyle
	wait(1);
		if (cli_execute("telescope look high")) {} //get daily buff
	wait(1);
		if (cli_execute("genie effect a contender")) {}
	wait(1);
		if (cli_execute("use MayDay™ supply package")) {}
	wait(1);
		if (cli_execute("use Bird-a-Day calendar")) {}
		if (use_skill(1,$skill[Seek out a Bird])) {}
	wait(1);
		visit_url("place.php?whichplace=campaway&action=campaway_sky"); //Gaze at the Stars a second time for a "Smile" buff (duration: 20 Adventures)
	wait(1);
		cli_execute("boombox meat");
		use_skill(1,$skill[acquire rhinestones]); //10 MP
		cli_execute("use * rhinestone");
		cli_execute("MCD 10"); //Set mind control device to ML +10
		cli_execute("use 1 cold-filtered water"); //Purity of Spirit (10 Adventures) All Attributes +100%
	wait(1);
		if (cli_execute("daycare item")) {}
		if (cli_execute("daycare scavenge")) {} //Small amount of free stats that ARE increased by +statgain multipliers
	wait(1);
		visit_url("shop.php?whichshop=lathe"); // Get 1 flimsy hardwood scraps
		if (cli_execute("make 1 ebony epee")) {} // Choose this because +weapon dmg combines with bow-legged swagger
		
	wait(1);
		visit_url("inv_use.php?whichitem=11257");
		if (cli_execute("make 1 Charter: Nellyville")) {}
		if (cli_execute("use 1 Charter: Nellyville")) {} // +10% to all all three gains
		cli_execute("set choiceAdventure1506 = 3");	//Pick which of the choices you want from the Letter from Carrie Bradshaw
		use($item[Letter from Carrie Bradshaw]); //Then get the red-soled high heels

	wait(1);		
		if (cli_execute("rest")) {} //Mafia performs a free rest in your campaway tent, which restores up to 200-300 HP and 100-150 MP




## 	IMPORTANT! This option depends on which class you are running:
//		cli_execute("daycare muscle"); //Muddled effect for 100 turns of Muscle +200% and +15 to Monster Level
		cli_execute("daycare mysticality"); //Ten out of Ten effect for 100 turns of Mysticality +200% and +50% Combat Initiative
//		cli_execute("daycare moxie"); //Uncucumbered effect for 100 turns of Moxie +200% and +25% Item Drops from Monsters



	print("Buying 2 of each gum for a total of 1,440 meat", "green"); //Simple candies for Sweet Synthesis
		buy(2,$item[lime-and-chile-flavored chewing gum]);
		buy(2,$item[jabañero-flavored chewing gum]);
		buy(2,$item[tamarind-flavored chewing gum]);
		buy(2,$item[pickle-flavored chewing gum]);
		
		
		
## 	IMPORTANT! This option depends on which class you are running:
//		sweet_synthesis($effect[synthesis: movement]); {} //1 spleen for +50% Muscle experience
		sweet_synthesis($effect[synthesis: learning]); //1 spleen for +50% Mysticality experience
//		sweet_synthesis($effect[synthesis: style]); //1 spleen for +50% Moxie experience


## 	IMPORTANT! This option depends on which class you are running:
//		sweet_synthesis($effect[synthesis: strong]); //1 spleen for +300% Muscle
		sweet_synthesis($effect[synthesis: smart]); //1 spleen for +300% Mysticality
//		sweet_synthesis($effect[synthesis: cool]); //1 spleen for +300% Moxie


## 	IMPORTANT! This option depends on which class you are running:
//		if (cli_execute("monkeypaw effect Incredibly Hulking")) {} //Muscle +200% (normally from a Ferrigno's Elixir of Power)
		if (cli_execute("monkeypaw effect On the Shoulders of Giants")) {} //Mysticality +200% (normally from a Hawking's Elixir of Brilliance)
//		if (cli_execute("monkeypaw effect Cock of the Walk")) {} //Moxie +200% (normally from a Connery's Elixir of Audacity)


## 	IMPORTANT! This option depends on which class you are running:
//		if (cli_execute("beach head Lack of Body-Building")) {} //Muscle +50%
		if (cli_execute("beach head We're All Made of Starfish")) {} //Mysticality +50% Brilliance)
//		if (cli_execute("beach head Pomp & Circumsands")) {} //Moxie +50%


## 	IMPORTANT! This option depends on which class you want an extra +15 stats for (probably one of the two off-classes):
		visit_url("place.php?whichplace=realm_fantasy&action=fr_initcenter"); //Visit the FantasyRealm Welcome Center
//			visit_url("choice.php?whichchoice=1280&option=1"); //1=Muscle
//			visit_url("choice.php?whichchoice=1280&option=2"); //2=Mysticality		
			visit_url("choice.php?whichchoice=1280&option=3"); //3=Moxie


	print("Most buffs are now applied.", "blue");
	print("Check maximizer for your mainstat to see if there are any other available buffs before fighting scalers.", "red");
}

