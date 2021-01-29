import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import scripts.commonNames;
import mods.gregtech.recipe.PBFRecipeBuilder;
import mods.gtadditions.recipe.Utils;
import mods.enderio.Vat as vat;
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gregtech.recipe.RecipeMaps;
//import mods.gtadditions.recipe.GARecipeMaps.ADV_FUSION_RECIPES;


// gt coal dust 
macerator.recipeBuilder()
.inputs([<ore:coal>])
.outputs([<gregtech:meta_item_1:2106>])
.duration(160)
.EUt(32)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<ore:ingotIron>])
.outputs([<gregtech:meta_item_1:2033>])
.duration(160)
.EUt(32)
.buildAndRegister();

mixer.recipeBuilder()
.inputs([<minecraft:redstone> *64])
.fluidInputs(<liquid:lava> * 9000)
.outputs([<fluxnetworks:flux> * 64])
.duration(240)
.EUt(33554432)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<minecraft:ender_pearl>])
.outputs([<gregtech:meta_item_1:2218>])
.duration(160)
.EUt(32)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<minecraft:quartz>])
.outputs([<gregtech:meta_item_1:2201>])
.duration(160)
.EUt(32)
.buildAndRegister();

macerator.findRecipe(240, [<minecraft:coal>], null).remove();
macerator.findRecipe(240, [<gregtech:meta_item_1:8202>], null).remove();
macerator.findRecipe(240, [<minecraft:iron_ingot>], null).remove();
macerator.findRecipe(240, [<minecraft:gold_ingot>], null).remove();
macerator.findRecipe(240, [<minecraft:ender_pearl>], null).remove();
//alloy.findRecipe(5120, [<minecraft:redstone>,<gregtech:meta_item_2:32440>], null).remove();

macerator.recipeBuilder()
.inputs([<gregtech:meta_item_1:8202>])
.outputs([<gregtech:meta_item_1:2202>])
.duration(160)
.EUt(32)
.buildAndRegister();
macerator.recipeBuilder()
.inputs([<minecraft:obsidian>])
.outputs([<gregtech:meta_item_1:2138>])
.duration(160)
.EUt(32)
.buildAndRegister();
macerator.recipeBuilder()
.inputs([<minecraft:gold_ingot>])
.outputs([<gregtech:meta_item_1:2026>])
.duration(160)
.EUt(32)
.buildAndRegister();



compressor.recipeBuilder()
.inputs([<gregtech:meta_item_1:32627> * 4])
.outputs([<gregtech:meta_item_1:12152>])
.EUt(16)
.buildAndRegister();
/*
chemreactor.recipeBuilder()
.inputs([<extrautils2:compressedsand:1>])
.fluidInputs(<liquid:lava> * 1000)
.outputs([<minecraft:end_stone>])
.duration(160)
.EUt(32)
.buildAndRegister();*/

brewer.recipeBuilder()
.inputs([<gregtech:meta_item_2:32570>])
.fluidInputs(<liquid:water> * 180)
.fluidOutputs(<liquid:biomass> * 270)
.duration(1440)
.EUt(3)
.buildAndRegister();
/*
distillery.recipeBuilder()
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.fluidInputs(<liquid:biomass> * 1000)
.fluidOutputs(<liquid: ethanol> * 700)
.duration(160)
.EUt(32)
.buildAndRegister();
*/
chemreactor.recipeBuilder()
.inputs([<gregtech:meta_item_1:373>])
.fluidInputs( <liquid: creosote> * 6000, <liquid: ethanol> * 1000)
.fluidOutputs(<liquid: bio_diesel> * 6000, <liquid: glycerol> * 1000)
.duration(600)
.EUt(32)
.buildAndRegister();

