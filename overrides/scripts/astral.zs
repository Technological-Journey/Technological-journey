import mods.astralsorcery.Altar as Altar;
import mods.astralsorcery.Grindstone as grinder;
import mods.astralsorcery.StarlightInfusion as StarInfusion;
import mods.astralsorcery.LightTransmutation as LightTransmutation;
import mods.astralsorcery.LiquidInteraction as Interaction;
import mods.astralsorcery.Utils as util;
import mods.astralsorcery.Lightwell as well;
import mods.chisel.Carving;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.commonNames;
import mods.gtadditions.recipe.Utils as GAutil;

mods.chisel.Carving.removeVariation("marble", <astralsorcery:blockmarble:6>);

/*
EX for ALTER
removeAltarRecipe(String recipeRegistryName)
addDiscoveryAltarRecipe(String recipeRegistryName, IItemStack output, int starlightRequired, int craftingTickTime, IIngredient[] inputs) # of items 9
addAttunementAltarRecipe(String recipeRegistryName, IItemStack output, int starlightRequired, int craftingTickTime, IIngredient[] inputs) # 13
addConstellationAltarRecipe(String recipeRegistryName, IItemStack output, int starlightRequired, int craftingTickTime, IIngredient[] inputs) # 21
addTraitAltarRecipe(String recipeRegistryName, IItemStack output, int starlightRequired, int craftingTickTime, IIngredient[] inputs, @Nullable String iRequiredConstellationFocusName) #25

FOR GrindStone
removeRecipe(IItemStack output)
addRecipe(IOreDictEntry oreDict, IItemStack output, float doubleChance)

FOR Infusion
removeInfusion(IItemStack output)
addInfusion(IItemStack input, IItemStack output, boolean consumeMultiple, float consumptionChance, int craftingTickTime)

FOR lightTransmutations
removeTransmutation(IItemStack stackToRemove, boolean matchMeta)
addTransmutation(IItemStack stackIn, IItemStack stackOut, double cost, String requiredConstellation)
addTransmutation(IItemStack stackIn, IItemStack stackOut, double cost)

FOR Starlight interactions
removeInteraction(ILiquidStack liquid1, ILiquidStack liquid2, IItemStack output)
addInteraction(ILiquidStack liquidIn1, float chanceConsumption1, ILiquidStack liquidIn2, float chanceConsumption2, int weight, IItemStack output)

FOR untils
getCrystalORIngredient(boolean hasToBeCelestial, boolean hasToBeAttuned)

FOR LightWell
removeLiquefaction(IItemStack input, ILiquidStack output)
addLiquefaction(IItemStack input, ILiquidStack output, float productionMultiplier, float shatterMultiplier, int colorhex)
*/

//LightTransmutation.removeTransmutation()

