// Glitch's HCCS scripting project

// ***************************
// *         Notes     	     *
// ***************************
// This script automates some of the intial tasks I like to perform after completing every HCCS run.

void main()
{
		print("STARTING POST-HCCS SCRIPT","green");

	if (cli_execute("refresh all")) {} //Mafia doesn't always realize I'm in aftercore after a 1-day run
	if (cli_execute("uneffect feeling lost")) {} //Since I route the item test at the end and this effect is undesireable
	if (cli_execute("pull all")) {} //This takes about 40-60 seconds
	if (cli_execute("breakfast")) {} //Good to do this after pulling everything out of storage
	if (cli_execute("rest")) {} //Mafia performs a free rest in your campaway tent, which restores up to 200-300 HP and 100-150 MP
	set_property("choiceAdventure1414", "3"); //Option 3 = Sneaky Pete's key
	if (use_skill(1,$skill[Lock Picking])) {} //Aquire a Sneaky Pete's key
	if (cli_execute("make 1 Sneaky Pete's key lime")) {} //Automatically cook a lime and Sneaky Pete's key
	if (cli_execute("make 1 meat butler")) {}
	if (cli_execute("use 1 meat butler")) {} //+4 adventures tomorrow
	if (cli_execute("create 1 box of Familiar Jacks")) {} //Profit
	if (cli_execute("create 1 box of Familiar Jacks")) {} //Profit
	if (cli_execute("use 1 circle drum")) {} //Why not?
	if (cli_execute("av-snapshot.ash")) {} //Love those green boxes

		print("AFTERCORE TASKS COMPLETE! Now running Philter for inventory cleanup, and then you'll probably want to run Garbo.","blue");

	if (cli_execute("philter")) {} //Keep my inventory clean and my mall store stocked
		
}