chemreactor.recipeBuilder()
.inputs([<gregtech:meta_item_1:373>])
.fluidInputs( <liquid: creosote> * 6000, <liquid: methanol> * 1000)
.fluidOutputs(<liquid: bio_diesel> * 6000, <liquid: glycerol> * 1000)
.duration(600)
.EUt(32)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<appliedenergistics2:part:16>, <gregtech:meta_item_1:19141> * 4])
.outputs([<appliedenergistics2:part:36> * 4])
.duration(600)
.EUt(32)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<gregtech:granite>])
.outputs([<gregtech:meta_item_1:2251> * 4])
.duration(160)
.EUt(32)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<advancedrocketry:basalt>])
.outputs([<gregtech:meta_item_1:2240> * 4])
.duration(160)
.EUt(32)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<gregtech:granite:1>])
.outputs([<gregtech:meta_item_1:2252> * 4])
.duration(160)
.EUt(32)
.buildAndRegister();
macerator.recipeBuilder()
.inputs([<gregtech:mineral:2>])
.outputs([<gregtech:meta_item_1:2240> * 4])
.duration(160)
.EUt(32)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<gregtech:granite:1>])
.outputs([<gregtech:meta_item_1:2252> * 4])
.duration(160)
.EUt(32)
.buildAndRegister();

autoclave.recipeBuilder()
.inputs([<minecraft:experience_bottle>])
.fluidInputs([<liquid:methane> * 1000])
.outputs([<gregtech:meta_item_2:32100> *10])
.duration(60)
.EUt(32)
.buildAndRegister();
blast_furnace.recipeBuilder()
    .inputs(<thermalfoundation:material:101> * 1)
    .outputs(<thermalfoundation:material:165> * 1)
    .property("temperature", 2700) //this is a minimal temperature at which the item will be smelted
    .duration(40)
    .EUt(512)
    .buildAndRegister();

    blast_furnace.recipeBuilder()
    .inputs(<thermalfoundation:material:102> * 1)
    .outputs(<thermalfoundation:material:166> * 1)
    .property("temperature", 2700) //this is a minimal temperature at which the item will be smelted
    .duration(40)
    .EUt(512)
    .buildAndRegister();

mixer.recipeBuilder()
.inputs([<gregtech:meta_item_1:2018> *3,<gregtech:meta_item_1:2062> ])
.fluidInputs(<liquid:redstone> * 1000)
.outputs([<thermalfoundation:material:101> * 4])
.duration(240)
.EUt(512)
.buildAndRegister();
mixer.recipeBuilder()
.inputs([<gregtech:meta_item_1:2071> *3,<gregtech:meta_item_1:2062>])
.fluidInputs(<liquid:glowstone> * 1000)
.outputs([<thermalfoundation:material:102> * 4])
.duration(240)
.EUt(512)
.buildAndRegister();
freezer.findRecipe(48000,null,[<fluid:air>* 4000]).remove();
centrifuge.findRecipe(48000,null,[<fluid:liquid_air>* 53000]).remove();


    blast_furnace .findRecipe(2361600,[<gregtech:meta_item_1:10074>,<gregtech:meta_item_1:2012>] ,null).remove();
    recipes.addShaped(<thermalfoundation:material:640>, [[null, null, null],[null, <actuallyadditions:item_misc:16>, null], [null, null, null]]);
    recipes.addShaped(<thermalfoundation:material:656>, [[null, <gregtech:meta_item_1:13183>, null],[<gregtech:meta_item_1:13183>, <gregtech:meta_item_2:19183>, <gregtech:meta_item_1:13183>], [null, <gregtech:meta_item_1:13183>, null]]);
//    recipes.removeShaped(<minecraft:hopper>);
    
    recipes.addShaped(<beneath:teleporterbeneath>,[[<gregtech:meta_item_1:10300>,<gregtech:meta_item_1:10300>,<gregtech:meta_item_1:10300>],[<gregtech:meta_item_1:10300>,<gregtech:machine:2221>,<gregtech:meta_item_1:10235>],[<gregtech:meta_item_1:10235>,<gregtech:meta_item_1:10235>,<gregtech:meta_item_1:10235>]]);
    <beneath:teleporterbeneath>.displayName = "Deep Dark Portal";
    assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:13184>,<enderio:item_alloy_ingot:6>])
        .outputs([<enderio:item_dark_steel_upgrade>])
        .duration(100)
        .EUt(32)
        .buildAndRegister();