//Infusion
StarInfusion.removeInfusion(<minecraft:iron_ingot> * 3);
StarInfusion.removeInfusion(<minecraft:gold_ingot> * 3);
StarInfusion.removeInfusion(<minecraft:emerald> * 4);
StarInfusion.removeInfusion(<minecraft:diamond>* 4);
StarInfusion.removeInfusion(<minecraft:lapis_block>);
StarInfusion.removeInfusion(<minecraft:redstone_block>);
StarInfusion.removeInfusion(<astralsorcery:itemcraftingcomponent:4>);
StarInfusion.removeInfusion(<astralsorcery:itemcraftingcomponent:3>);
StarInfusion.addInfusion(<gregtech:meta_item_1:15331>, <astralsorcery:itemcraftingcomponent:3>, false,  0.8f, 80);
//Transmutation
LightTransmutation.removeTransmutation(<minecraft:end_stone>,false);
LightTransmutation.removeTransmutation(<minecraft:emerald_ore>,false);
LightTransmutation.removeTransmutation(<minecraft:glass_pane>,false);
LightTransmutation.addTransmutation(<gregtech:ore_magnetite_0>,  <astralsorcery:blockcustomore:1>, 100);
LightTransmutation.addTransmutation(<gregtech:ore_vanadium_magnetite_0>,  <astralsorcery:blockcustomore:1>, 100);
LightTransmutation.addTransmutation(<gregtech:ore_iron_0>,  <astralsorcery:blockcustomore:1>, 100);
/*
var GrindRemove = [<thermalfoundation:material:1>,<thermalfoundation:material>,<actuallyadditions:item_dust:4>,<actuallyadditions:item_dust:2>,<minecraft:redstone>,<actuallyadditions:item_dust:3>,<appliedenergistics2:material:3>,<thermalfoundation:material:768>,<thermalfoundation:material:64>,<thermalfoundation:material:65>,<thermalfoundation:material:66>,<thermalfoundation:material:67>,<thermalfoundation:material:68>,<thermalfoundation:material:69>,<thermalfoundation:material:70>,<thermalfoundation:material:72>,<actuallyadditions:item_dust:7>,<thermalfoundation:material:71>,<appliedenergistics2:material:2>,<libvulpes:productdust:7>,<thermalfoundation:material:772>] as IItemStack[];
for i in GrindRemove{
grinder.removeRecipe(i);
}
grinder.addRecipe( , , 85);
grinder.addRecipe(<ore:oreGold>, <gregtech:meta_item_1:2026>, 0.50f);
grinder.addRecipe(<ore:oreLapis>,<gregtech:meta_item_1:2216> * 6, 0.50f);
grinder.addRecipe(<ore:oreDiamond>, <gregtech:meta_item_1:2111>, 0.50f);
grinder.addRecipe(<ore:oreRedstone> ,<minecraft:redstone> * 6, 0.50f);
grinder.addRecipe(<ore:oreEmerald>,<gregtech:meta_item_1:2113>, 0.50f);
grinder.addRecipe(<ore:oreSilver>, <gregtech:meta_item_1:2062>, 0.50f);
grinder.addRecipe(<ore:oreLead>, <gregtech:meta_item_1:2035>, 0.50f);
grinder.addRecipe(<ore:oreNickel>, <gregtech:meta_item_1:2044>, 0.50f);
grinder.addRecipe(<gregtech:ore_certus_quartz_0:1>, <gregtech:meta_item_1:2202> * 2, 0.50f);
grinder.addRecipe(<ore:oreSaltpeter>, <gregtech:meta_item_1:2156> * 4, 0.50f);
*/
grinder.addRecipe(<ore:oreNetherQuartz>, <gregtech:meta_item_1:2201> * 2, 0.50f);
grinder.addRecipe(<ore:oreCoal>, <gregtech:meta_item_1:2106>, 0.50f);
grinder.addRecipe(<ore:oreCopper>,<gregtech:meta_item_1:2018>, 0.50f);
grinder.addRecipe(<ore:oreTin>, <gregtech:meta_item_1:2071>, 0.50f);
grinder.addRecipe(<ore:oreIron>,<gregtech:meta_item_1:2033>, 0.50f);
grinder.addRecipe(<ore:ingotCopper>, <gregtech:meta_item_1:2018>, 0.0f);
grinder.addRecipe(<ore:ingotTin>, <gregtech:meta_item_1:2071>, 0.0f);
grinder.addRecipe(<ore:ingotIron>,<gregtech:meta_item_1:2033>, 0.0f);
grinder.addRecipe(<ore:ingotNickel>, <gregtech:meta_item_1:2044>, 0.0f);

//ALTER removals
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/grindstone");
Altar.removeAltarRecipe("astralsorcery:shaped/block_starmetal");
Altar.removeAltarRecipe("astralsorcery:shaped/ingot_starmetal");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_runed");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/treebeacon");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/lightwell");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/glasslens");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/chalice");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier4");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminator");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_linking");
val rock_crystal = util.getCrystalORIngredient(false, false);

