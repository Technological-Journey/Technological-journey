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

<material:curium>.addFlags(["GENERATE_ORE"]);
<material:plutonium>.addFlags(["GENERATE_ORE"]);
<material:rutherfordium>.addFlags(["GENERATE_ORE"]);
<material:duranium>.addFlags(["GENERATE_ORE"]);
<material:tritanium>.addFlags(["GENERATE_ORE"]);
<material:naquadria>.addFlags(["GENERATE_ORE"]);
<material:iron>.addFlags(["GENERATE_SMALL_GEAR"]);
<material:cosmic_neutronium >.addFlags(["GENERATE_ROUND"]);
<material:neutronium>.addFlags(["GENERATE_ROUND"]);
<material:qcd_confined_matter>.addFlags(["GENERATE_GEAR"]);

<material:bohrium>.addFlags(["GENERATE_ORE"]);
<material:seaborgium>.addFlags(["GENERATE_ORE"]);
<material:fermium>.addFlags(["GENERATE_ORE"]);
<material:einsteinium>.addFlags(["GENERATE_ORE"]);
<material:americium>.addFlags(["GENERATE_ORE"]);
<material:berkelium>.addFlags(["GENERATE_ORE"]);
<material:rhodium>.addFlags(["GENERATE_ORE"]);
<material:ruthenium>.addFlags(["GENERATE_ORE"]);
<material:dubnium>.addFlags(["GENERATE_ORE"]);
//DISABLE_REPLICATION

<material:adamantium>.addFlags(["DISABLE_REPLICATION"]);
<material:vibranium>.addFlags(["DISABLE_REPLICATION"]);
<material:taranium>.addFlags(["DISABLE_REPLICATION"]);
<material:bohrium>.addFlags(["DISABLE_REPLICATION"]);

<material:metastable_oganesson>.addFlags(["DISABLE_REPLICATION"]);
<material:metastable_flerovium>.addFlags(["DISABLE_REPLICATION"]);
<material:metastable_hassium>.addFlags(["DISABLE_REPLICATION"]);
<material:trinium>.addFlags(["DISABLE_REPLICATION"]);


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
draconium.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE","GENERATE_ORE","GENERATE_ROD","GENERATE_FRAME","GENERATE_BOLT_SCREW"]);

val awaken_draconium = MaterialRegistry.createIngotMaterial(519, "awaken_draconium",  0xff571a, "shiny", 10, null, 40.0f, 6, 128000);
awaken_draconium.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE","GENERATE_ROD","GENERATE_FRAME","GENERATE_PLASMA","GENERATE_BOLT_SCREW"]);

val chaos = MaterialRegistry.createIngotMaterial(520, "chaos",  0x696969, "dull", 10, null, 50.0f, 6, 1280000);
chaos.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE","GENERATE_ROD","GENERATE_FRAME","GENERATE_PLASMA","GENERATE_FINE_WIRE","GENERATE_BOLT_SCREW"]);

//val dragonstem = MaterialRegistry.createFluidMaterial(521,  "dragonstem", 0xff0000, "FLUID", null);

val chaosalloy = MaterialRegistry.createIngotMaterial(521, "chaosalloy",  0x696969, "dull", 10, null, 60.0f, 6, 1280000);
chaosalloy.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE","GENERATE_PLASMA","GENERATE_FINE_WIRE","GENERATE_BOLT_SCREW"]);

//reuse ID for starmetal alloy
val starmetalalloy = MaterialRegistry.createIngotMaterial(524, "star_metal_alloy", 0x050A30, "shiny", 4,null,0,0,0,7000);

util.registerFluid("starlight_rocketfuel",0xdf362d,"(AxSx)?₂OC₆H₁₈");

starmetalalloy.addFlags(["GENERATE_PLATE","GENERATE_DENSE"]);
val aquamarine = MaterialRegistry.createGemMaterial(525,"aquamarine", 0x45b3e7 ,"ruby",4,[<material:beryllium> * 3, <material:aluminium> * 3, <material:silicon> * 6, <material:oxygen> * 18]);
aquamarine.addFlags(["GENERATE_ORE"]);

util.registerFluid("dragonstem",0xff0000);
util.registerFluid("rawchaos",0x000000);
util.registerFluid("pahoehoe_lava",0x964B00);

//wire properties for draconic
draconium.setCableProperties(2097152, 10, 0);
awaken_draconium.setCableProperties(8388608, 100, 0);
chaos.setCableProperties(33554432, 1000, 0);
chaosalloy.setCableProperties(536870912, 10000, 0);


val bright_steel = MaterialRegistry.createIngotMaterial(526, "bright_steel", 0xd3d3d3, "dull" , 4,[<material:steel> * 4 , <material:bismuth> * 2, <material:caesium> * 2, <material:europium> * 1]);
bright_steel.setCableProperties(8192, 3, 2);




//Starlight_Fuel
util.registerDust("starfuelcatalyst", 527, 0x130642, "SHINY");

//Explosive Hydrazine Mixture
util.registerFluid("explosivehydrazine", 0x3b0c5c, "(8((N₂H₄)(CH₄O))4(C₇H₇NO₂)(C₃H₅N₃O₉))");

//Stellar Alloy
util.registerFluid("stellaralloy", 0xffefb5, "(5(AxSx)Nq(Ir₃Os)4(Am)(??))");

//eternity preparation
util.registerDust("eternity_preparation", 529, 0x46008b, "SHINY");

//Starlight Complex
util.registerFluid("starlightcomplex", 0xe1faf7, "SxN₈");

//HMX
util.registerDust("hmxexplosive", 530, 0xf3ffdb, "SHINY");

//Octaazacubane
util.registerDust("octaazacubane", 531, 0x5f5fd9, "SHINY");

//Octaazacubane Solution
util.registerFluid("octaazacubanesolution", 0x5f5fd9, "N₈(H₂O)");

util.registerFluid("eternity", 0x46008b);

util.registerFluid("fusion1", 0x7B0EFF, "BhSg");
util.registerFluid("fusion2", 0xE9FA50, "RfDb");

val soularium = MaterialRegistry.createIngotMaterial(534, "soularium",  0x3b2a15, "dull", 10, null, 13.0f, 6, 512);soularium.addFlags(["GENERATE_PLATE","SMELT_INTO_FLUID","GENERATE_DENSE","GENERATE_ROD","GENERATE_FRAME","GENERATE_PLASMA","GENERATE_BOLT_SCREW"]);