recipes.addShaped(<trashcans:ultimate_trash_can>, [[null, <trashcans:item_trash_can>, null],[<trashcans:energy_trash_can>, null, <trashcans:liquid_trash_can>], [null, null, null]]);
recipes.addShaped(<trashcans:liquid_trash_can>, [[null, <gregtech:meta_item_1:12184>, null],[<gregtech:meta_item_1:12184>, <gregtech:machine:2197>, <gregtech:meta_item_1:12184>], [null,null, null]]);
recipes.addShaped(<trashcans:energy_trash_can>, [[null, <gregtech:meta_item_1:12184>, null],[<gregtech:meta_item_1:12184>, <gregtech:meta_item_2:19018>, <gregtech:meta_item_1:12184>], [null,null, null]]);
recipes.addShaped(<trashcans:item_trash_can>, [[null, <gregtech:meta_item_1:12184>, null],[<gregtech:meta_item_1:12184>, <gregtech:machine:803>, <gregtech:meta_item_1:12184>], [null, null, null]]);
fluid_extractor.recipeBuilder()
        .inputs([<minecraftfuture:honeycomb>])
        .fluidOutputs(<liquid:honey> * 500)
        .duration(100)
        .EUt(32)
        .buildAndRegister();
fluid_extractor.recipeBuilder()
        .inputs([<minecraftfuture:honey_bottle>])
        .fluidOutputs(<liquid:honey> * 250)
        .duration(100)
        .EUt(32)
        .buildAndRegister();
fluid_canner.recipeBuilder()
        .fluidInputs([<liquid:honey> * 250])
        .outputs(<minecraftfuture:honey_bottle>)
        .duration(100)
        .EUt(32)
        .buildAndRegister();
recipes.addShaped(<snad:snad:1>, [[<minecraft:sand:1>, <minecraft:sand:1>, <minecraft:sand:1>],[<minecraft:sand:1>, <minecraft:sand:1>, <minecraft:sand:1>], [<minecraft:sand:1>, <minecraft:sand:1>, <minecraft:sand:1>]]);
recipes.addShaped(<snad:snad>, [[<minecraft:sand>, <minecraft:sand>, <minecraft:sand>],[<minecraft:sand>, <minecraft:sand>, <minecraft:sand>], [<minecraft:sand>, <minecraft:sand>, <minecraft:sand>]]);

chemreactor.recipeBuilder()
.inputs([<snad:snad> * 64])
.fluidInputs( <liquid:lava> * 10000)
.outputs(<minecraft:end_stone>)
.duration(600)
.EUt(2040)
.buildAndRegister();
chemreactor.recipeBuilder()
.inputs([<snad:snad:1> * 64])
.fluidInputs( <liquid:lava> * 10000)
.outputs(<minecraft:end_stone>)
.duration(600)
.EUt(2040)
.buildAndRegister();

Utils.removeRecipeByOutput(chemplant, [], [<liquid:fermentation_base> * 10000], false);
Utils.removeRecipeByOutput(pyro, [], [<liquid:fermented_biomass> * 10000], false);

pyro.recipeBuilder()
.inputs([<gregtech:meta_item_2:32570> * 5])
.fluidInputs([<liquid:water> * 144])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.chancedOutput(<gregtech:meta_item_2:32570> * 1, 15, 100)
.fluidOutputs([<liquid:fermentation_base> * 144])
.duration(600)
.EUt(128)
.buildAndRegister();
//.notConsumable(X)
chemplant.recipeBuilder()
.inputs([<gregtech:meta_item_2:32570> * 5])
.fluidInputs( <liquid:fermentation_base> * 144,<liquid:biomass> * 144 )
.fluidOutputs(<liquid:fermented_biomass> * 288)
.duration(1200)
.EUt(128)
.buildAndRegister();

//Utils.removeRecipeByOutput(circuit_assembler, [<gregtech:meta_item_2:32488>], [], false);
//Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_2:32452>], [], false);
recipes.addShaped(<gregtech:meta_item_2:32452>, [[<gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>],[<gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>], [<gregtech:cable:71>, null, <gregtech:cable:71>]]);
recipes.addShaped(<gregtech:meta_item_2:32461>, [[<gregtech:meta_item_1:19061>, <gregtech:meta_item_1:19061>, <gregtech:meta_item_1:19061>],[<gregtech:meta_item_1:19061>, <gregtech:meta_item_1:19061>, <gregtech:meta_item_1:19061>], [<gregtech:cable:71>, <gregtech:cable:71>, <gregtech:cable:71>]]);
Utils.removeRecipeByOutput(fermenter, [], [<liquid:fermented_biomass>], false);