Altar.addDiscoveryAltarRecipe("technological_journey/internal/upgrade_tier2", <astralsorcery:blockaltar:1>, 200, 300,[<ore:stoneMarble>,rock_crystal,<ore:stoneMarble>,<astralsorcery:blockmarble:6>,<gtadditions:ga_meta_item:1235>,<astralsorcery:blockmarble:6>,<ore:stoneMarble>,<gtadditions:ga_meta_item:1235>,<ore:stoneMarble>]);
Altar.addDiscoveryAltarRecipe("technological_journey/internal/glasslens", <astralsorcery:itemcraftingcomponent:3>, 5, 300,[null,<gregtech:meta_item_1:15331>,null,<gregtech:meta_item_1:15331>,<ore:gemAquamarine>,<gregtech:meta_item_1:15331>,null,<gregtech:meta_item_1:15331>,null]);
Altar.addDiscoveryAltarRecipe("technological_journey/internal/illuminator", <astralsorcery:blockworldilluminator>, 200, 300,[<astralsorcery:itemusabledust>,<ore:gemAquamarine>,<astralsorcery:itemusabledust>,<ore:gemAquamarine>,null,<ore:gemAquamarine>,<astralsorcery:itemusabledust>,<ore:gemAquamarine>,<astralsorcery:itemusabledust>]);
Altar.addDiscoveryAltarRecipe("technological_journey/internal/lightwell", <astralsorcery:blockwell>, 700, 300, [<astralsorcery:blockmarble:6>, <astralsorcery:itemcraftingcomponent> ,<astralsorcery:blockmarble:6>,<gregtech:meta_item_1:13883>,<gtadditions:ga_transparent_casing:4>,<gregtech:meta_item_1:13883>,<astralsorcery:blockmarble:6>,<gregtech:meta_item_1:13047>,<astralsorcery:blockmarble:6>]);
Altar.addDiscoveryAltarRecipe("technological_journey/internal/tool_linking", <astralsorcery:itemlinkingtool>, 5,  300, [<minecraft:stick>,<ore:gemAquamarine>,rock_crystal,<minecraft:stick>,<ore:logWood>,<ore:gemAquamarine>,<ore:logWood>,<minecraft:stick>,<minecraft:stick>]); # of items 9

Altar.addAttunementAltarRecipe("technological_journey/internal/upgrade_tier3", <astralsorcery:blockaltar:2>, 500, 300,[<astralsorcery:itemcraftingcomponent:4>,null,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:blockmarble:6>,util.getCrystalORIngredient(true, false),<astralsorcery:blockmarble:6>,<gtadditions:ga_meta_item:1859>,<astralsorcery:itemcraftingcomponent:1>,<gtadditions:ga_meta_item:1859>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>]);
Altar.addConstellationAltarRecipe("technological_journey/internal/chalice", <astralsorcery:blockchalice> , 450 ,300 , [<gtadditions:ga_transparent_casing:4>,<gregtech:machine:2200>,<gtadditions:ga_transparent_casing:4>,<gtadditions:ga_transparent_casing:4>,null,<gtadditions:ga_transparent_casing:4>,<gtadditions:ga_meta_item:1859>,<gtadditions:ga_meta_item:1859>,<gtadditions:ga_meta_item:1859>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<ore:gemAquamarine>,<ore:gemAquamarine>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:2>,<astralsorcery:itemcraftingcomponent:1>,<astralsorcery:itemcraftingcomponent:1>]); # 21
Altar.addConstellationAltarRecipe("technological_journey/internal/upgrade_tier4", <astralsorcery:blockaltar:3>,  800, 400, [<astralsorcery:blockmarble:6>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockmarble:6>,<gregtech:meta_item_1:12524>,util.getCrystalORIngredient(true, false),<gregtech:meta_item_1:12524>,<astralsorcery:blockmarble:6>,<astralsorcery:itemcraftingcomponent:3>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockmarble:6>,<astralsorcery:blockblackmarble>,<astralsorcery:blockblackmarble>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:itemcraftingcomponent:4>,<astralsorcery:blockblackmarble>,<astralsorcery:blockblackmarble>]);
 // Slot order for tier 3 altar immediately after 9X9 /* Top left*/,/* Top right*//*Bottom left*/,/* Bottom right*/,/* Top right middle*/,/* Top Left middle*/,/* Top Right middle*/,/*Left of slot one in 9x9*/,/* Right of slot 3 in 9x9*/,/* left of slot 7 in 9x9*/,/* right of slot 9 in 9x9*/, /* Bottom left middle*/,/* Bottom right middle*/
recipes.remove(<astralsorcery:blockmarble:6>);
recipes.addShaped(<astralsorcery:blockmachine:1>, [[null, <gregtech:meta_item_1:2033>, null],[<ore:plankWood>, <minecraft:stone>, <minecraft:stick>], [<ore:plankWood>, <ore:plankWood>, <contenttweaker:steammotor>]]);

