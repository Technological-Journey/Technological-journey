#loader gregtech
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialCasting;
import mods.gregtech.material.Material;
import mods.gtadditions.recipe.Utils as util;
var materialList = MaterialRegistry.getAllMaterials();

<material:nether_star>.addFlags(["GENERATE_ORE"]);
//<material:glowstone>.addFlags(["GENERATE_ORE"]);
<material:cryotheum>.addFlags(["GENERATE_ORE"]);
<material:pyrotheum>.addFlags(["GENERATE_ORE"]);
<material:coke>.addFlags(["GENERATE_ORE"]);
<material:plutonium_radioactive>.addFlags(["GENERATE_ORE"]);
<material:neptunium>.addFlags(["GENERATE_ORE"]);
<material:rhodium_salt>.addFlags(["GENERATE_ORE"]);
<material:californium>.addFlags(["GENERATE_ORE"]);

/*
var MV = MaterialCasting.toIngot(<material:mv_superconductor>);
var HV = MaterialCasting.toIngot(<material:hv_superconductor>);
var EV = MaterialCasting.toIngot(<material:ev_superconductor>);
var IV = MaterialCasting.toIngot(<material:iv_superconductor>);
var LUV = MaterialCasting.toIngot(<material:luv_superconductor>);
var ZPM = MaterialCasting.toIngot(<material:zpm_superconductor>);
var UV = MaterialCasting.toIngot(<material:uv_superconductor>);
var UHV = MaterialCasting.toIngot(<material:uhv_superconductor>);
var UEV = MaterialCasting.toIngot(<material:uev_superconductor>);
var UIV = MaterialCasting.toIngot(<material:uiv_superconductor>);
var UMV = MaterialCasting.toIngot(<material:umv_superconductor>);
var UXV = MaterialCasting.toIngot(<material:uxv_superconductor>);
//val cosmicNeutronium = MaterialRegistry.createIngotMaterial(515, "cosmic_neutronium", 0x000000, "shiny", 4);
//cosmicNeutronium.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE"]);
//cosmicNeutronium.setCableProperties(128, 8, 0);
MV.setCableProperties(128, 8, 0);
HV.setCableProperties(512, 8, 0);
EV.setCableProperties(2048, 8, 0);
IV.setCableProperties(8192, 8, 0);
LUV.setCableProperties(32768, 8, 0);
ZPM.setCableProperties(131072, 8, 0);
UV.setCableProperties(524228, 8, 0);
UHV.setCableProperties(2097152, 8, 0);
UEV.setCableProperties(8388608, 8, 0);
UIV.setCableProperties(33554432, 8, 0);
UMV.setCableProperties(536870912, 8, 0);
UXV.setCableProperties(2147483648, 8, 0);
*/
val lvSuper = MaterialRegistry.createIngotMaterial(516, "lv_superconductor", 0xf8f8ff, "dull", 4);
val lvBase = MaterialRegistry.createIngotMaterial(517, "lv_superconductor_base", 0xffffff, "dull", 4);
lvBase.setCableProperties(32, 4, 6);
lvSuper.setCableProperties(32, 4, 0);

val draconium = MaterialRegistry.createIngotMaterial(518, "draconium", 0x573d85, "dull", 10, null, 30.0f, 6, 12800,9200);
draconium.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE","GENERATE_ORE","GENERATE_ROD","GENERATE_FRAME",]);

val awaken_draconium = MaterialRegistry.createIngotMaterial(519, "awaken_draconium",  0xff571a, "shiny", 10, null, 40.0f, 6, 128000);
awaken_draconium.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE","GENERATE_ROD","GENERATE_FRAME","GENERATE_PLASMA"]);

val chaos = MaterialRegistry.createIngotMaterial(520, "chaos",  0x696969, "dull", 10, null, 50.0f, 6, 1280000);
chaos.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE","GENERATE_ROD","GENERATE_FRAME","GENERATE_PLASMA","GENERATE_FINE_WIRE"]);

//val dragonstem = MaterialRegistry.createFluidMaterial(521,  "dragonstem", 0xff0000, "FLUID", null);

val chaosalloy = MaterialRegistry.createIngotMaterial(521, "chaosalloy",  0x696969, "dull", 10, null, 60.0f, 6, 1280000);
chaosalloy.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE","GENERATE_PLASMA","GENERATE_FINE_WIRE"]);

//val rawchaos = MaterialRegistry.createFluidMaterial(523,  "rawchaos", 0x000000, "FLUID", null);


//reuse ID for starmetal alloy
val starmetalalloy = MaterialRegistry.createIngotMaterial(524, "star_metal_alloy", 0x050A30, "shiny", 4,null,0,0,0,7000);
util.registerFluid("starlight_rocketfuel",0xdf362d,"(AxSx)?₂OC₆H₁₈");
starmetalalloy.addFlags(["GENERATE_PLATE"]);
val aquamarine = MaterialRegistry.createGemMaterial(525,"aquamarine", 0x45b3e7 ,"ruby",4,[<material:beryllium> * 3, <material:aluminium> * 3, <material:silicon> * 6, <material:oxygen> * 18]);
aquamarine.addFlags(["GENERATE_ORE"]);

util.registerFluid("dragonstem",0xff0000);

util.registerFluid("rawchaos",0x000000);

//wire properties for draconic
draconium.setCableProperties(524288, 10, 0);
awaken_draconium.setCableProperties(2097152, 100, 0);
chaos.setCableProperties(8388608, 1000, 0);
chaosalloy.setCableProperties(33554432, 10000, 0);
