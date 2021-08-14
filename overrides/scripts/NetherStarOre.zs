#loader gregtech
import mods.gregtech.material.MaterialRegistry;

import mods.gregtech.material.Material;
var materialList = MaterialRegistry.getAllMaterials();

<material:nether_star>.addFlags(["GENERATE_ORE"]);
<material:cryotheum>.addFlags(["GENERATE_ORE"]);
<material:pyrotheum>.addFlags(["GENERATE_ORE"]);
<material:plutonium_radioactive>.addFlags(["GENERATE_ORE"]);
<material:neptunium>.addFlags(["GENERATE_ORE"]);
<material:rhodium_salt>.addFlags(["GENERATE_ORE"]);
<material:californium>.addFlags(["GENERATE_ORE"]);

//val cosmicNeutronium = MaterialRegistry.createIngotMaterial(515, "cosmic_neutronium", 0x000000, "shiny", 4);
//cosmicNeutronium.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE"]);
//cosmicNeutronium.setCableProperties(536870912, 8, 0);
val lvSuper = MaterialRegistry.createIngotMaterial(516, "lv_superconductor", 0xf8f8ff, "dull", 4);
val lvBase = MaterialRegistry.createIngotMaterial(517, "lv_superconductor_base", 0xffffff, "dull", 4);
lvBase.setCableProperties(32, 4, 6);
lvSuper.setCableProperties(32, 4, 0);

val starmetalalloy = MaterialRegistry.createIngotMaterial(524, "star_metal_alloy", 0x050A30, "shiny", 4,null,0,0,0,7000);
util.registerFluid("magically_boosted_high_octane_rocketfuel",0xdf362d,"C₆H₁₈?");
starmetalalloy.addFlags(["GENERATE_PLATE"]);