//runed marble
<ore:stoneMarble>.remove(<astralsorcery:blockmarble:6>);
recipes.addShaped(<astralsorcery:blockmarble:6> * 4, [[<gregtech:meta_item_1:19074>, <ore:stoneMarble>, <gregtech:meta_item_1:19074>],[<ore:stoneMarble>, <gregtech:meta_item_2:16051>, <ore:stoneMarble>], [<ore:foilTungsten>, <ore:stoneMarble>, <gregtech:meta_item_1:19074>]]);
furnace.remove(<astralsorcery:itemcraftingcomponent:1>);
furnace.addRecipe(<astralsorcery:itemcraftingcomponent:2>, <astralsorcery:blockcustomore:1>, 0.0);
//StarMetal
blast_furnace.recipeBuilder()
    .inputs(<astralsorcery:itemcraftingcomponent:2>)
    .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 6000)
    .outputs(<astralsorcery:itemcraftingcomponent:1>)
    .property("temperature", 7000)
    .circuit(0)
    //.fluidOutputs(<liquid:steam> * 6000)
    .duration(1000)
    .EUt(6000)
    .buildAndRegister();
//resonating gem
blast_furnace.recipeBuilder()
    .inputs(<ore:gemAquamarine>)
    .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 6000)
    .outputs(<astralsorcery:itemcraftingcomponent:4>)
    .property("temperature", 7000)
    //.fluidOutputs(<liquid:steam> * 6000)
    .duration(1000)
    .EUt(6000)
    .buildAndRegister();

//Illumination power
mixer.recipeBuilder()
.inputs([<minecraft:glowstone_dust> * 4, <ore:gemAquamarine>])
.circuit(1)
.outputs([<astralsorcery:itemusabledust> * 16])
.duration(30)
.EUt(800)
.buildAndRegister();
//Nocturnal powder
mixer.recipeBuilder()
.inputs([<astralsorcery:itemusabledust>, <minecraft:dye:4>, <gregtech:meta_item_1:2012> * 3])
.circuit(1)
.outputs([<astralsorcery:itemusabledust:1>* 4])
.duration(30)
.EUt(1150)
.buildAndRegister();

//Illumination power
largeMix.recipeBuilder()
.inputs([<minecraft:glowstone_dust> * 4, <ore:gemAquamarine>])
.circuit(1)
.outputs([<astralsorcery:itemusabledust> * 16])
.duration(30)
.EUt(800)
.buildAndRegister();
//Nocturnal powder
largeMix.recipeBuilder()
.inputs([<astralsorcery:itemusabledust>, <minecraft:dye:4>, <gregtech:meta_item_1:2012> * 3])
.circuit(1)
.outputs([<astralsorcery:itemusabledust:1>* 4])
.duration(30)
.EUt(1150)
.buildAndRegister();

//starMetal ore to dust
macerator.recipeBuilder()
.inputs([<astralsorcery:blockcustomore:1>])
.outputs([<astralsorcery:itemcraftingcomponent:2> * 2])
.duration(20)
.EUt(12)
.buildAndRegister();

//tooltips addTooltip(); format."color()"
<liquid:astralsorcery.liquidstarlight>.addTooltip("Sx");
<astralsorcery:itemcraftingcomponent:2>.addTooltip("Ax");
<astralsorcery:itemcraftingcomponent:1>.addTooltip("(AxSx)");
<astralsorcery:blockcustomore:1>.addTooltip("Ax");
<astraladditions:block_starmetal>.addTooltip("(AxSx)");
<astralsorcery:itemcraftingcomponent>.addTooltip("Be₃Al₃Si₆O₁₈");
<astralsorcery:itemcraftingcomponent:4>.addTooltip("Be₃Al₃Si₆O₁₈Sx");
util.getCrystalORIngredient(false, false).addTooltip("(SiO₂)﹖");