fermenter.recipeBuilder()
.fluidInputs(<liquid:biomass> * 144 )
.fluidOutputs(<liquid:fermented_biomass> * 50)
.duration(4000)
.EUt(2)
.buildAndRegister();
vat.removeRecipe(<liquid:rocket_fuel> *1000);
Utils.removeRecipeByOutput(macerator, [<gregtech:meta_item_1:2345>], [], false);

macerator.recipeBuilder()
.inputs([<minecraft:wheat> * 1])
.outputs(<gregtech:meta_item_1:2345> * 2)
.chancedOutput(<gregtech:meta_item_1:2345>, 1000,1000)
.duration(120)
.EUt(17)
.buildAndRegister();
furnace.setFuel(<advancedrocketry:charcoallog>, 640000);
fluid_extractor.recipeBuilder()
        .inputs([<minecraft:melon>])
        .fluidOutputs(<liquid:juice> * 50)
        .duration(100)
        .EUt(32)
        .buildAndRegister();
fluid_extractor.recipeBuilder()
        .inputs([<minecraft:apple>])
        .fluidOutputs(<liquid:juice> * 144)
        .duration(100)
        .EUt(32)
        .buildAndRegister();
fluid_extractor.recipeBuilder()
        .inputs([<minecraftfuture:sweetberry>])
        .fluidOutputs(<liquid:juice> * 50)
        .duration(100)
        .EUt(32)
        .buildAndRegister();
fluid_extractor.recipeBuilder()
        .inputs([<minecraft:reeds>])
        .fluidOutputs(<liquid:juice> * 144)
        .duration(100)
        .EUt(32)
        .buildAndRegister();
fluid_extractor.recipeBuilder()
        .inputs([<minecraft:cactus>])
        .fluidOutputs(<liquid:juice> * 512)
        .duration(100)
        .EUt(32)
        .buildAndRegister();
fluid_extractor.recipeBuilder()
        .inputs([<minecraft:pumpkin>])
        .fluidOutputs(<liquid:juice> * 512)
        .duration(100)
        .EUt(32)
        .buildAndRegister();
Utils.removeRecipeByOutput(wiremill, [<gregtech:cable:516>], [], false);
Utils.removeRecipeByOutput(extruder, [<gregtech:cable:516>], [], false); 

mixer.recipeBuilder()
.inputs([<gregtech:meta_item_1:2025> * 2,<gregtech:meta_item_1:2180> *10])
.outputs([<gregtech:meta_item_1:2517> * 12])
.duration(240)
.EUt(32)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2517>)
    .outputs(<gregtech:meta_item_1:10517>)
    .property("temperature", 1800) //this is a minimal temperature at which the item will be smelted
    .duration(40)
    .EUt(16)
    .buildAndRegister();

assembler.recipeBuilder()
.inputs([<gregtech:cable:517> * 3,<gregtech:meta_item_1:32610>,<gregtech:fluid_pipe:184>])
.fluidInputs(<liquid:nitrogen> * 1000)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.outputs([<gregtech:cable:516> * 3])
.duration(350)
.EUt(32)
.buildAndRegister();
furnace.remove(<gregtech:meta_item_1:10516>);
furnace.remove(<gregtech:meta_item_1:10517>);

blast_furnace.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2516>)
    .outputs(<gregtech:meta_item_1:10516>)
    .property("temperature", 1800) //this is a minimal temperature at which the item will be smelted
    .duration(350)
    .EUt(512)
    .buildAndRegister();
recipes.addShaped(<gregtech:meta_item_1:32519>, [[<gregtech:meta_item_1:2063>, <gregtech:meta_item_1:2063>, <gregtech:meta_item_1:2063>],[<gregtech:meta_item_1:2063>, <gregtech:meta_item_1:2063>, <gregtech:meta_item_1:2063>], [null, <gregtech:meta_item_1:32500>, null]]);

Utils.removeRecipeByOutput(circuit_assembler, [<gtadditions:ga_meta_item:32202>], [], false); 

circuit_assembler.recipeBuilder()
.inputs([<gtadditions:ga_meta_item:32201> * 4,<gregtech:meta_item_2:32452> * 4,<gregtech:meta_item_2:32455> * 4,<gregtech:meta_item_2:32477> * 2,<gregtech:meta_item_1:12001> * 2, <gregtech:cable:516> * 2])
.fluidInputs(<liquid:soldering_alloy> * 40)
.outputs([<gtadditions:ga_meta_item:32202>])
.duration(150)
.EUt(32)
.buildAndRegister();

