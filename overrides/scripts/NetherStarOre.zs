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

//val cosmicNeutronium = MaterialRegistry.createIngotMaterial(515, "cosmic_neutronium", 0x000000, "shiny", 4);
//cosmicNeutronium.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE"]);
//cosmicNeutronium.setCableProperties(536870912, 8, 0);
val lvSuper = MaterialRegistry.createIngotMaterial(516, "lv_superconductor", 0xf8f8ff, "dull", 4);
val lvBase = MaterialRegistry.createIngotMaterial(517, "lv_superconductor_base", 0xffffff, "dull", 4);
lvBase.setCableProperties(32, 4, 6);
lvSuper.setCableProperties(32, 4, 0);

val boosted_octane_gasoline = MaterialRegistry.createFluidMaterial(524,  "boosted_octane_gasoline", 0x696969, "FLUID", null);
