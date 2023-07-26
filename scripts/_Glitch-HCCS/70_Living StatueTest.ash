// Glitch's HCCS scripting project
// ***************************
//          To Do            *
// ***************************

///////////////////////////////////////////////////////////////////////////////////////////////
// #10 Be a Living Statue (1 turn)
///////////////////////////////////////////////////////////////////////////////////////////////

void main()
{

// This section handles the buffs and item configurations needed to pass the -combat test.

	wait(1);
		cli_execute("buy porkpie-mounted popper");
		cli_execute("maximize -combat -tie");	
	
	wait(1);
		cli_execute("swim sprints");
		cli_execute("use 1 shady shades");
		cli_execute("use 1 squeaky toy rose");
		cli_execute("cast 1 CHEAT CODE: Invisible Avatar");
		cli_execute("cast 1 Visit your Favorite Bird");
		cli_execute("cast 1 The Sonata of Sneakiness");
		cli_execute("cast 1 Smooth Movement");		
		cli_execute("cast 1 Feel Lonely");			

	wait(1);
		visit_url("council.php");
		run_choice(8); //8=Be a Living Statue (-Combat)

	print("-combat test complete!", "blue");

}