circuit_assembler.recipeBuilder()
.inputs([<gtadditions:ga_meta_item:32201> * 4,<gtadditions:ga_meta_item:32242> * 4,<gtadditions:ga_meta_item:32241>* 4,<gregtech:meta_item_2:32477> * 2,<gregtech:meta_item_1:12001> * 2, <gregtech:cable:516> * 2])
.fluidInputs(<liquid:soldering_alloy> * 40)
.outputs([<gtadditions:ga_meta_item:32202>])
.duration(150)
.EUt(32)
.buildAndRegister();
furnace.remove(<thermalfoundation:material:833>, <gregtech:meta_item_1:32627>);
recipes.addShaped(<gregtech:machine:1002>, [[<gregtech:metal_casing:1>, <gregtech:meta_item_1:12095>, <gregtech:metal_casing:1>],[<gregtech:meta_item_1:12095>, null, <gregtech:meta_item_1:12095>], [<gregtech:metal_casing:1>, <gregtech:meta_item_1:12095>, <gregtech:metal_casing:1>]]);
Utils.removeRecipeByOutput(hammer, [<gregtech:meta_item_1:10197>], [], false); 
//Utils.removeRecipeByOutput(largeHammer, [<gregtech:meta_item_1:10197>], [], false); 
recipes.remove(<enderio:item_extract_speed_upgrade>);
recipes.addShaped(<enderio:item_extract_speed_upgrade>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<gregtech:meta_item_1:10095>, <minecraft:piston>, <gregtech:meta_item_1:10095>], [<gregtech:meta_item_1:10095>, <minecraft:redstone>, <gregtech:meta_item_1:10095>]]);
recipes.remove(<enderio:item_liquid_conduit:2>);
recipes.remove(<enderio:item_liquid_conduit>);
recipes.addShaped(<enderio:item_liquid_conduit>, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_liquid_conduit:2> * 8, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<enderio:item_alloy_nugget:5>, <enderio:item_liquid_conduit:1>, <enderio:item_alloy_nugget:5>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_liquid_conduit:2> * 8, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<enderio:item_alloy_nugget:5>, <ore:fusedQuartz>, <enderio:item_alloy_nugget:5>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
for recipe in RecipeMaps.getCokeOvenRecipes(){
    recipe.remove();
    }
recipes.addShaped(<contenttweaker:steammotor>, [[<minecraft:stick>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:14033>],[<gregtech:meta_item_1:12095>, <gregtech:meta_item_1:14033>, <gregtech:meta_item_1:12095>], [<minecraft:iron_ingot>, <gregtech:meta_item_1:12095>, <minecraft:stick>]]);
recipes.addShaped(<contenttweaker:steampiston>, [[<gregtech:meta_item_2:26033>, <minecraft:stick>, <minecraft:stick>],[<gregtech:meta_item_2:26033>, <contenttweaker:steammotor>, <minecraft:iron_ingot>], [<minecraft:heavy_weighted_pressure_plate>, <minecraft:heavy_weighted_pressure_plate>, <minecraft:heavy_weighted_pressure_plate>]]);
recipes.remove(<gregtech:meta_item_1:32600>);
recipes.addShaped(<gregtech:meta_item_1:32600>, [[<gregtech:cable:5071>, <gregtech:meta_item_2:16018>, <gregtech:meta_item_1:14297>],[<gregtech:meta_item_2:16018>, <gregtech:meta_item_1:14297>, <gregtech:meta_item_2:16018>], [<gregtech:meta_item_1:14297>, <gregtech:meta_item_2:16018>, <gregtech:cable:5071>]]);
recipes.remove(<gregtech:meta_item_2:32450>);
recipes.addShaped(<gregtech:meta_item_2:32450>, [[null, null, null],[<gregtech:meta_item_2:16018>, <gregtech:meta_item_2:32454>, <gregtech:meta_item_2:16018>], [<gtadditions:ga_meta_item:32307>, <gtadditions:ga_meta_item:32307>, <gtadditions:ga_meta_item:32307>]]);
recipes.addShaped(<gregtech:machine:1003>, [[<gregtech:metal_casing:1>, <contenttweaker:steampiston>, <gregtech:metal_casing:1>],[<contenttweaker:steammotor>, null, <contenttweaker:steampiston>], [<gregtech:metal_casing:1>, <contenttweaker:steammotor>, <gregtech:metal_casing:1>]]);
recipes.remove(<gregtech:machine:9>);
recipes.remove(<gregtech:machine:10>);
recipes.remove(<gregtech:machine:11>);
recipes.remove(<gregtech:machine:7>);
recipes.addShaped(<gregtech:machine:9>, [[<contenttweaker:steampiston>, <gregtech:fluid_pipe:1095>, <contenttweaker:steampiston>],[<gregtech:fluid_pipe:1095>, <gregtech:machine_casing:10>, <gregtech:fluid_pipe:1095>], [<contenttweaker:steammotor>, <gregtech:fluid_pipe:1095>, <contenttweaker:steammotor>]]);
recipes.addShaped(<gregtech:machine:10>, [[<contenttweaker:steampiston>, <gregtech:fluid_pipe:1184>, <contenttweaker:steampiston>],[<gregtech:fluid_pipe:1184>, <gregtech:machine_casing:12>, <gregtech:fluid_pipe:1184>], [<contenttweaker:steammotor>, <gregtech:fluid_pipe:1184>, <contenttweaker:steammotor>]]);
recipes.remove(<gregtech:machine:12>);
recipes.addShaped(<gregtech:machine:12>, [[<gregtech:fluid_pipe:1184>, <gregtech:fluid_pipe:1184>, <gregtech:fluid_pipe:1184>],[<contenttweaker:steammotor>, <gregtech:machine_casing:12>, <contenttweaker:steampiston>], [<gregtech:fluid_pipe:1184>, <gregtech:fluid_pipe:1184>, <gregtech:fluid_pipe:1184>]]);
recipes.addShaped(<gregtech:machine:11>, [[<gregtech:fluid_pipe:1095>, <gregtech:fluid_pipe:1095>, <gregtech:fluid_pipe:1095>],[<contenttweaker:steammotor>, <gregtech:machine_casing:10>, <contenttweaker:steampiston>], [<gregtech:fluid_pipe:1095>, <gregtech:fluid_pipe:1095>, <gregtech:fluid_pipe:1095>]]);
recipes.addShaped(<gregtech:machine:7>, [[<gregtech:fluid_pipe:1095>, <gregtech:fluid_pipe:1095>, <gregtech:fluid_pipe:1095>],[<contenttweaker:steampiston>, <gregtech:machine_casing:10>, <minecraft:glass>], [<gregtech:fluid_pipe:1095>, <gregtech:fluid_pipe:1095>, <gregtech:fluid_pipe:1095>]]);
recipes.remove(<gregtech:machine:2235>);
recipes.addShaped(<gregtech:machine:2235>, [[<minecraft:glass>, <gregtech:meta_item_2:18095>, <minecraft:glass>],[<contenttweaker:steampiston>, <gregtech:fluid_pipe:1184>, <contenttweaker:steampiston>], [<gregtech:fluid_pipe:1184>, <gregtech:machine_casing:10>, <gregtech:fluid_pipe:1184>]]);
recipes.addShaped(<gregtech:machine:1000>, [[<gregtech:metal_casing:8>, <contenttweaker:steammotor>, <gregtech:metal_casing:8>],[<contenttweaker:steampiston>, null, <contenttweaker:steammotor>], [<gregtech:metal_casing:8>, <contenttweaker:steampiston>, <gregtech:metal_casing:8>]]);
recipes.remove(<gregtech:machine:500>);
recipes.addShaped(<gregtech:machine:500>, [[null, null, null],[<gregtech:meta_item_1:12197>, <gregtech:meta_item_1:12197>, <gregtech:meta_item_1:12197>], [<gregtech:cable:5071>, <gregtech:machine_casing>, <gregtech:cable:5071>]]);
recipes.removeShaped(<minecraft:hopper>, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <minecraft:chest>, <minecraft:iron_ingot>], [null, <minecraft:iron_ingot>, null]]);
  //ADV_FUSION_RECIPES.recipeBuilder().fluidInputs(Adamantium.getFluid(125), Neutronium.getFluid(125)).fluidOutputs(Vibranium.getFluid(125)).duration(100).EUt(8000000).coilTier(2).euStart(2500000000L).buildAndRegister(); 