//treebeacon
recipes.addShaped(<astralsorcery:blocktreebeacon>, [[<ore:circuitBasic>, <ore:treeSapling>, <ore:circuitBasic>],[<gregtech:meta_item_1:12184>, <ore:circuitBasic>, <gregtech:meta_item_1:12184>], [<gtadditions:ga_meta_item:1184>, <gregtech:meta_item_1:12184>, <gtadditions:ga_meta_item:1184>]]);
//Lightwell
well.removeLiquefaction(<astralsorcery:itemcraftingcomponent:4>,<liquid:water>);
well.removeLiquefaction(<minecraft:packed_ice>,<liquid:water>);
well.removeLiquefaction(<minecraft:ice>,<liquid:water>);
well.removeLiquefaction(<minecraft:snow>,<liquid:water>);
well.removeLiquefaction(<minecraft:netherrack>,<liquid:lava>);
well.removeLiquefaction(<minecraft:magma>,<liquid:lava>);
//well.removeLiquefaction(<astralsorcery:itemcraftingcomponent:4>,<liquid:astralsorcery.liquidstarlight>);
//well.removeLiquefaction(<astralsorcery:itemcraftingcomponent>,<liquid:astralsorcery.liquidstarlight>);
well.addLiquefaction(<randomthings:ingredient:2>,<liquid:astralsorcery.liquidstarlight>, 20, 1000, 0xFFFFFF);

//fix mineralis ritual
<ore:oreCopper>.remove(<libvulpes:ore0:4>);
<ore:oreTin>.remove(<libvulpes:ore0:5>);
<ore:oreRutile>.remove(<libvulpes:ore0:8>);
<ore:oreTitanium>.remove(<libvulpes:ore0:8>);
<ore:oreAluminum>.remove(<libvulpes:ore0:9>);
<ore:oreIridium>.remove(<libvulpes:ore0:10>);
//Aquamerine decomp

<beneath:teleporterbeneath>.displayName = "Deep Dark Portal";
recipes.addShaped(<beneath:teleporterbeneath>, [[<gtadditions:ga_meta_item:1047>, <gtadditions:ga_meta_item:1047>, <gtadditions:ga_meta_item:1032>],[<gtadditions:ga_meta_item:1047>, <astraladditions:block_starmetal>, <gtadditions:ga_meta_item:1032>], [<gtadditions:ga_meta_item:1047>, <gtadditions:ga_meta_item:1032>, <gtadditions:ga_meta_item:1032>]]);
blast_furnace.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10308>,<astralsorcery:itemcraftingcomponent:1>)
    .outputs(<gregtech:meta_item_1:11524> *2)
    .property("temperature", 7600)
    .duration(1000)
    .EUt(30720)
.buildAndRegister();



<gregtech:meta_item_1:524>.addTooltip("(AxSx)Nq(Ir₃Os)");
<gregtech:meta_item_1:1524>.addTooltip("(AxSx)Nq(Ir₃Os)");
<gregtech:meta_item_1:2524>.addTooltip("(AxSx)Nq(Ir₃Os)");
<gregtech:meta_item_1:9524>.addTooltip("(AxSx)Nq(Ir₃Os)");
<gregtech:meta_item_1:10524>.addTooltip("(AxSx)Nq(Ir₃Os)");
<gregtech:meta_item_1:11524>.addTooltip("(AxSx)Nq(Ir₃Os)");
<gregtech:meta_item_1:12524>.addTooltip("(AxSx)Nq(Ir₃Os)");
<gregtech:meta_block_compressed_32:12>.addTooltip("(AxSx)Nq(Ir₃Os)");
<liquid:star_metal_alloy>.addTooltip("(AxSx)Nq(Ir₃Os)");

mixer.recipeBuilder()
    .inputs(<astralsorcery:itemcraftingcomponent:2> *2)
    .inputs(<gregtech:meta_item_1:2307> * 3)
    .inputs(<gregtech:meta_item_1:2052>)
    .fluidInputs(<liquid:clear_naquadah_liquid> * 1000)
    .outputs(<gtadditions:ga_dust:527> *6)
    .duration(600)
    .EUt(8096)
.buildAndRegister();

largeMix.recipeBuilder()
    .inputs(<astralsorcery:itemcraftingcomponent:2> *2)
    .inputs(<gregtech:meta_item_1:2307> * 3)
    .inputs(<gregtech:meta_item_1:2052>)
    .fluidInputs(<liquid:clear_naquadah_liquid> * 1000)
    .outputs(<gtadditions:ga_dust:527> *6)
    .duration(600)
    .EUt(8096)
.buildAndRegister();


