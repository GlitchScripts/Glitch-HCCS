// Glitch's HCCS scripting project
// ***************************
//          To Do            *
// ***************************

///////////////////////////////////////////////////////////////////////////////////////////////
// #2 Clean Steam Tunnels (1 turn)
///////////////////////////////////////////////////////////////////////////////////////////////

void main()
{

	print("Performing pre-steam tunnel actions now:", "blue");
	
	wait(1);
 		//Equip the saber and fire extinguisher to get the +30 hot res buff
			cli_execute("outfit _HCCS-FireExtinguisher");
				//Make sure this outfit equips the Saber and Extinguisher, but NOT June Cleaver or Kramco

	wait(1);
		set_property("customCombatScript","HCCS-CleanSteamTunnels.ccs");
			//[ default ]
			//skill fire extinguisher: foam yourself
			//"skill Use the Force, Glitch!" //note that I've tested this and the quotes around the entire skill and using my actual in-game player name are REQUIRED for this to work

	wait(1);
		set_property("choiceAdventure1387", "2"); //"You will go find two friends and meet me here." (since the 3rd choice doesn't work in NEP

	wait(1);
		adv1($location[the neverending party], -1, "");
		
			//I used to do this in other zones that would let me use the saber's third option and get free items from the monster, but since this script is intended for 100% familiar runs, anytime I use an attack familiar it ends up killing the monster after casting Foam Yourself, but BEOFRE I can use the Force, so adventuring in the NEP is best because the monsters are strong scalers and can survive an attack familiar.

	wait(1);
		print("You should now have 1 turn of Fireproof Foam Suit (+30 Hot Resistance)", "blue");
		
	wait(1);
		cli_execute("outfit _HCCS-MaxHotRes");
		cli_execute("parka pterodactyl"); //+1 Hot Res
		cli_execute("retrocape muscle hold"); //+3 Hot Res
		use_skill(1,$skill[Elemental Saucesphere]); //+2 Hot Res for 10 MP
		use_skill(1,$skill[Astral Shell]); //+1 Hot Res for 10 MP
		use_skill(1,$skill[feel peaceful]); //+2 Hot Res
		cli_execute("beach head Hot-Headed"); //+3 Hot Res
		
	wait(1);
		visit_url("council.php");
		run_choice(10); //10=Clean Steam Tunnels (Hot Res)


	print("Performing post-steam tunnel actions now:", "blue");

		set_property("customCombatScript","default.ccs"); //Change back to this for a clean slate to avoid any future mixups
			//[ default ]
			//special action
			//attack with weapon


## 	IMPORTANT! This option depends on which class you are running:
	wait(1); //Change the retrocape back from the hot res mode to the +mainstat exp mode
//		cli_execute("retrocape muscle thrill");
		cli_execute("retrocape mysticality thrill");
//		cli_execute("retrocape moxie thrill");



 	print("The CLEAN STEAM TUNNELS test is complete.", "blue");
	print("You can now finish buffing and then start spending free turns to level up.", "blue");
}

