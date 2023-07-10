// Glitch's HCCS scripting project
// ***************************
//          To Do            *
// ***************************
// ALL THE THINGS! (aka this is where I stop using scripts and just finish my run manually)
// Getting there, little by little :)

///////////////////////////////////////////////////////////////////////////////////////////////
// #7 Reduce Gazelle Population (1-3 turns) - Weapon/Melee Damage, every +50% saves 1 turn, every +50 damage saves 1 turn. (floored separately)
// #8 Make Sausage (39-41 turns) - Spell Damage, every +50% saves 1 turn, every +50 damage saves 1 turn. (floored separately)
// #9 Breed More Collies (37-41 turns)
// #10 Be a Living Statue (1 turn)
// #11 Make Margaritas (1-3 turns) - every +30% item saves 1 turn, every +15% booze drop saves 1 turn
///////////////////////////////////////////////////////////////////////////////////////////////

void main()
{

// This section handles the buffs and item configurations needed to pass tests 7-11


	// HOW MUCH MP DO I HAVE? Do I need to script in two more free rests here??

	cast spaghetti breakfast // 30 MP
	eat 1 spaghetti breakfast // If you are below level 11 when you eat this you won't get all 6 adventures
	cast bowl full of jelly //50 MP
	cast eye and a twist // 50 MP
	cast chubby and plump // 50 MP
	cast love mixology // 50 MP


// #7 Reduce Gazelle Population (1-3 turns) - Weapon / Melee Damage, every +50% saves 1 turn, every +50 damage saves 1 turn. (floored separately)
//		Try to do this one BEFORE the spell dmg test because Bow-Legged Swagger helps here, but not later
//		Meteor Shower & Bow-Legged Swagger
//		cli_execute("monkeypaw effect outer wolf"); //For +200% weapon damage, which is +400% with bow-legged swagger and saves 8 turns
//		cli_execute("monkeypaw effect Pyramid Power"); //For +100% weapon damage, which is +200% with bow-legged swagger and saves 4 turns
//		cli_execute("cargo pick 284"); //Pocket #284 is Yeg's Motel toothbrush (Potion: 50 turns of +200% weapon damage)
//		cli_execute("use Yeg's Motel toothbrush"); //Potion: 50 turns of +200% weapon damage
//		DON'T KEEP FORGETTING - use Lathe to make an [ebony epee] +weapon item (b/c it combines with bow-legged swagger
//		DON'T FORGET TO CHANGE MAXIMIZER TO PULLABLE/BUYABLE


//		NEW!! monkey paw wishes are now a thing
// #8 Make Sausage (39-40 turns) - Spell Damage, every +50% saves 1 turn, every +50 damage saves 1 turn. (floored separately)
// drink 6 astral pislners
//		Meteor Shower
// monkeypaw effect Witch Breaded // saves 4 turns
// monkeypaw effect Sparkly

//		breakfast //to harvest batteries
//			When first planted and after ascension, there are seven batteries (AAA) ready to pick
//		cli_execute("use 1 battery (AAA)"); //Spell Damage +50%
//		cli_execute("use 1 battery (lantern)"); //+100% item drop



//		Change boombox back to food vibrations for the MP regen
//		Burn off any excess MP
//		DON'T FORGET TO CHANGE MAXIMIZER TO PULLABLE/BUYABLE



// #9 Breed More Collies (37-40 turns)
//		Meteor Shower
//		DON'T FORGET TO CHANGE MAXIMIZER TO PULLABLE/BUYABLE
//		Can I use the shortest order cook here to give my familiar some free XP?


// #10 Be a Living Statue (1 turn)
// Visit your Favorite Bird



// #11 Make Margaritas (1-3 turns) - every +30% item saves 1 turn, every +15% booze drop saves 1 turn
//		Reward: emergency margarita - 40 Adventures, 10 Drunkenness for Weapon Damage +200% Spell Damage +200%
//		Try to route this test at the end so that the Teleportitis side-effect from Feel Lost (+60% item drop) can be easily removed
// maximizer string: booze drop, -food drop, item drop -equip champagne bottle -equip surprisingly capacious handbag
//		cast steely-eyed squint
//		monkeypaw effect infernal thirst
//		Make sure bowling ball is available for item drop test. It makes a difference!
//		Bowl Straight Up gives Cosmic Ball in the Air (+25% item drop, +50% meat drop)
// 		DON'T FORGET to drink your stillsuit booze for +item bonus


// 2002 IOTM - Red-soled high heels






// NOTE: If you are missing the thwatigold statuette, just visit council.php right before you ascend


//	print("Phase 3 complete! You can now finish the ascention.", "blue");

}


// Run my NEW script: _G-HCCS_91_Aftercore_Everything.ash


// garbo
// NOT garbo ascend (that's for the next day of the loop)



// Now start using Philter manager to clean up my inventory :)