//Explosive Hydrazine

largeMix.recipeBuilder()
    .fluidInputs(<liquid:dense_hydrazine_fuel_mixture> *8000, <liquid:nitrotoluene> *4000, <liquid:glyceryl> * 1000)
    .fluidOutputs(<liquid:explosivehydrazine> * 13000)
    .duration(100)
    .EUt(1024)
.buildAndRegister();

//HMX

chemreactor.recipeBuilder()
    .fluidInputs(<liquid:fuming_nitric_acid>*2000)
    .inputs(<ore:dustHexamethylenetetramine>*4)
    .notConsumable(<liquid:acetic_anhydride>)
    .outputs(<gtadditions:ga_dust:530>)
    .duration(20)
    .EUt(1024)
.buildAndRegister();

// Octaazacubane Solution

chemreactor.recipeBuilder()
    .fluidInputs(<liquid:oxygen> * 2000)
    .inputs(<gtadditions:ga_dust:144> * 8)
    .fluidOutputs(<liquid:octaazacubanesolution> * 3000)
    .outputs(<gtadditions:ga_dust:356> * 4)
    .duration(5)
    .EUt(30000)
    .buildAndRegister();

large_chem.recipeBuilder()
    .fluidInputs(<liquid:oxygen> * 2000, <liquid:distilled_water> * 3000)
    .inputs(<gtadditions:ga_dust:144> * 8)
    .fluidOutputs(<liquid:octaazacubanesolution> * 3000)
    .outputs(<gtadditions:ga_dust:356> * 4)
    .duration(5)
    .EUt(30000)
    .buildAndRegister();

// Octaazacubane

chemdehydrator.recipeBuilder()
    .fluidInputs(<liquid:octaazacubanesolution> * 1000)
    .outputs(<gtadditions:ga_dust:531>)
    .duration(35)
    .EUt(4500)
    .buildAndRegister();


// Starlight Complex

mixer.recipeBuilder()
    .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 1000)
    .inputs(<gtadditions:ga_dust:531>)
    .fluidOutputs(<liquid:starlightcomplex> *2000)
    .duration(35)
    .EUt(2000)
.buildAndRegister();

largeMix.recipeBuilder()
    .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 1000)
    .fluidOutputs(<liquid:starlightcomplex> *2000)
    .duration(35)
    .EUt(2000)
.buildAndRegister();

// Starlight Rocket Fuel

large_chem.recipeBuilder()
    .fluidInputs(<liquid:explosivehydrazine> *32000, <liquid:starlightcomplex> *6000,<liquid:rocket_fuel_b> * 2000, <liquid:kerosene> * 4000, <liquid:dinitrogen_tetroxide>  * 6000)
    .inputs(<ore:dustHmxexplosive>*4)
    .notConsumable(<ore:dustStarfuelcatalyst>)
    .fluidOutputs(<liquid:starlight_rocketfuel> * 50000)
    .duration(20)
    .EUt(30000)
.buildAndRegister();

//ZPM Direct Starmetal
chemical_bath.recipeBuilder()
    .inputs(<ore:dustIron>)
    .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 1000)
    .notConsumable(<ore:dustStarfuelcatalyst>)
    .outputs(<astralsorcery:itemcraftingcomponent:2>)
    .duration(240)
    .EUt(100000)
.buildAndRegister();
GAutil.removeRecipeByOutput(assembler, [<gregtech:machine_casing:7>], [], false);
recipes.remove(<gregtech:machine_casing:7>);
recipes.addShaped(<gregtech:machine_casing:7>, [[<gregtech:meta_item_1:12524>, <gregtech:meta_item_1:12524>, <gregtech:meta_item_1:12524>],[<gregtech:meta_item_1:12524>, <ore:GTWrench>, <gregtech:meta_item_1:12524>], [<gregtech:meta_item_1:12524>, <gregtech:meta_item_1:12524>, <gregtech:meta_item_1:12524>]]);
recipes.remove(<gregtech:machine:507>);
recipes.addShaped(<gregtech:machine:507>, [[null, null, null],[<gregtech:meta_item_1:12840>, <gregtech:meta_item_1:12524>, <gregtech:meta_item_1:12840>], [<gregtech:cable:5307>, <gregtech:machine_casing:7>, <gregtech:cable:5307>]]);

