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


//		cast steely-eyed squint
//		monkeypaw effect infernal thirst
//		Make sure bowling ball is available for item drop test. It makes a difference!
//		Bowl Straight Up gives Cosmic Ball in the Air (+25% item drop, +50% meat drop)
// 		Possibly drink your stillsuit booze for +item bonus

// maximizer string: booze drop, -food drop, item drop -equip champagne bottle -equip surprisingly capacious handbag

// 2002 IOTM - Red-soled high heels






	print("Item/Booze drop test complete!", "blue");
	
	print("Now performing Final Service", "blue");
	
	wait(1);
//		visit_url("choice.php?whichchoice=1089&option=12"); //12=Final Service
//		That last one might be 13, need to test	


	wait(1);
		if (cli_execute("99_AftercoreStartingTasks.ash")) {}


}
