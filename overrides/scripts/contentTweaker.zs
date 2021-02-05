#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;



var SteamPiston = VanillaFactory.createItem("SteamPiston");
SteamPiston.maxStackSize = 64;
SteamPiston.register();

var SteamMotor = VanillaFactory.createItem("SteamMotor");
SteamMotor.maxStackSize = 64;
SteamMotor.register();

var certificate_of_being_a_noob = VanillaFactory.createItem("certificate_of_being_a_noob");
certificate_of_being_a_noob.maxStackSize = 1;
certificate_of_being_a_noob.register();

var awakenedcasing = VanillaFactory.createBlock("awakenedcasing", <blockmaterial:iron>);
awakenedcasing.register();

var chaoticcasing = VanillaFactory.createBlock("chaoticcasing", <blockmaterial:iron>);
chaoticcasing.register();