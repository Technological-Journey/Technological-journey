#loader gregtech
import mods.gregtech.material.MaterialRegistry;

import mods.gregtech.material.Material;
var materialList = MaterialRegistry.getAllMaterials();

<material:nether_star>.addFlags(["GENERATE_ORE"]);
<material:cryotheum>.addFlags(["GENERATE_ORE"]);
<material:pyrotheum>.addFlags(["GENERATE_ORE"]);
//<material:ender_pearl>.addFlags(["GENERATE_ORE"]);

//val cosmicNeutronium = MaterialRegistry.createIngotMaterial(515, "cosmic_neutronium", 0x000000, "shiny", 4);
//cosmicNeutronium.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE"]);
//cosmicNeutronium.setCableProperties(536870912, 8, 0);
val lvSuper = MaterialRegistry.createIngotMaterial(516, "lv_superconductor", 0xf8f8ff, "dull", 4);
val lvBase = MaterialRegistry.createIngotMaterial(517, "lv_superconductor_base", 0xffffff, "dull", 4);
lvBase.setCableProperties(32, 4, 6);
lvSuper.setCableProperties(32, 4, 0);

val draconium = MaterialRegistry.createIngotMaterial(518, "draconium", 0x573d85, "dull", 10, null, 15.0f, 6, 12800);
draconium.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE"]);
val awaken_draconium = MaterialRegistry.createIngotMaterial(519, "awaken_draconium",  0xff571a, "shiny", 10, null, 20.0f, 6, 128000);

awaken_draconium.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE","GENERATE_METAL_CASING","GENERATE_PLASMA"]);
val chaos = MaterialRegistry.createIngotMaterial(520, "chaos",  0x000000, "dull", 10, null, 25.0f, 6, 1280000);
chaos.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE","GENERATE_METAL_CASING","GENERATE_PLASMA"]);

val dragonstem = MaterialRegistry.createFluidMaterial(521,  "dragonstem", 0xff0000, "FLUID", null);

val chaosalloy = MaterialRegistry.createIngotMaterial(522, "chaosalloy",  0x696969, "dull", 10, null, 100.0f, 6, 1280000);
chaosalloy.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE","GENERATE_PLASMA"]);
val rawchaos = MaterialRegistry.createFluidMaterial(523,  "rawchaos", 0x696969, "FLUID", null);