assembler.recipeBuilder()
.inputs(<gregtech:meta_item_1:12524> * 8)
.circuit(8)
.outputs(<gregtech:machine_casing:7>)
.duration(40)
.EUt(1024)
.buildAndRegister();

/*
electrolyzer.recipeBuilder()
.fluidInputs(<liquid:astralsorcery.liquidstarlight> *6000)
.outputs(<gregtech:meta_item_1:2061> * 6)
.duration(2160)
.EUt(60)
.buildAndRegister();
*/

large_chem.recipeBuilder()
    .inputs(rock_crystal,<astralsorcery:itemcraftingcomponent:2>)
    .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 1000)
    .outputs(<astralsorcery:blockcelestialcrystals:4>)
    .circuit(1)
    //.property("temperature", 5000)
    .duration(500)
    .EUt(30000)
.buildAndRegister();




//LV Super
assembler.recipeBuilder()
.inputs(<gregtech:cable:517> * 9,<gregtech:fluid_pipe:184>,<gregtech:meta_item_1:32610>)
.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 3000)
.outputs(<gregtech:cable:516> * 9)
.duration(120)
.EUt(32)
.buildAndRegister();
//MV Super
assembler.recipeBuilder()
.inputs(<gregtech:cable:976> * 9,<gregtech:fluid_pipe:183>,<gregtech:meta_item_1:32611>)
.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 3000)
.outputs(<gregtech:cable:970>* 9)
.duration(120)
.EUt(128)
.buildAndRegister();
//HV super
assembler.recipeBuilder()
.inputs(<gregtech:cable:975> * 9,<gregtech:fluid_pipe:72>,<gregtech:meta_item_1:32612>)
.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 3000)
.outputs(<gregtech:cable:969>* 9)
.duration(120)
.EUt(512)
.buildAndRegister();
//EV super
assembler.recipeBuilder()
.inputs(<gregtech:cable:974> * 18,<gregtech:fluid_pipe:235> * 6,<gregtech:meta_item_1:32613> * 2)
.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 3000)
.outputs(<gregtech:cable:968> * 18)
.duration(120)
.EUt(2048)
.buildAndRegister();
//IV super
assembler.recipeBuilder()
.inputs(<gregtech:cable:973> * 12,<gregtech:fluid_pipe:135>* 4,<gregtech:meta_item_1:32614>)
.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 4000)
.outputs(<gregtech:cable:967> * 12)
.duration(120)
.EUt(8192)
.buildAndRegister();
//LUV super
assembler.recipeBuilder()
.inputs(<gregtech:cable:972> * 16,<gregtech:fluid_pipe:963> *5,<gregtech:meta_item_1:32615>)
.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 4000)
.outputs(<gregtech:cable:966> * 16)
.duration(120)
.EUt(4194304)
.buildAndRegister();
//ZPM super
assembler.recipeBuilder()
.inputs(<gregtech:cable:971> * 32,<gregtech:fluid_pipe:307> *6,<gregtech:meta_item_1:32616>)
.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 8000)
.outputs(<gregtech:cable:964> * 32)
.duration(120)
.EUt(4194304)
.buildAndRegister();
//UV super
assembler.recipeBuilder()
.inputs(<gregtech:cable:745> * 64,<gregtech:fluid_pipe:192> *7,<gregtech:meta_item_1:32616>)
.fluidInputs(<liquid:astralsorcery.liquidstarlight> * 10000)
.outputs(<gregtech:cable:744> * 64)
.duration(120)
.EUt(4194304)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<astralsorcery:itemcraftingcomponent:1>])
.outputs([<astralsorcery:itemcraftingcomponent:2>])
.duration(30)
.EUt(128)
.buildAndRegister();

// End Crystal

assembler.recipeBuilder()
    .fluidInputs(<liquid:woods_glass> * 144)
    .inputs(<gregtech:meta_item_1:32725> * 1, <gtadditions:ga_meta_item:32437> * 4, <gtadditions:ga_meta_item:32430> * 1)
    .notConsumable(<gtadditions:ga_meta_item:32591>)
    .outputs(<minecraft:end_crystal>)
    .duration(40)
    .EUt(122880)
    .buildAndRegister();
