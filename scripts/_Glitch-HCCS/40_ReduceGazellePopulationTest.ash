// Glitch's HCCS scripting project
// ***************************
//          To Do            *
// ***************************

///////////////////////////////////////////////////////////////////////////////////////////////
// #7 Reduce Gazelle Population (1-3 turns) - Weapon/Melee Damage, every +50% saves 1 turn, every +50 damage saves 1 turn. (floored separately)
///////////////////////////////////////////////////////////////////////////////////////////////
// Try to do this test BEFORE the spell dmg test because Bow-Legged Swagger helps here, but not later, and some of the buffs that give +weapon dmg also give +spell dmg


void main()
{

// This section handles the buffs and item configurations needed to pass the weapon damage test



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

		print("You should now have 1 turn of Meteor Showered (+100% Weapon Damage)", "blue");
		
	set_property("customCombatScript","default.ccs"); //Change back to this for a clean slate to avoid any future mixups
		//[ default ]
		//special action
		//attack with weapon
		
	cli_execute("maximize weapon dmg");	
		
	wait(1);
		cli_execute("rest free"); //Mafia performs a free rest in your campaway tent, which restores up to 200-300 HP and 100-150 MP
		use_skill(2,$skill[Oode to booze]); {} //50x2 MP
		use_skill(1,$skill[eye and a twist]); {} //50 MP
		cli_execute(drink 1 eye and a twist); {} //5-6 adventures for 1 liver
		cli_execute(drink 6 astral pilsner)) {} //11 adventures per 1 liver
			// If you are below level 11 when you drink this you won't get all 11 adventures
		
		
		cli_execute("rest free");
		cli_execute("rest free");
		cli_execute("use 1 corrupted marrow");
		cli_execute("use 1 imported taffy");
		cli_execute("pool 1");
		cli_execute("cast 1 Carol of the Bulls");
		cli_execute("cast 1 Blood Frenzy");
		cli_execute("boombox these fists were made for punchin'");
		cli_execute("use 1 Meleegra™ pills");
		cli_execute("cast Bow-Legged Swagger");
		cli_execute("cast Song of the North");
		cli_execute("monkeypaw effect outer wolf"); //For +200% weapon damage, which is +400% with bow-legged swagger and saves 8 turns
		cli_execute("monkeypaw effect Pyramid Power"); //For +100% weapon damage, which is +200% with bow-legged swagger and saves 4 turns
		cli_execute("cargo pick 284"); //Pocket #284 is Yeg's Motel toothbrush (Potion: 50 turns of +200% weapon damage)
		cli_execute("use Yeg's Motel toothbrush"); //Potion: 50 turns of +200% weapon damage


	wait(1);
//		visit_url("council.php");
		run_choice(6); //6=Reduce Gazelle Population (Weapon Damage)


	print("Weapon damage test complete!", "blue");
}