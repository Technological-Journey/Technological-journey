#loader gregtech
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
var materialList = MaterialRegistry.getAllMaterials();









<material:nether_star>.addFlags(["GENERATE_ORE"]);
<material:cryotheum>.addFlags(["GENERATE_ORE"]);
<material:pyrotheum>.addFlags(["GENERATE_ORE"]);
//<material:ender_pearl>.addFlags(["GENERATE_ORE"]);

val cosmicNeutronium = MaterialRegistry.createIngotMaterial(515, "cosmic_neutronium", 0x000000, "shiny", 4);
cosmicNeutronium.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE"]);
cosmicNeutronium.setCableProperties(536870912, 8, 0);
