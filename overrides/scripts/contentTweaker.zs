#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;



var SteamPiston = VanillaFactory.createItem("steampiston");
SteamPiston.maxStackSize = 64;
SteamPiston.register();

var SteamMotor = VanillaFactory.createItem("steammotor");
SteamMotor.maxStackSize = 64;
SteamMotor.register();

var certificate_of_being_a_noob = VanillaFactory.createItem("certificate_of_being_a_noob");
certificate_of_being_a_noob.maxStackSize = 1;
certificate_of_being_a_noob.register();

//var exquisite_salt = VanillaFactory.createItem("exquisite_salt");
//exquisite_salt.maxStackSize = 64;
//exquisite_salt.register();

var draconiccasing = VanillaFactory.createBlock("draconiccasing", <blockmaterial:iron>);
draconiccasing.register();

var awakenedcasing = VanillaFactory.createBlock("awakenedcasing", <blockmaterial:iron>);
awakenedcasing.register();

var chaoticcasing = VanillaFactory.createBlock("chaoticcasing", <blockmaterial:iron>);
chaoticcasing.register();


var RefinedChaosShard = VanillaFactory.createItem("refinedchaosshard");
RefinedChaosShard.maxStackSize = 64;
RefinedChaosShard.register();

var RefinedChaosCrystal = VanillaFactory.createItem("refinedchaoscrystal");
RefinedChaosCrystal.maxStackSize = 64;
RefinedChaosCrystal.register();
