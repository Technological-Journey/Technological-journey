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