/*
ADVFusion.recipeBuilder()
    .fluidInputs(<fluid:degenerate_rhenium_plasma> * 15,<fluid:neutron_plasma> * 15)
    .fluidOutputs(<fluid:plasma.cosmic_neutronium>* 15)
    .duration(100)
    .property("coilTier",2)
    .EUt(8000000)
    .property("eu_to_start",30000000) 
    .euReturn(2)
    .buildAndRegister();
    */
recipes.addShaped(<gregtech:machine:1305>, [[<ore:circuitSuperconductor>, <gregtech:meta_item_1:32677>, <ore:circuitSuperconductor>],[<gregtech:meta_item_1:12311>, <gregtech:machine:508>, <gregtech:meta_item_1:12311>], [<ore:circuitSuperconductor>, <gregtech:meta_item_1:12311>, <ore:circuitSuperconductor>]]);
recipes.addShaped(<gregtech:machine:1303>, [[<ore:circuitUltimate>, <gregtech:meta_item_1:32676>, <ore:circuitUltimate>],[<gregtech:meta_item_1:12207>, <gregtech:machine:507>, <gregtech:meta_item_1:12207>], [<ore:circuitUltimate>, <gregtech:meta_item_1:12207>, <ore:circuitUltimate>]]);
recipes.addShaped(<gregtech:machine:1301>, [[<ore:circuitMaster>, <gregtech:meta_item_1:32675>, <ore:circuitMaster>],[<gregtech:meta_item_1:12859>, <gregtech:machine:506>, <gregtech:meta_item_1:12859>], [<ore:circuitMaster>, <gregtech:meta_item_1:12859>, <ore:circuitMaster>]]);
recipes.addShaped(<gregtech:machine:1304>, [[<ore:circuitSuperconductor>, <gregtech:meta_item_1:12311>, <ore:circuitSuperconductor>],[<gregtech:meta_item_1:12311>, <gregtech:machine:508>, <gregtech:meta_item_1:12311>], [<ore:circuitSuperconductor>, <gregtech:meta_item_1:32677>, <ore:circuitSuperconductor>]]);
recipes.addShaped(<gregtech:machine:1302>, [[<ore:circuitUltimate>, <gregtech:meta_item_1:12207>, <ore:circuitUltimate>],[<gregtech:meta_item_1:12207>, <gregtech:machine:507>, <gregtech:meta_item_1:12207>], [<ore:circuitUltimate>, <gregtech:meta_item_1:32676>, <ore:circuitUltimate>]]);
recipes.addShaped(<gregtech:machine:1300>, [[<ore:circuitMaster>, <gregtech:meta_item_1:12859>, <ore:circuitMaster>],[<gregtech:meta_item_1:12859>, <gregtech:machine:506>, <gregtech:meta_item_1:12859>], [<ore:circuitMaster>, <gregtech:meta_item_1:32675>, <ore:circuitMaster>]]);
//Needs to be updated when max circuits come out
recipes.addShaped(<gregtech:machine:1307>, [[<ore:circuitUmv>, <gtadditions:ga_meta_item:32383>, <ore:circuitUmv>],[<gregtech:meta_item_1:12993>, <gregtech:machine:509>, <gregtech:meta_item_1:12993>], [<ore:circuitUmv>, <gregtech:meta_item_1:12993>, <ore:circuitUmv>]]);
recipes.addShaped(<gregtech:machine:1306>, [[<ore:circuitUmv>, <gregtech:meta_item_1:12993>, <ore:circuitUmv>],[<gregtech:meta_item_1:12993>, <gregtech:machine:509>, <gregtech:meta_item_1:12993>], [<ore:circuitUmv>, <gtadditions:ga_meta_item:32383>, <ore:circuitUmv>]]);
recipes.addShaped(<gregtech:compressed_0>, [[<gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>],[<gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>], [<gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>]]);
furnace.addRecipe(<minecraft:glass>, <gregtech:meta_item_1:2960>, 0.0);
//copper 
Utils.removeRecipeByOutput(arc,[<gregtech:meta_item_1:10087>],[],false);
arc.recipeBuilder()
.inputs([<gregtech:meta_item_1:10018>])
.fluidInputs(<liquid:oxygen> * 1000)
.outputs([<gregtech:meta_item_1:10087>])
.duration(600)
.EUt(128)
.buildAndRegister();
recipes.addShaped(<gregtech:compressed_8:4>, [[<gregtech:meta_item_1:10184>, <gregtech:meta_item_1:10184>, <gregtech:meta_item_1:10184>],[<gregtech:meta_item_1:10184>, <gregtech:meta_item_1:10184>, <gregtech:meta_item_1:10184>], [<gregtech:meta_item_1:10184>, <gregtech:meta_item_1:10184>, <gregtech:meta_item_1:10184>]]);
recipes.addShaped(<bonsaitrees:bonsaipot:1>, [[<gregtech:meta_item_1:12729>, <bonsaitrees:bonsaipot>, <gregtech:meta_item_1:12729>],[<gregtech:meta_item_1:12729>, null, <gregtech:meta_item_1:12729>], [<gregtech:meta_item_1:12729>, <actuallyadditions:block_item_viewer_hopping>, <gregtech:meta_item_1:12729>]]);
recipes.addShaped(<bonsaitrees:bonsaipot>, [[null, null, null],[<gregtech:meta_item_1:13207>, null, <gregtech:meta_item_1:13207>], [<gregtech:meta_item_1:13207>, <gregtech:meta_item_1:13207>, <gregtech:meta_item_1:13207>]]);
recipes.remove(<bonsaitrees:bonsaipot:1>);
recipes.remove(<bonsaitrees:bonsaipot>);
recipes.remove(<gregtech:machine:2540>);
recipes.addShaped(<gregtech:machine:2540>, [[<gregtech:meta_item_1:32643>, <ore:circuitExtreme>, <gregtech:meta_item_1:32643>],[<gregtech:meta_item_1:32603>, <gregtech:machine:504>, <gregtech:meta_item_1:32603>], [<gregtech:meta_item_2:26072>, <gregtech:cable:235>, <gregtech:meta_item_2:26072>]]);

