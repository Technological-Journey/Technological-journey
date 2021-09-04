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

val lvSuper = MaterialRegistry.createIngotMaterial(516, "lv_superconductor", 0xf8f8ff, "dull", 4);
val lvBase = MaterialRegistry.createIngotMaterial(517, "lv_superconductor_base", 0xffffff, "dull", 4);
lvBase.setCableProperties(32, 4, 6);
lvSuper.setCableProperties(32, 4, 0);
//reuse ID for starmetal alloy
val starmetalalloy = MaterialRegistry.createIngotMaterial(524, "star_metal_alloy", 0x050A30, "shiny", 4,null,0,0,0,7000);
util.registerFluid("starlight_rocketfuel",0xdf362d,"(AxSx)?₂OC₆H₁₈");
starmetalalloy.addFlags(["GENERATE_PLATE"]);
val aquamarine = MaterialRegistry.createGemMaterial(525,"aquamarine", 0x45b3e7 ,"ruby",4,[<material:beryllium> * 3, <material:aluminium> * 3, <material:silicon> * 6, <material:oxygen> * 18]);
aquamarine.addFlags(["GENERATE_ORE"]);
