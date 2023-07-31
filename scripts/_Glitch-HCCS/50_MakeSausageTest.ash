// Glitch's HCCS scripting project
// ***************************
//          To Do            *
// ***************************
// ALL THE THINGS! (aka this is where I stop using scripts and just finish my run manually)
// Getting there, little by little :)

///////////////////////////////////////////////////////////////////////////////////////////////
// #8 Make Sausage (34-39 turns) - Spell Damage, every +50% saves 1 turn, every +50 damage saves 1 turn. (floored separately)
///////////////////////////////////////////////////////////////////////////////////////////////

void main()
{

// This section handles the buffs and item configurations needed to pass the Spell Damage test


	wait(1);
		cli_execute("maximize spell dmg");	

	wait(1);
		cli_execute("rest free");
		cli_execute("rest free");
		cli_execute("cast 2 ode");
		cli_execute("drink 6 astral pilsner");
		cli_execute("pool 2");
		cli_execute("cast 1 Song of Sauce");
		cli_execute("cast 1 Carol of the Hells");
		cli_execute("cast 1 Deep Dark Visions");
		cli_execute("monkeypaw effect Witch Breaded"); // saves 4 turns
		cli_execute("breakfast"); //to harvest batteries
			//When first planted and after ascension, there are seven batteries (AAA) ready to pick
		cli_execute("use 1 battery (AAA)"); //Spell Damage +50%
		cli_execute("hatter 11");
		if (cli_execute("boombox food vibrations")) {} //Change boombox back to food vibrations for the MP regen

	print("Use Meteor Shower + Saber now", "red");
	
		

// future do this

	wait(1);
//		visit_url("council.php");
//		run_choice(7); //7=Make Sausage (Spell Damage)

//	print("Spell damage test complete!", "blue");

}