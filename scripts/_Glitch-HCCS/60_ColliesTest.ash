// Glitch's HCCS scripting project
// ***************************
//          To Do            *
// ***************************
// ALL THE THINGS! (aka this is where I stop using scripts and just finish my run manually)
// Getting there, little by little :)

///////////////////////////////////////////////////////////////////////////////////////////////
// #9 Breed More Collies (37-41 turns)
///////////////////////////////////////////////////////////////////////////////////////////////

void main()
{

// This section handles the buffs and item configurations needed to pass the familiar weight test

//		Meteor Shower

//		Can I use the shortest order cook here to give my familiar some free XP?

	wait(1);
		cli_execute("maximize familiar weight");	
	
	wait(1);
		cli_execute("pool 1");
		cli_execute("cast 1 Leash of Linguini");
		cli_execute("cast 1 Empathy of the Newt");
		cli_execute("cast 1 Blood Bond");
		cli_execute("cast 1 Cincho: Party Soundtrack");
		cli_execute("beach head Do I Know You From Somewhere?");

	print("Use Meteor Shower + Saber now", "red");
	

// future do this

	wait(1);
//		visit_url("council.php");
//		run_choice(5); //5=Breed More Collies (Familiar Weight)




//	print("Familiar weight test complete!", "blue");

}