electrolyzer.findRecipe(240, [<gregtech:meta_item_1:2125> * 3], null).remove();

reactor.recipeBuilder()
.inputs(<gregtech:meta_item_1:2125> * 6, <gregtech:meta_item_1:2063> * 3)
.outputs(<gregtech:meta_item_1:1038>* 6)
.fluidOutputs(<liquid:chlorine> * 1500)
.duration(18000)
.EUt(240)
.buildAndRegister();

large_chem.recipeBuilder()
.inputs(<gregtech:meta_item_1:2125> * 6, <gregtech:meta_item_1:2063> * 3)
.outputs(<gregtech:meta_item_1:1038> * 12)
.fluidOutputs(<liquid:chlorine> * 2000)
.duration(18000)
.EUt(240)
.buildAndRegister();

Utils.removeRecipeByOutput(tower,[],[<liquid:sulfuric_heavy_fuel>],false);
tower.recipeBuilder()
.fluidInputs(<liquid:oil_heavy> * 1500)
.fluidOutputs(<liquid:sulfuric_heavy_fuel> * 2500,<liquid:sulfuric_light_fuel> * 450,<liquid:sulfuric_naphtha> * 150,<liquid:sulfuric_gas> *6000)
.duration(600)
.EUt(288)
.buildAndRegister();
tower.recipeBuilder()
.fluidInputs(<liquid:oil_medium> * 1000)
.fluidOutputs(<liquid:sulfuric_heavy_fuel> * 150,<liquid:sulfuric_light_fuel> * 500,<liquid:sulfuric_naphtha> * 200,<liquid:sulfuric_gas> *600)
.duration(600)
.EUt(288)
.buildAndRegister();
tower.recipeBuilder()
.fluidInputs(<liquid:oil_light> * 1500)
.fluidOutputs(<liquid:sulfuric_heavy_fuel> * 100,<liquid:sulfuric_light_fuel> * 200,<liquid:sulfuric_naphtha> * 300,<liquid:sulfuric_gas> *2500)
.duration(600)
.EUt(288)
.buildAndRegister();
tower.recipeBuilder()
.fluidInputs(<liquid:oil> * 500)
.fluidOutputs(<liquid:sulfuric_heavy_fuel> * 150,<liquid:sulfuric_light_fuel> * 500,<liquid:sulfuric_naphtha> * 200,<liquid:sulfuric_gas> *600)
.duration(600)
.EUt(288)
.buildAndRegister();
