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
.EUt(30)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<ore:ingotIron>])
.outputs([<gregtech:meta_item_1:2033>])
.duration(160)
.EUt(30)
.buildAndRegister();

mixer.recipeBuilder()
.inputs([<minecraft:redstone> * 64])
.fluidInputs(<liquid:lava> * 1000)
.outputs([<fluxnetworks:flux> * 64])
.duration(240)
.EUt(524288)
.buildAndRegister();

largeMix.recipeBuilder()
.inputs([<minecraft:redstone> * 64])
.fluidInputs(<liquid:lava> * 1000)
.outputs([<fluxnetworks:flux> * 64])
.duration(240)
.EUt(524288)
.buildAndRegister();

recipes.remove(<fluxnetworks:fluxcore>);
recipes.remove(<fluxnetworks:fluxpoint>);
recipes.remove(<fluxnetworks:fluxplug>);
recipes.addShapeless(<fluxnetworks:fluxplug>,[<fluxnetworks:fluxpoint>]);
recipes.addShapeless(<fluxnetworks:fluxpoint>,[<fluxnetworks:fluxplug>]);
assembler.recipeBuilder()
.inputs([<fluxnetworks:flux> * 4,<enderio:block_reinforced_obsidian> * 4,<gregtech:meta_item_1:32724> * 2])
.outputs([<fluxnetworks:fluxcore> * 2])
.duration(240)
.EUt(524288)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<fluxnetworks:fluxcore>  * 8,<gregtech:cable:744> * 18])
.outputs([<fluxnetworks:fluxpoint> * 2])
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.duration(240)
.EUt(524288)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<fluxnetworks:fluxcore>  * 8,<gregtech:cable:744> * 18])
.outputs([<fluxnetworks:fluxplug> * 2])
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
.duration(240)
.EUt(524288)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<minecraft:ender_pearl>])
.outputs([<gregtech:meta_item_1:2218>])
.duration(160)
.EUt(30)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<minecraft:quartz>])
.outputs([<gregtech:meta_item_1:2201>])
.duration(160)
.EUt(30)
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
.EUt(30)
.buildAndRegister();
macerator.recipeBuilder()
.inputs([<minecraft:obsidian>])
.outputs([<gregtech:meta_item_1:2138>])
.duration(160)
.EUt(30)
.buildAndRegister();
macerator.recipeBuilder()
.inputs([<minecraft:gold_ingot>])
.outputs([<gregtech:meta_item_1:2026>])
.duration(160)
.EUt(30)
.buildAndRegister();




/*
chemreactor.recipeBuilder()
.inputs([<extrautils2:compressedsand:1>])
.fluidInputs(<liquid:lava> * 1000)
.outputs([<minecraft:end_stone>])
.duration(160)
.EUt(30)
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
.EUt(30)
.buildAndRegister();
*/
chemreactor.recipeBuilder()
.inputs([<gregtech:meta_item_1:373>])
.fluidInputs( <liquid: creosote> * 6000, <liquid: ethanol> * 1000)
.fluidOutputs(<liquid: bio_diesel> * 6000, <liquid: glycerol> * 1000)
.duration(600)
.EUt(30)
.buildAndRegister();

chemreactor.recipeBuilder()
.inputs([<gregtech:meta_item_1:373>])
.fluidInputs( <liquid: creosote> * 6000, <liquid: methanol> * 1000)
.fluidOutputs(<liquid: bio_diesel> * 6000, <liquid: glycerol> * 1000)
.duration(600)
.EUt(30)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<gregtech:granite>])
.outputs([<gregtech:meta_item_1:2251> * 4])
.duration(160)
.EUt(30)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<advancedrocketry:basalt>])
.outputs([<gregtech:meta_item_1:2240> * 4])
.duration(160)
.EUt(30)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<gregtech:granite:1>])
.outputs([<gregtech:meta_item_1:2252> * 4])
.duration(160)
.EUt(30)
.buildAndRegister();
macerator.recipeBuilder()
.inputs([<gregtech:mineral:2>])
.outputs([<gregtech:meta_item_1:2240> * 4])
.duration(160)
.EUt(30)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<gregtech:granite:1>])
.outputs([<gregtech:meta_item_1:2252> * 4])
.duration(160)
.EUt(30)
.buildAndRegister();

autoclave.recipeBuilder()
.inputs([<minecraft:experience_bottle>])
.fluidInputs([<liquid:methane> * 1000])
.outputs([<gregtech:meta_item_2:32100> *10])
.duration(60)
.EUt(30)
.buildAndRegister();
blast_furnace.recipeBuilder()
    .inputs(<thermalfoundation:material:101> * 1)
    .outputs(<thermalfoundation:material:165> * 1)
    .property("temperature", 4500) //this is a minimal temperature at which the item will be smelted
    .duration(1530)
    .EUt(120)
    .buildAndRegister();

    blast_furnace.recipeBuilder()
    .inputs(<thermalfoundation:material:102> * 1)
    .outputs(<thermalfoundation:material:166> * 1)
    .property("temperature", 4500) //this is a minimal temperature at which the item will be smelted
    .duration(1530)
    .EUt(120)
    .buildAndRegister();

mixer.recipeBuilder()
.inputs([<gregtech:meta_item_1:2018> *3,<gregtech:meta_item_1:2062> ])
.fluidInputs(<liquid:redstone> * 1000)
.outputs([<thermalfoundation:material:101> * 4])
.duration(240)
.EUt(500)
.buildAndRegister();
mixer.recipeBuilder()
.inputs([<gregtech:meta_item_1:2071> *3,<gregtech:meta_item_1:2062>])
.fluidInputs(<liquid:glowstone> * 1000)
.outputs([<thermalfoundation:material:102> * 4])
.duration(240)
.EUt(500)
.buildAndRegister();
freezer.findRecipe(48000,null,[<fluid:air>* 4000]).remove();
centrifuge.findRecipe(48000,null,[<fluid:liquid_air>* 53000]).remove();


    //blast_furnace .findRecipe(2361600,[<gregtech:meta_item_1:10074>,<gregtech:meta_item_1:2012>] ,null).remove();
    recipes.addShaped(<thermalfoundation:material:640>, [[null, null, null],[null, <actuallyadditions:item_misc:16>, null], [null, null, null]]);
    recipes.addShaped(<thermalfoundation:material:656>, [[null, <gregtech:meta_item_1:13183>, null],[<gregtech:meta_item_1:13183>, <gregtech:meta_item_2:19183>, <gregtech:meta_item_1:13183>], [null, <gregtech:meta_item_1:13183>, null]]);
//    recipes.removeShaped(<minecraft:hopper>);
/*
    assembler.recipeBuilder()
        .inputs([<gtadditions:ga_meta_item:1184>,<enderio:item_alloy_ingot:6>])
        .outputs([<enderio:item_dark_steel_upgrade>])
        .duration(100)
        .EUt(30)
        .buildAndRegister();
        */
recipes.addShaped(<trashcans:ultimate_trash_can>, [[null, <trashcans:item_trash_can>, null],[<trashcans:energy_trash_can>, null, <trashcans:liquid_trash_can>], [null, null, null]]);
recipes.addShaped(<trashcans:liquid_trash_can>, [[null, <gregtech:meta_item_1:12184>, null],[<gregtech:meta_item_1:12184>, <gregtech:machine:2197>, <gregtech:meta_item_1:12184>], [null,null, null]]);
recipes.addShaped(<trashcans:energy_trash_can>, [[null, <gregtech:meta_item_1:12184>, null],[<gregtech:meta_item_1:12184>, <gregtech:meta_item_2:19018>, <gregtech:meta_item_1:12184>], [null,null, null]]);
recipes.addShaped(<trashcans:item_trash_can>, [[null, <gregtech:meta_item_1:12184>, null],[<gregtech:meta_item_1:12184>, <gregtech:machine:803>, <gregtech:meta_item_1:12184>], [null, null, null]]);
fluid_extractor.recipeBuilder()
        .inputs([<minecraftfuture:honeycomb>])
        .fluidOutputs(<liquid:honey> * 500)
        .duration(100)
        .EUt(30)
        .buildAndRegister();
fluid_extractor.recipeBuilder()
        .inputs([<minecraftfuture:honey_bottle>])
        .fluidOutputs(<liquid:honey> * 250)
        .duration(100)
        .EUt(30)
        .buildAndRegister();
fluid_canner.recipeBuilder()
        .fluidInputs([<liquid:honey> * 250])
        .inputs([<minecraft:glass_bottle>])
        .outputs(<minecraftfuture:honey_bottle>)
        .duration(100)
        .EUt(30)
        .buildAndRegister();
recipes.addShaped(<snad:snad:1>, [[<minecraft:sand:1>, <minecraft:sand:1>, <minecraft:sand:1>],[<minecraft:sand:1>, <minecraft:sand:1>, <minecraft:sand:1>], [<minecraft:sand:1>, <minecraft:sand:1>, <minecraft:sand:1>]]);
recipes.addShaped(<snad:snad>, [[<minecraft:sand>, <minecraft:sand>, <minecraft:sand>],[<minecraft:sand>, <minecraft:sand>, <minecraft:sand>], [<minecraft:sand>, <minecraft:sand>, <minecraft:sand>]]);

chemreactor.recipeBuilder()
.inputs([<snad:snad> * 8, <minecraft:obsidian> * 2])
.fluidInputs( <liquid:lava> * 10000)
.outputs(<minecraft:end_stone>)
.duration(600)
.EUt(2040)
.buildAndRegister();

chemreactor.recipeBuilder()
.inputs([<minecraft:sand> * 64, <minecraft:obsidian> * 2])
.fluidInputs( <liquid:lava> * 1000)
.outputs(<minecraft:end_stone> * 2)
.duration(300)
.EUt(30252)
.buildAndRegister();

large_chem.recipeBuilder()
.inputs([<minecraft:sand> * 64, <minecraft:obsidian> * 2])
.fluidInputs( <liquid:lava> * 1000)
.outputs(<minecraft:end_stone> *2)
.duration(300)
.EUt(30252)
.buildAndRegister();

large_chem.recipeBuilder()
.inputs([<snad:snad> * 8, <minecraft:obsidian> * 2])
.fluidInputs( <liquid:lava> * 10000)
.outputs(<minecraft:end_stone>)
.duration(600)
.EUt(2040)
.buildAndRegister();

mixer.recipeBuilder()
    .inputs([<minecraft:sand>*4])
    .fluidInputs([<liquid:biomass>*250])
    .outputs([<minecraft:dirt>*4])
    .duration(20)
    .EUt(30)
    .buildAndRegister();
// Fix glycerol/sodium bicarbonate conflict

large_chem.findRecipe(30, [<gregtech:meta_item_1:2403> * 6], [<liquid:water> * 1000]).remove();
large_chem.findRecipe(1024, [<gregtech:meta_item_1:2403> * 6], [<liquid:water> * 2000, <liquid:epichlorhydrin> * 1000]).remove();

large_chem.recipeBuilder()
    .inputs([<ore:dustSodaAsh> * 6])
    .fluidInputs([<liquid:water> * 1000])
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs([<gtadditions:ga_dust:194> * 6, <gregtech:meta_item_1:2373> * 3])
    .duration(140)
    .EUt(30)
    .buildAndRegister();

large_chem.recipeBuilder()
    .inputs([<ore:dustSodaAsh> * 6])
    .fluidInputs([<liquid:water> * 2000, <liquid:epichlorhydrin> * 1000])
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .outputs([<gregtech:meta_item_1:2155> * 2, <gtadditions:ga_dust:194> * 6])
    .fluidOutputs([<liquid:glycerol> * 1000])
    .duration(100)
    .EUt(1024)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemplant, [], [<liquid:fermentation_base> * 10000], false);
Utils.removeRecipeByOutput(pyro, [], [<liquid:fermented_biomass> * 10000], false);

pyro.recipeBuilder()
.inputs([<gregtech:meta_item_2:32570> * 5])
.fluidInputs([<liquid:water> * 1000])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.chancedOutput(<gregtech:meta_item_2:32570> * 1, 45, 100)
.fluidOutputs([<liquid:fermentation_base> * 1000])
.duration(600)
.EUt(110)
.buildAndRegister();
//.notConsumable(X)
chemplant.recipeBuilder()
.inputs([<gregtech:meta_item_2:32570> * 5])
.fluidInputs( <liquid:fermentation_base> * 1000,<liquid:biomass> * 1000 )
.fluidOutputs(<liquid:fermented_biomass> * 2000)
.duration(1200)
.EUt(110)
.buildAndRegister();

//Utils.removeRecipeByOutput(circuit_assembler, [<gregtech:meta_item_2:32488>], [], false);
//Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_2:32452>], [], false);
//recipes.addShaped(<gregtech:meta_item_2:32452>, [[<gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>],[<gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>], [<gregtech:cable:71>, null, <gregtech:cable:71>]]);
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
        .EUt(30)
        .buildAndRegister();
fluid_extractor.recipeBuilder()
        .inputs([<minecraft:apple>])
        .fluidOutputs(<liquid:juice> * 144)
        .duration(100)
        .EUt(30)
        .buildAndRegister();
fluid_extractor.recipeBuilder()
        .inputs([<minecraftfuture:sweetberry>])
        .fluidOutputs(<liquid:juice> * 50)
        .duration(100)
        .EUt(30)
        .buildAndRegister();
fluid_extractor.recipeBuilder()
        .inputs([<minecraft:reeds>])
        .fluidOutputs(<liquid:juice> * 144)
        .duration(100)
        .EUt(30)
        .buildAndRegister();
fluid_extractor.recipeBuilder()
        .inputs([<minecraft:cactus>])
        .fluidOutputs(<liquid:juice> * 512)
        .duration(100)
        .EUt(30)
        .buildAndRegister();
fluid_extractor.recipeBuilder()
        .inputs([<minecraft:pumpkin>])
        .fluidOutputs(<liquid:juice> * 512)
        .duration(100)
        .EUt(30)
        .buildAndRegister();
Utils.removeRecipeByOutput(wiremill, [<gregtech:cable:516>], [], false);
Utils.removeRecipeByOutput(extruder, [<gregtech:cable:516>], [], false); 

mixer.recipeBuilder()
.inputs([<gregtech:meta_item_1:2025> * 2,<gregtech:meta_item_1:2180> *10])
.outputs([<gregtech:meta_item_1:2517> * 12])
.duration(240)
.EUt(30)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2517>)
    .outputs(<gregtech:meta_item_1:10517>)
    .property("temperature", 1800) //this is a minimal temperature at which the item will be smelted
    .duration(40)
    .EUt(16)
    .buildAndRegister();

blast_alloy.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2022>*1, <gregtech:meta_item_1:2184>*4, <gregtech:meta_item_1:2010>*2, <gregtech:meta_item_1:2008>*2])
    .fluidOutputs(<liquid:bright_steel> * 1296)
    .property("temperature", 2900)
    .duration(1800)
    .EUt(120)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs([<gregtech:cable:517> * 3,<gregtech:meta_item_1:32610> * 2,<gregtech:fluid_pipe:184>])
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .fluidInputs(<liquid:nitrogen> * 1000)
    .outputs([<gregtech:cable:516> * 3])
    .duration(350)
    .EUt(30)
    .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10516>);
furnace.remove(<gregtech:meta_item_1:10517>);

blast_furnace.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2516>)
    .outputs(<gregtech:meta_item_1:10516>)
    .property("temperature", 1800) //this is a minimal temperature at which the item will be smelted
    .duration(350)
    .EUt(500)
    .buildAndRegister();
recipes.addShaped(<gregtech:meta_item_1:32519>, [[<gregtech:meta_item_1:2063>, <gregtech:meta_item_1:2063>, <gregtech:meta_item_1:2063>],[<gregtech:meta_item_1:2063>, <gregtech:meta_item_1:2063>, <gregtech:meta_item_1:2063>], [null, <gregtech:meta_item_1:32500>, null]]);

Utils.removeRecipeByOutput(circuit_assembler, [<gtadditions:ga_meta_item:32202>], [], false); 

circuit_assembler.recipeBuilder()
.inputs([<gtadditions:ga_meta_item:32201> * 4,<gregtech:meta_item_2:32452> * 4,<gregtech:meta_item_2:32455> * 4,<gregtech:meta_item_2:32477> * 2,<gregtech:meta_item_1:12001> * 2, <gregtech:cable:516> * 2])
.fluidInputs(<liquid:soldering_alloy> * 40)
.outputs([<gtadditions:ga_meta_item:32202>])
.duration(150)
.EUt(30)
.buildAndRegister();

circuit_assembler.recipeBuilder()
.inputs([<gtadditions:ga_meta_item:32201> * 4,<gtadditions:ga_meta_item:32242> * 4,<gtadditions:ga_meta_item:32241>* 4,<gregtech:meta_item_2:32477> * 2,<gregtech:meta_item_1:12001> * 2, <gregtech:cable:516> * 2])
.fluidInputs(<liquid:soldering_alloy> * 40)
.outputs([<gtadditions:ga_meta_item:32202>])
.duration(150)
.EUt(30)
.buildAndRegister();
furnace.remove(<thermalfoundation:material:833>, <gregtech:meta_item_1:32627>);
Utils.removeRecipeByOutput(hammer, [<gregtech:meta_item_1:10197>], [], false); 
//Utils.removeRecipeByOutput(largeHammer, [<gregtech:meta_item_1:10197>], [], false); 
recipes.remove(<enderio:item_extract_speed_upgrade>);
recipes.addShaped(<enderio:item_extract_speed_upgrade>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<gregtech:meta_item_1:10095>, <minecraft:piston>, <gregtech:meta_item_1:10095>], [<gregtech:meta_item_1:10095>, <minecraft:redstone>, <gregtech:meta_item_1:10095>]]);
recipes.remove(<enderio:item_liquid_conduit:2>);
recipes.remove(<enderio:item_liquid_conduit>);
recipes.addShaped(<enderio:item_liquid_conduit> * 8, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_liquid_conduit:2> * 8, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<enderio:item_alloy_nugget:5>, <enderio:item_liquid_conduit:1>, <enderio:item_alloy_nugget:5>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
recipes.addShaped(<enderio:item_liquid_conduit:2> * 8, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<enderio:item_alloy_nugget:5>, <ore:fusedQuartz>, <enderio:item_alloy_nugget:5>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
for recipe in RecipeMaps.getCokeOvenRecipes(){
    recipe.remove();
    }
    
recipes.addShaped(<contenttweaker:steammotor>, [[<minecraft:stick>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:14033>],[<gregtech:meta_item_1:12095>, <gregtech:meta_item_1:14033>, <gregtech:meta_item_1:12095>], [<minecraft:iron_ingot>, <gregtech:meta_item_1:12095>, <minecraft:stick>]]);

recipes.remove(<gregtech:meta_item_1:32600>);
recipes.addShaped(<gregtech:meta_item_1:32600>, [[<gregtech:cable:5071>, <gregtech:cable:18>, <gregtech:meta_item_1:14033>],[<gregtech:cable:18>, <gregtech:meta_item_1:14297>, <gregtech:cable:18>], [<gregtech:meta_item_1:14033>, <gregtech:cable:18>, <gregtech:cable:5071>]]);
//recipes.addShaped(<gregtech:machine:1003>, [[<gregtech:metal_casing:1>, <contenttweaker:steampiston>, <gregtech:metal_casing:1>],[<contenttweaker:steammotor>, null, <contenttweaker:steampiston>], [<gregtech:metal_casing:1>, <contenttweaker:steammotor>, <gregtech:metal_casing:1>]]);
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
recipes.remove(<gregtech:machine:500>);
recipes.addShaped(<gregtech:machine:500>, [[null, null, null],[<gregtech:meta_item_1:12197>, <gregtech:meta_item_1:12197>, <gregtech:meta_item_1:12197>], [<gregtech:cable:5035>, <gregtech:machine_casing>, <gregtech:cable:5035>]]);
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
recipes.addShaped(<gregtech:meta_block_compressed_0:1>, [[<gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>],[<gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>], [<gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>, <gregtech:meta_item_1:10001>]]);
furnace.addRecipe(<minecraft:glass>, <gregtech:meta_item_1:2960>, 0.0);
furnace.addRecipe(<minecraft:gold_ingot>, <gregtech:meta_block_compressed_51:11>, 0.0);

//copper 
Utils.removeRecipeByOutput(arc,[<gregtech:meta_item_1:10087>],[],false);
Utils.removeRecipeByOutput(arc,[<gregtech:meta_item_1:9087>],[],false);

arc.recipeBuilder()
.inputs([<gregtech:meta_item_1:10018>])
.fluidInputs(<liquid:oxygen> * 1000)
.outputs([<gregtech:meta_item_1:10087>])
.duration(600)
.EUt(110)
.buildAndRegister();
recipes.addShaped(<gregtech:meta_block_compressed_11:8>, [[<gregtech:meta_item_1:10184>, <gregtech:meta_item_1:10184>, <gregtech:meta_item_1:10184>],[<gregtech:meta_item_1:10184>, <gregtech:meta_item_1:10184>, <gregtech:meta_item_1:10184>], [<gregtech:meta_item_1:10184>, <gregtech:meta_item_1:10184>, <gregtech:meta_item_1:10184>]]);
recipes.addShaped(<bonsaitrees:bonsaipot:1>, [[<gtadditions:ga_meta_item:1859>, <bonsaitrees:bonsaipot>, <gtadditions:ga_meta_item:1859>],[<gtadditions:ga_meta_item:1859>, null, <gtadditions:ga_meta_item:1859>], [<gtadditions:ga_meta_item:1859>, null, <gtadditions:ga_meta_item:1859>]]);
recipes.addShaped(<bonsaitrees:bonsaipot>, [[null, null, null],[<gtadditions:ga_meta_item:1235>, null, <gtadditions:ga_meta_item:1235>], [<gtadditions:ga_meta_item:1235>, <gtadditions:ga_meta_item:1235>, <gtadditions:ga_meta_item:1235>]]);
recipes.remove(<bonsaitrees:bonsaipot:1>);
recipes.remove(<bonsaitrees:bonsaipot>);
recipes.remove(<gregtech:machine:2540>);
recipes.addShaped(<gregtech:machine:2540>, [[<gregtech:meta_item_1:32643>, <ore:circuitExtreme>, <gregtech:meta_item_1:32643>],[<gregtech:meta_item_1:32603>, <gregtech:machine:504>, <gregtech:meta_item_1:32603>], [<gregtech:meta_item_2:26072>, <gregtech:cable:235>, <gregtech:meta_item_2:26072>]]);
/*
electrolyzer.findRecipe(240, [<gregtech:meta_item_1:2125> * 3], null).remove();
reactor.recipeBuilder()
.inputs(<gregtech:meta_item_1:2125> * 6, <gregtech:meta_item_1:2063> * 3)
.outputs(<gregtech:meta_item_1:1038>* 6)
.fluidOutputs(<liquid:chlorine> * 1500)
.duration(300)
.EUt(240)
.buildAndRegister();
large_chem.recipeBuilder()
.inputs(<gregtech:meta_item_1:2125> * 6)
.notConsumable(<gregtech:meta_item_1:2063>)
.outputs(<gregtech:meta_item_1:1038> * 8)
.fluidOutputs(<liquid:chlorine> * 2000)
.duration(300)
.EUt(240)
.buildAndRegister();
*/
Utils.removeRecipeByOutput(tower,[],[<liquid:sulfuric_heavy_fuel>],false); //triple all values-
tower.recipeBuilder()
.fluidInputs(<liquid:oil_heavy> * 4500)
.fluidOutputs(<liquid:sulfuric_heavy_fuel> * 7500,<liquid:sulfuric_light_fuel> * 1350,<liquid:sulfuric_naphtha> * 450,<liquid:sulfuric_gas> *18000)
.duration(400)
.EUt(10)
.buildAndRegister();
tower.recipeBuilder() 
.fluidInputs(<liquid:oil_medium> * 3000)
.fluidOutputs(<liquid:sulfuric_heavy_fuel> * 450,<liquid:sulfuric_light_fuel> * 1500,<liquid:sulfuric_naphtha> * 600,<liquid:sulfuric_gas> *1800)
.duration(400)
.EUt(10)
.buildAndRegister();
tower.recipeBuilder()
.fluidInputs(<liquid:oil_light> * 450)
.fluidOutputs(<liquid:sulfuric_heavy_fuel> * 300,<liquid:sulfuric_light_fuel> * 600,<liquid:sulfuric_naphtha> * 900,<liquid:sulfuric_gas> *7500)
.duration(400)
.EUt(10)
.buildAndRegister();
tower.recipeBuilder()
.fluidInputs(<liquid:oil> * 1500)
.fluidOutputs(<liquid:sulfuric_heavy_fuel> * 450,<liquid:sulfuric_light_fuel> * 1500,<liquid:sulfuric_naphtha> * 600,<liquid:sulfuric_gas> *1800)
.duration(400)
.EUt(10)
.buildAndRegister();
recipes.remove(<gregtech:machine:92>);
recipes.remove(<gregtech:machine:91>);
recipes.remove(<gregtech:machine:90>);
recipes.addShaped(<gregtech:machine:92>, [[<gregtech:cable:7026>, <gregtech:meta_item_1:10012>, <gregtech:cable:7026>],[<ore:circuitAdvanced>, <gregtech:machine:503>, <ore:circuitAdvanced>], [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>]]);
recipes.addShaped(<gregtech:machine:91>, [[<gregtech:cable:7018>, <gregtech:meta_item_1:10012>, <gregtech:cable:7018>],[<ore:circuitGood>, <gregtech:machine:502>, <ore:circuitGood>], [<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>]]);
recipes.addShaped(<gregtech:machine:90>, [[<gregtech:cable:7071>, <gregtech:meta_item_1:10012>, <gregtech:cable:7071>],[<ore:circuitBasic>, <gregtech:machine:501>, <ore:circuitBasic>], [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>]]);
recipes.addShaped(<gregtech:meta_block_compressed_11:7>, [[<gregtech:meta_item_1:10183>, <gregtech:meta_item_1:10183>, <gregtech:meta_item_1:10183>],[<gregtech:meta_item_1:10183>, <gregtech:meta_item_1:10183>, <gregtech:meta_item_1:10183>], [<gregtech:meta_item_1:10183>, <gregtech:meta_item_1:10183>, <gregtech:meta_item_1:10183>]]);

recipes.remove(<actuallyadditions:block_fermenting_barrel>);

fluid_extractor.recipeBuilder()
.inputs(<actuallyadditions:item_canola_seed> * 10)
.fluidOutputs(<liquid:canolaoil> * 1000)
.duration(150)
.EUt(16)
.buildAndRegister();

fluid_extractor.recipeBuilder()
.inputs(<actuallyadditions:item_misc:13> * 5)
.fluidOutputs(<liquid:canolaoil> * 1000)
.duration(150)
.EUt(16)
.buildAndRegister();

fermenter.recipeBuilder()
.fluidInputs(<liquid:canolaoil> * 10000)
.fluidOutputs(<liquid:refinedcanolaoil> * 10000)
.duration(300)
.EUt(16)
.buildAndRegister();

chemreactor.recipeBuilder()
.inputs(<actuallyadditions:item_misc:23> * 8)
.fluidInputs(<liquid:refinedcanolaoil> * 10000)
.fluidOutputs( <liquid:crystaloil> * 10000)
.duration(300)
.EUt(16)
.buildAndRegister();

chemreactor.recipeBuilder()
.fluidInputs(<liquid:crystaloil> * 5000, <liquid: creosote> * 5000)
.fluidOutputs( <liquid:empoweredoil> * 10000)
.duration(300)
.EUt(16)
.buildAndRegister();

chemreactor.recipeBuilder()
.inputs([<gregtech:meta_item_1:373>])
.fluidInputs( <liquid:empoweredoil> * 10000, <liquid: ethanol> * 1000)
.fluidOutputs(<liquid: bio_diesel> * 10000, <liquid: glycerol> * 1000)
.duration(120)
.EUt(30)
.buildAndRegister();

chemreactor.recipeBuilder()
.inputs([<gregtech:meta_item_1:373>])
.fluidInputs( <liquid:empoweredoil>* 10000, <liquid: methanol> * 1000)
.fluidOutputs(<liquid: bio_diesel> * 10000, <liquid: glycerol> * 1000)
.duration(120)
.EUt(30)
.buildAndRegister();

recipes.remove(<enderio:block_farm_station>);

assembler.recipeBuilder()
.inputs([<gregtech:machine:501>,<ore:circuitBasic> *2,<enderio:item_material:41>,<minecraft:diamond_hoe>])
.outputs([<enderio:block_farm_station>])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.duration(160)
.EUt(30)
.buildAndRegister();

<contenttweaker:certificate_of_being_a_noob>.addTooltip(format.darkBlue("Image by Emperdog"));

extruder.recipeBuilder()
.inputs([<gregtech:meta_block_compressed_19:7> * 64, <gregtech:meta_block_compressed_19:7> * 64])
.outputs([<contenttweaker:certificate_of_being_a_noob>])
.duration(30000000)
.EUt(3)
.buildAndRegister();

Utils.removeRecipeByOutput(mixer, [<gregtech:meta_item_1:2300>], [], false); 
Utils.removeRecipeByOutput(largeMix, [<gregtech:meta_item_1:2300>], [], false); 
recipes.addShaped(<enderio:item_material:48>, [[null, <minecraft:tallgrass:1>, null],[<minecraft:tallgrass:1>, null, <minecraft:tallgrass:1>], [null, <minecraft:tallgrass:1>, null]]);

centrifuge.recipeBuilder()
.inputs([<advancedrocketry:moonturf>])
.outputs([<gregtech:meta_item_1:1061>])
.chancedOutput(<gregtech:meta_item_1:1061>,3000,400)
.fluidOutputs(<liquid:helium3> * 40)
.duration(120)
.EUt(30)
.buildAndRegister();

centrifuge.recipeBuilder()
.inputs([<advancedrocketry:moonturf_dark>])
.outputs([<gregtech:meta_item_1:1061>])
.chancedOutput(<gregtech:meta_item_1:1061>,3000,400)
.fluidOutputs(<liquid:helium3> * 40)
.duration(120)
.EUt(30)
.buildAndRegister();

furnace.remove(<libvulpes:productingot:7>);
furnace.remove(<libvulpes:productingot:6>);
furnace.remove(<libvulpes:productingot:3>);
furnace.remove(<libvulpes:productingot:4>);
furnace.remove(<libvulpes:productingot:5>);
furnace.remove(<libvulpes:productingot:9>);
furnace.remove(<libvulpes:productingot:10>);
furnace.remove(<advancedrocketry:productingot:1>);
furnace.remove(<advancedrocketry:productingot>);

freezer.recipeBuilder()
.fluidInputs(<liquid:air>* 1000)
.fluidOutputs(<liquid:liquid_air> * 1000)
.duration(30)
.EUt(8192)
.buildAndRegister();
recipes.addShapeless(<gregtech:meta_item_1:8357>, [<thermalfoundation:material:802>]);
recipes.addShapeless(<gregtech:meta_block_compressed_22:5>, [<thermalfoundation:storage_resource:1>]);
recipes.removeShaped(<thermalfoundation:material:802> * 9, [[null, null, null],[null, <ore:blockFuelCoke>, null], [null, null, null]]);
recipes.removeShaped(<gregtech:meta_block_compressed_22:5>, [[<ore:fuelCoke>, <ore:fuelCoke>, <ore:fuelCoke>],[<ore:fuelCoke>, <ore:fuelCoke>, <ore:fuelCoke>], [<ore:fuelCoke>, <ore:fuelCoke>, <ore:fuelCoke>]]);
recipes.removeShaped(<thermalfoundation:storage_resource:1>, [[<ore:fuelCoke>, <ore:fuelCoke>, <ore:fuelCoke>],[<ore:fuelCoke>, <ore:fuelCoke>, <ore:fuelCoke>], [<ore:fuelCoke>, <ore:fuelCoke>, <ore:fuelCoke>]]);
recipes.removeShapeless(<thermalfoundation:material:802> * 9, [ <gregtech:meta_block_compressed_22:5>]);
recipes.removeShapeless(<thermalfoundation:material:802> * 9, [ <thermalfoundation:storage_resource:1>]);
recipes.removeShaped(<thermalfoundation:material:802>, [[null, null, null],[null, <gregtech:meta_block_compressed_22:5>, null], [null, null, null]]);
recipes.removeShaped(<thermalfoundation:material:802> * 9, [[null, null, null],[null, <ore:blockCoke>, null], [null, null, null]]);
recipes.removeShaped(<thermalfoundation:material:802> * 9, [[null, null, null],[null, <ore:blockFuelCoke>, null], [null, null, null]]);
recipes.addShaped(<danknull:dank_null_panel_0>, [[<minecraft:redstone_block>, <minecraft:coal_block>, <minecraft:redstone_block>],[<minecraft:coal_block>, <minecraft:glass>, <minecraft:coal_block>], [<minecraft:redstone_block>, <minecraft:coal_block>, <minecraft:redstone_block>]]);
recipes.addShaped(<danknull:dank_null_0>, [[<danknull:dank_null_panel_0>, <danknull:dank_null_panel_0>, <danknull:dank_null_panel_0>],[<danknull:dank_null_panel_0>, <minecraft:coal_block>, <danknull:dank_null_panel_0>], [<danknull:dank_null_panel_0>, <danknull:dank_null_panel_0>, <danknull:dank_null_panel_0>]]);
recipes.remove(<danknull:dank_null_0>);
recipes.remove(<danknull:dank_null_panel_0>);

implosion.recipeBuilder()
.inputs(<minecraft:blaze_powder> *15)
.outputs(<minecraft:blaze_rod> *3)
.property("explosives", 10)
.duration(20)
.EUt(30)
.buildAndRegister();

/*
mixer.recipeBuilder()
.inputs(<ore:dustRedstone>,<gregtech:meta_item_1:2026>)
.outputs(<minecraft:glowstone_dust> * 2)
.duration(120)
.EUt(30)
.buildAndRegister();
*/

centrifuge.recipeBuilder()
.inputs([<advancedrocketry:electricmushroom>])
.fluidOutputs(<liquid:methane> * 500)
.duration(100)
.EUt(30)
.buildAndRegister();

recipes.remove(<gregtech:machine:2514>);
recipes.addShaped(<gregtech:machine:2514>, [[<gregtech:meta_item_1:12300>, <gregtech:machine:63>, <gregtech:meta_item_1:12300>],[<gregtech:machine:62>, <ore:circuitExtreme>, <gregtech:machine:62>], [<gregtech:meta_item_1:12300>, <gregtech:machine:505>, <gregtech:meta_item_1:12300>]]);
furnace.remove(<gregtech:meta_item_1:2047>);

Utils.removeRecipeByOutput(large_chem, [], [<liquid:ortho_xylene> * 10000], false);

large_chem.recipeBuilder()
.fluidInputs(<liquid:methanol> *1000, <liquid:toluene> * 1000)
.fluidOutputs(<liquid:ortho_xylene> * 1000,<liquid:water> * 1000 )
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
.duration(800)
.EUt(120)
.buildAndRegister();


Utils.removeRecipeByOutput(circuit_assembler, [<gregtech:meta_item_2:32492>], [], false);

circuit_assembler.recipeBuilder()
.inputs(<gregtech:meta_item_2:32481> * 4,<gregtech:meta_item_2:16001> * 2, <gtadditions:ga_meta_item:32033>, <gtadditions:ga_meta_item:32246>* 4, <gtadditions:ga_meta_item:32244>* 4,<gtadditions:ga_meta_item:32245> *4)
.outputs(<gregtech:meta_item_2:32492> * 4)
.fluidInputs(<liquid:soldering_alloy> *200)
.duration(150)
.EUt(2000)
.buildAndRegister();

recipes.addShapeless(<thermalfoundation:material:657>, [<architecturecraft:sawblade>]);
recipes.addShapeless(<appliedenergistics2:part:221>, [<appliedenergistics2:part:220>,<ore:gemLapis>]);
recipes.addShapeless(<appliedenergistics2:part:220>, [<appliedenergistics2:part:221>]);
furnace.remove(<gregtech:meta_item_1:10047>);

macerator.recipeBuilder()
.inputs([<libvulpes:ore0>])
.outputs(<libvulpes:productdust> * 2)
.duration(120)
.EUt(17)
.buildAndRegister();

electrolyzer.recipeBuilder()
.inputs([<libvulpes:productdust>])
.outputs(<gregtech:meta_item_1:2036> * 2)
.duration(120)
.EUt(17)
.buildAndRegister();

chemreactor.findRecipe(1920, [<gregtech:meta_item_2:32467>,<gregtech:cable:5354> * 8], null).remove();
large_chem.findRecipe(1920, [<gregtech:meta_item_2:32467>,<gregtech:cable:5354> * 8], null).remove();



assembler.recipeBuilder()
.inputs([<enderio:block_reservoir> * 4, <gregtech:machine:502>])
.outputs([<gtadditions:ga_meta_item:32571>])
.duration(200)
.EUt(110)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<enderio:block_reservoir> * 4, <gregtech:machine:503>])
.outputs([<gtadditions:ga_meta_item:32572>])
.duration(200)
.EUt(500)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<enderio:block_reservoir> * 4, <gregtech:machine:504>])
.outputs([<gtadditions:ga_meta_item:32573>])
.duration(200)
.EUt(2048)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<enderio:block_reservoir> * 4, <gregtech:machine:505>])
.outputs([<gtadditions:ga_meta_item:32574>])
.duration(200)
.EUt(8192)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<enderio:block_reservoir> * 4, <gregtech:machine:506>])
.outputs([<gtadditions:ga_meta_item:32575>])
.duration(200)
.EUt(32768)
.buildAndRegister();


assembler.recipeBuilder()
.inputs([<enderio:block_reservoir> * 4,<gregtech:machine:507>])
.outputs([<gtadditions:ga_meta_item:32576>])
.duration(200)
.EUt(131072)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<enderio:block_reservoir> * 4, <gregtech:machine:508>])
.outputs([<gtadditions:ga_meta_item:32577>])
.duration(200)
.EUt(524288)
.buildAndRegister();

//Upgrade recipes

assembler.recipeBuilder()
.inputs([<enderio:block_reservoir> * 4, <gregtech:machine:502>])
.outputs([<gtadditions:ga_meta_item:32571>])
.duration(200)
.EUt(110)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<enderio:block_reservoir> * 4, <gtadditions:ga_meta_item:32572>])
.outputs([<gtadditions:ga_meta_item:32573>])
.duration(200)
.EUt(2048)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<enderio:block_reservoir> * 4, <gtadditions:ga_meta_item:32573>])
.outputs([<gtadditions:ga_meta_item:32574>])
.duration(200)
.EUt(8192)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<enderio:block_reservoir> * 4, <gtadditions:ga_meta_item:32574>])
.outputs([<gtadditions:ga_meta_item:32575>])
.duration(200)
.EUt(32768)
.buildAndRegister();


assembler.recipeBuilder()
.inputs([<enderio:block_reservoir> * 4, <gtadditions:ga_meta_item:32575>])
.outputs([<gtadditions:ga_meta_item:32576>])
.duration(200)
.EUt(131072)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<enderio:block_reservoir> * 4, <gtadditions:ga_meta_item:32576>])
.outputs([<gtadditions:ga_meta_item:32577>])
.duration(200)
.EUt(524288)
.buildAndRegister();


Utils.removeRecipeByOutput(fusion, [], [<liquid:plutonium> * 16], false);
fusion.recipeBuilder()
.fluidInputs(<liquid:helium> * 16, <liquid:uranium> * 16)
.fluidOutputs(<liquid:plutonium> * 16)
.property("eu_to_start",120000000) 
.duration(128)
.EUt(32000)
.buildAndRegister();

recipes.addShaped(<gregtech:machine:2543>, [[<ore:circuitMaster>, <gregtech:meta_item_2:26235>, <ore:circuitMaster>],[<gregtech:meta_item_2:26235>, <gregtech:machine:506>, <gregtech:meta_item_2:26235>], [<gregtech:fluid_pipe:3235>, <gregtech:meta_item_2:26235>, <gregtech:fluid_pipe:3235>]]);
recipes.remove(<gregtech:machine:2543>);

blast_furnace.findRecipe(480, [<minecraft:emerald_block>,<gtadditions:ga_meta_item:32017> ],[<liquid:helium> * 1000]).remove();
blast_furnace.findRecipe(480, [<gtadditions:ga_meta_item:32017>,<gregtech:meta_block_compressed_13:4>],[<liquid:helium> * 1000]).remove();

circuit_assembler.recipeBuilder()
.inputs([<gtadditions:ga_meta_item:32033>, <gregtech:meta_item_2:16001> * 8,<gregtech:meta_item_2:32486>])
.fluidInputs(<liquid:soldering_alloy> * 200)
.outputs([<gregtech:meta_item_2:32492> * 4])
.duration(50)
.EUt(9600)
.buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32309>.withTag({"GT.Detrav": {}})], [], false);

recipes.addShaped(<gtadditions:ga_meta_item:32309>.withTag({"GT.Detrav": {}}), [[<gtadditions:ga_meta_item:1184>, <gtadditions:ga_meta_item:1184>, <contenttweaker:steammotor>],[<contenttweaker:steampiston>, <gtadditions:ga_meta_item:1184>, <gtadditions:ga_meta_item:1184>], [<gtadditions:ga_meta_item:1184>, <contenttweaker:steampiston>, <gtadditions:ga_meta_item:1184>]]);
recipes.remove(<gregtech:machine:2004>);
recipes.addShaped(<gregtech:machine:2004>, [[<gregtech:multiblock_casing:2>, <gregtech:meta_item_1:32655>, <gregtech:multiblock_casing:2>],[<ore:circuitMaster>, <gregtech:machine:506>, <ore:circuitMaster>], [<gregtech:multiblock_casing:2>, <gregtech:meta_item_1:32655>, <gregtech:multiblock_casing:2>]]);

Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32250> * 24], [], true);

assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12205>,<gregtech:meta_item_1:12883>, <gregtech:meta_item_2:16308> *8])
.fluidInputs(<liquid:soldering_alloy> * 144 )
.outputs([<gtadditions:ga_meta_item:32250> * 24])
.duration(80)
.EUt(7904)
.buildAndRegister();
/*
recipes.remove(<gregtech:machine:2530>);
recipes.addShaped(<gregtech:machine:2530>, [[<gtadditions:ga_multiblock_casing:1>, <ore:circuitExtreme>, <gtadditions:ga_multiblock_casing:1>],[<gregtech:meta_item_1:32603>, <gregtech:machine:193>, <gregtech:meta_item_1:32603>], [<gtadditions:ga_multiblock_casing:1>, <ore:circuitExtreme>, <gtadditions:ga_multiblock_casing:1>]]);
*/
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32131>], [], true);
assembler.recipeBuilder()
.inputs([<gtadditions:ga_meta_item:1184>, <ore:circuitBasic> * 2])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
.outputs([<gtadditions:ga_meta_item:32131>])
.duration(80)
.EUt(30)
.buildAndRegister();

recipes.remove(<gregtech:machine:4212>);
recipes.addShaped(<gregtech:machine:4212>, [[<gregtech:fluid_pipe:2095>, <gregtech:fluid_pipe:2095>, <gregtech:fluid_pipe:2095>],[<contenttweaker:steampiston>, <gregtech:machine_casing:10>, <contenttweaker:steampiston>], [<gregtech:meta_item_2:18095>, <gregtech:fluid_pipe:2095>, <gregtech:meta_item_2:18095>]]);

recipes.addShaped(<gregtech:meta_item_2:32455> * 2, [[<gregtech:meta_item_1:32627>, <gregtech:cable:18>, <gregtech:meta_item_1:32627>],[<gregtech:cable:18>, <gregtech:meta_item_1:2101>, <gregtech:cable:18>], [null, <gregtech:cable:18>, null]]);
recipes.addShaped(<gregtech:meta_item_2:32455> * 2, [[<gregtech:meta_item_1:32627>, <gregtech:cable:18>, <gregtech:meta_item_1:32627>],[<gregtech:cable:18>, <gregtech:meta_item_1:2106>, <gregtech:cable:18>], [null, <gregtech:cable:18>, null]]);
recipes.remove(<apotheosis:hellshelf>);
recipes.addShaped(<apotheosis:hellshelf>, [[<minecraft:nether_brick>, <ore:logWood>, <minecraft:nether_brick>],[<minecraft:book>, <minecraft:book>, <minecraft:book>], [<minecraft:nether_brick>, <ore:logWood>, <minecraft:nether_brick>]]);
recipes.addShaped(<apotheosis:hellshelf>, [[<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>],[null, <minecraft:bookshelf>, null], [<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>]]);
recipes.addShapeless(<gregtech:machine:430>, [<actuallyadditions:block_atomic_reconstructor>]);
recipes.addShaped(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 45 as short}]}), [[<minecraft:red_nether_brick>, <minecraft:netherrack>, <minecraft:red_nether_brick>],[<minecraft:netherrack>, <minecraft:book>, <minecraft:netherrack>], [<minecraft:nether_brick>, <minecraft:netherrack>, <minecraft:nether_brick>]]);

// coke oven and primitve alloy
recipes.addShaped(<gregtech:machine:1002>, [[<gregtech:metal_casing:1>, <contenttweaker:steammotor>, <gregtech:metal_casing:1>],[<contenttweaker:steammotor>, null, <contenttweaker:steampiston>], [<gregtech:metal_casing:1>, <contenttweaker:steampiston>, <gregtech:metal_casing:1>]]);
recipes.addShaped(<gregtech:machine:1000>, [[<gregtech:metal_casing:8>, <gtadditions:ga_meta_item:1095>, <gregtech:metal_casing:8>],[<gtadditions:ga_meta_item:1095>, null, <gtadditions:ga_meta_item:1095>], [<gregtech:metal_casing:8>, <gtadditions:ga_meta_item:1095>, <gregtech:metal_casing:8>]]);

/*
Utils.removeRecipeByOutput(mixer, [], [<liquid:nitro_fuel> * 750], true);

mixer.recipeBuilder()
.fluidInputs([<liquid:bio_diesel> * 1000 ,<liquid:tetranitromethane> * 20])
.fluidOutputs([<liquid:nitro_fuel> * 1000])
.EUt(480)
.duration(20)
.buildAndRegister();

Utils.removeRecipeByOutput(largeMix, [], [<liquid:nitro_fuel> * 750], true);
largeMix.recipeBuilder()
.fluidInputs([<liquid:bio_diesel> * 1000, <liquid:tetranitromethane> * 20])
.fluidOutputs([<liquid:nitro_fuel> * 1000])
.circuit(2)
.EUt(480)
.duration(20)
.buildAndRegister();

*/

Utils.removeRecipeByOutput(mixer, [], [<liquid:nitro_fuel> * 1000], true);

mixer.recipeBuilder()
.fluidInputs([<liquid:fuel> * 2000 ,<liquid:tetranitromethane> * 20 ])
.fluidOutputs([<liquid:nitro_fuel> * 2000])
.EUt(480)
.duration(20)
.buildAndRegister();

Utils.removeRecipeByOutput(largeMix, [], [<liquid:nitro_fuel> * 1000], true);

largeMix.recipeBuilder()
.fluidInputs([<liquid:fuel> * 2000, <liquid:tetranitromethane> * 20])
.fluidOutputs([<liquid:nitro_fuel> * 2000])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
.EUt(480)
.duration(20)
.buildAndRegister();



//Nitro Benzeene

Utils.removeRecipeByOutput(chemreactor, [], [<liquid:nitro_benzene> * 1000], true);

chemreactor.recipeBuilder()
.fluidInputs(<liquid:nitration_mixture> * 2000, <liquid:benzene> * 5000, <liquid:distilled_water> * 2000)
.fluidOutputs(<liquid:nitro_benzene> * 8000, <liquid:diluted_sulfuric_acid> * 1000)
.EUt(320)
.duration(120)
.buildAndRegister();

Utils.removeRecipeByOutput(large_chem, [], [<liquid:nitro_benzene> * 1000], true);

large_chem.recipeBuilder()
.fluidInputs(<liquid:nitration_mixture> * 2000, <liquid:benzene> * 5000,<liquid:distilled_water> * 2000)
.fluidOutputs(<liquid:nitro_benzene> * 8000, <liquid:diluted_sulfuric_acid> * 1000)
.EUt(320)
.duration(120)
.buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gregtech:machine:4239>], [], true);

assembler.recipeBuilder()
.inputs(<gregtech:meta_item_1:32600> * 4, <gregtech:meta_item_1:32610> * 4,<gregtech:machine:501>, <gregtech:frame_steel>, <gregtech:meta_item_2:26017> * 2, <ore:circuitBasic>)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
.outputs(<gregtech:machine:4239>)
.EUt(30)
.duration(400)
.buildAndRegister();

//start of weirdness
distillery.findRecipe(100, [<gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<fluid:biomass>* 2000]).remove();

distillery.recipeBuilder()
.fluidInputs(<liquid:biomass> * 1000)
.fluidOutputs(<liquid:ethanol> * 600)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.EUt(16)
.duration(80)
.buildAndRegister();

Utils.removeRecipeByOutput(centrifuge, [], [<liquid:oil> * 100], true);
Utils.removeRecipeByOutput(large_centrifuge, [], [<liquid:oil> * 100], true);

recipes.addShaped(<variegated:defiled_ground> * 4, [[<ore:itemSkull>, <minecraft:soul_sand>, <ore:itemSkull>],[<minecraft:soul_sand>, <enderio:item_alloy_ingot:7>, <minecraft:soul_sand>], [<ore:itemSkull>, <minecraft:soul_sand>, <ore:itemSkull>]]);
recipes.remove(<variegated:defiled_ground>);

//concrete recipes

mixer.recipeBuilder()
.inputs([<minecraft:concrete_powder> * 64])
.fluidInputs(<liquid:water> * 100)
.outputs([<minecraft:concrete> * 64])
.duration(100)
.EUt(16)
.buildAndRegister();

val i = 0;
for i in 1 to 16{
mixer.recipeBuilder()

.inputs([itemUtils.getItem("minecraft:concrete_powder", i)* 64])
.fluidInputs(<liquid:water> * 1000)
.outputs(itemUtils.getItem("minecraft:concrete",i) * 64)
.duration(100)
.EUt(16)
.buildAndRegister();
}
//Large concrete recipes

largeMix.recipeBuilder()
.inputs([<minecraft:concrete_powder> * 64])
.fluidInputs(<liquid:water> * 100)
.outputs([<minecraft:concrete> * 64])
.duration(100)
.EUt(16)
.buildAndRegister();

val f = 0;
for f in 1 to 16{
largeMix.recipeBuilder()
.inputs([itemUtils.getItem("minecraft:concrete_powder", f)* 64])
.fluidInputs(<liquid:water> * 1000)
.outputs(itemUtils.getItem("minecraft:concrete",f) * 64)
.duration(100)
.EUt(16)
.buildAndRegister();
}

recipes.remove(<gregtech:machine:4024>);
recipes.addShaped(<gregtech:machine:4024>, [[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],[<gregtech:meta_item_1:12184>, <gregtech:machine:501>, <gregtech:meta_item_1:12184>], [<gregtech:cable:5071>, <gregtech:meta_item_2:8184>, <gregtech:cable:5071>]]);
recipes.remove(<draconicevolution:diss_enchanter>);
recipes.addShaped(<draconicevolution:diss_enchanter>, [[<minecraft:emerald>, <gtadditions:ga_meta_item:1001>, <minecraft:emerald>],[<gtadditions:ga_meta_item:1001>, <minecraft:enchanting_table>, <gtadditions:ga_meta_item:1001>], [<minecraft:bookshelf>, <minecraft:bookshelf>, <minecraft:bookshelf>]]);
//MOB stuff
recipes.remove(<mob_grinding_utils:fan>);
recipes.addShaped(<mob_grinding_utils:fan>, [[<gregtech:meta_item_1:12001>, <minecraft:redstone>, <gregtech:cable:5071>],[<minecraft:redstone>, <gregtech:machine:501>, <gregtech:meta_item_2:18184>], [<gregtech:meta_item_1:12001>, <minecraft:redstone>, <gregtech:cable:5071>]]);
recipes.remove(<mob_grinding_utils:spikes>);
recipes.addShaped(<mob_grinding_utils:spikes>, [[null, <gregtech:meta_item_2:33>, null],[<gregtech:meta_item_2:33>, <gregtech:machine:501>, <gregtech:meta_item_2:33>], [<gtadditions:ga_meta_item:1033>, <gtadditions:ga_meta_item:1033>, <gtadditions:ga_meta_item:1033>]]);
recipes.remove(<mob_grinding_utils:saw>);
recipes.addShaped(<mob_grinding_utils:saw>, [[<gregtech:meta_item_1:12183>, <gregtech:meta_item_2:183>, <gregtech:meta_item_1:12183>],[<gregtech:meta_item_2:25111>, <mob_grinding_utils:spikes>, <gregtech:meta_item_2:25111>], [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>]]);
recipes.remove(<mob_grinding_utils:fan_upgrade:1>);
recipes.remove(<mob_grinding_utils:fan_upgrade>);
recipes.addShaped(<mob_grinding_utils:fan_upgrade:1>, [[<gregtech:meta_item_1:12033>, <minecraft:feather>, <gregtech:meta_item_1:12033>],[null, <gregtech:meta_item_2:18184>, null], [<gregtech:meta_item_1:12033>, <minecraft:feather>, <gregtech:meta_item_1:12033>]]);
recipes.addShaped(<mob_grinding_utils:fan_upgrade>, [[<gregtech:meta_item_1:12033>, null, <gregtech:meta_item_1:12033>],[<minecraft:feather>, <gregtech:meta_item_2:18184>, <minecraft:feather>], [<gregtech:meta_item_1:12033>, null, <gregtech:meta_item_1:12033>]]);
recipes.addShaped(<mob_grinding_utils:fan_upgrade:2>, [[<gregtech:meta_item_1:12033>, <minecraft:feather>, <gregtech:meta_item_1:12033>],[<minecraft:feather>, <gregtech:meta_item_2:18184>, <minecraft:feather>], [<gregtech:meta_item_1:12033>, <minecraft:feather>, <gregtech:meta_item_1:12033>]]);
recipes.remove(<mob_grinding_utils:saw_upgrade:4>);
recipes.remove(<mob_grinding_utils:saw_upgrade:3>);
recipes.remove(<mob_grinding_utils:saw_upgrade>);
recipes.remove(<mob_grinding_utils:fan_upgrade:2>);
recipes.remove(<mob_grinding_utils:saw_upgrade:2>);
recipes.addShaped(<mob_grinding_utils:saw_upgrade:4>, [[<gregtech:meta_item_1:12026>, <minecraft:spider_eye>, <gregtech:meta_item_1:12026>],[<minecraft:spider_eye>, <gregtech:meta_item_1:12215>, <minecraft:spider_eye>], [<gregtech:meta_item_1:12026>, <minecraft:spider_eye>, <gregtech:meta_item_1:12026>]]);
recipes.addShaped(<mob_grinding_utils:saw_upgrade:3>, [[<gregtech:meta_item_1:12026>, <minecraft:rotten_flesh>, <gregtech:meta_item_1:12026>],[<minecraft:rotten_flesh>, <gregtech:meta_item_1:12215>, <minecraft:rotten_flesh>], [<gregtech:meta_item_1:12026>, <minecraft:rotten_flesh>, <gregtech:meta_item_1:12026>]]);
recipes.addShaped(<mob_grinding_utils:saw_upgrade:2>, [[<gregtech:meta_item_1:12026>, <minecraft:blaze_powder>, <gregtech:meta_item_1:12026>],[<minecraft:blaze_powder>, <gregtech:meta_item_1:12215>, <minecraft:blaze_powder>], [<gregtech:meta_item_1:12026>, <minecraft:blaze_powder>, <gregtech:meta_item_1:12026>]]);
recipes.addShaped(<mob_grinding_utils:saw_upgrade>, [[<gregtech:meta_item_1:12026>, <gregtech:meta_item_2:33>, <gregtech:meta_item_1:12026>],[<gregtech:meta_item_2:33>, <gregtech:meta_item_1:12215>, <gregtech:meta_item_2:33>], [<gregtech:meta_item_1:12026>, <gregtech:meta_item_2:33>, <gregtech:meta_item_1:12026>]]);
//break two

lathe.recipeBuilder()
.inputs([<gregtech:meta_item_1:17033>])
.outputs([<appliedenergistics2:part:120> * 10])
.duration(100)
.EUt(16)
.buildAndRegister();

furnace.remove(<thermalfoundation:material:165>);
furnace.remove(<thermalfoundation:material:166>);
recipes.addShaped(<thermalfoundation:material:1026>, [[null, <gregtech:meta_item_1:2065>, null],[<gregtech:meta_item_1:2065>, <minecraft:blaze_powder>, <gregtech:meta_item_1:2065>], [null, <gregtech:meta_item_1:2065>, null]]);

/*
recipes.addShapeless(<gregtech:metal_casing_grisium>,[<gtadditions:ga_metal_casing_1:8>]);
Utils.removeRecipeByOutput(assembler, [<gregtech:machine:15000>], [], false);

assembler.recipeBuilder()
.inputs(<ore:circuitExtreme> *2,<appliedenergistics2:material:42>,<ae2wtlib:infinity_booster_card>,<gregtech:machine:504>,<gtadditions:ga_metal_casing_1:8>)
.outputs(<gregtech:machine:15000>)
.EUt(30)
.duration(2048)
.buildAndRegister();
*/

Utils.removeRecipeByOutput(fusion, [], [<liquid:rutherfordium>], false);
Utils.removeRecipeByOutput(fusion, [], [<liquid:duranium>], false);
Utils.removeRecipeByOutput(fusion, [], [<liquid:tritanium>], false);
Utils.removeRecipeByOutput(fusion, [], [<liquid:plasma.radon>], false);
Utils.removeRecipeByOutput(fusion, [], [<liquid:dubnium>], false);

fusion.recipeBuilder()
.fluidInputs(<liquid:neon>* 144, <liquid:plutonium> * 144)
.fluidOutputs(<liquid:rutherfordium> * 144)
.property("eu_to_start",150000000) 
.duration(64)
.EUt(16384)
.buildAndRegister();

fusion.recipeBuilder()
.fluidInputs(<liquid:radon>* 1125, <liquid:gallium> * 144)
.fluidOutputs(<liquid:duranium> * 144)
.property("eu_to_start",180000000) 
.duration(64)
.EUt(24576)
.buildAndRegister();

fusion.recipeBuilder()
.fluidInputs(<liquid:duranium>* 288, <liquid:titanium> * 432)
.fluidOutputs(<liquid:tritanium> * 144)
.property("eu_to_start",200000000) 
.duration(64)
.EUt(32768)
.buildAndRegister();

fusion.recipeBuilder()
.fluidInputs(<liquid:mercury>* 64, <liquid:gold> * 64)
.fluidOutputs(<liquid:plasma.radon> * 500)
.property("eu_to_start",200000000) 
.duration(64)
.EUt(32768)
.buildAndRegister();

fusion.recipeBuilder()
.fluidInputs(<liquid:neon> * 288, <liquid:americium> * 288)
.fluidOutputs(<liquid:dubnium> * 288)
.property("eu_to_start",200000000) 
.duration(64)
.EUt(131072)
.buildAndRegister();

fusion.recipeBuilder()
.fluidInputs(<liquid:neon> * 288, <liquid:americium243> * 288)
.fluidOutputs(<liquid:dubnium> * 288)
.property("eu_to_start",200000000) 
.duration(64)
.EUt(131072)
.buildAndRegister();


//grappling hooks

recipes.remove(<hooked:microcrafting:2>);

lathe.recipeBuilder()
.inputs(<gregtech:meta_item_1:14033>)
.outputs(<hooked:microcrafting:2> * 2)
.duration(64)
.EUt(30)
.buildAndRegister();

lathe.recipeBuilder()
.inputs(<gregtech:meta_item_1:14184>)
.outputs( <hooked:microcrafting:2>* 4)
.duration(64)
.EUt(30)
.buildAndRegister();

recipes.remove(<hooked:hook:3>);
recipes.remove(<hooked:hook:2>);
recipes.remove(<hooked:hook:1>);
recipes.addShaped(<hooked:hook:3>, [[<gregtech:meta_item_1:12215>, <gregtech:meta_item_1:12215>, <actuallyadditions:block_crystal>],[null, <hooked:hook:2>, <gregtech:meta_item_1:12215>], [<gregtech:meta_item_1:12215>, null, <gregtech:meta_item_1:12215>]]);
recipes.addShaped(<hooked:hook:2>, [[null, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12111>],[null, <hooked:hook:1>, <gregtech:meta_item_1:12111>], [<gregtech:meta_item_1:12111>, null, null]]);
recipes.addShaped(<hooked:hook:1>, [[<gtadditions:ga_meta_item:1033>, <gtadditions:ga_meta_item:1033>, <gregtech:meta_item_2:1033>],[null, <hooked:microcrafting:3>, <gtadditions:ga_meta_item:1033>], [<hooked:microcrafting:3>, null, <gtadditions:ga_meta_item:1033>]]);

recipes.addShaped(<fluxnetworks:fluxpoint>, [[null, null, null],[null, <fluxnetworks:fluxplug>, null], [null, null, null]]);
recipes.addShaped(<fluxnetworks:fluxplug>, [[null, null, null],[null, <fluxnetworks:fluxpoint>, null], [null, null, null]]);

recipes.remove(<enderio:item_advanced_item_filter>);
recipes.addShaped(<enderio:item_advanced_item_filter>, [[<gregtech:meta_item_1:12215>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12215>],[<gregtech:meta_item_1:12111>, <enderio:item_basic_item_filter>, <gregtech:meta_item_1:12111>], [<gregtech:meta_item_1:12215>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12215>]]);

        fluid_extractor.recipeBuilder()
        .inputs([<actuallyadditions:item_solidified_experience> * 64])
        .fluidOutputs(<liquid:xpjuice> * 10240)
        .duration(100)
        .EUt(30)
        .buildAndRegister();

        compressor.recipeBuilder()
        .inputs([<minecraft:apple> * 8])
        .outputs([<gregtech:meta_item_2:32570>])
        .duration(300)
        .EUt(2)
        .buildAndRegister();

        hammer.recipeBuilder()
        .inputs([<advancedrocketry:charcoallog>])
        .outputs([<minecraft:coal:1> * 4])
        .duration(100)
        .EUt(30)
        .buildAndRegister();
        recipes.remove(<enderio:item_capacitor_stellar>);
        recipes.addShaped(<enderio:item_capacitor_stellar>, [[<gregtech:meta_item_1:12227>, <gregtech:meta_item_1:2834>, <gregtech:meta_item_1:12227>],[<enderio:item_basic_capacitor:2>, <minecraft:lapis_block>, <enderio:item_basic_capacitor:2>], [<gregtech:meta_item_1:12227>, <gregtech:meta_item_1:2834>, <gregtech:meta_item_1:12227>]]);

        Utils.removeRecipeByOutput(forming, [<gtadditions:ga_meta_item:32230>], [], false);
        recipes.remove(<minecraft:end_crystal>);
        recipes.removeShaped(<minecraft:end_crystal>, [[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>],[<ore:paneGlassColorless>, <gregtech:meta_item_1:32725>, <ore:paneGlassColorless>], [<ore:paneGlassColorless>, <gregtech:meta_item_1:32672>, <ore:paneGlassColorless>]]);

        Utils.removeRecipeByOutput(tower, [], [<liquid:argon>], false);

        tower.recipeBuilder()
        .fluidInputs(<liquid:liquid_air> * 100000)
        .fluidOutputs(<liquid:nitrogen> * 78000,<liquid:oxygen> * 20000,<liquid:argon> * 1000,<liquid:carbon_dioxide> * 500, <liquid:neon> * 100, <liquid:helium> * 50,<liquid:methane> * 20,<liquid:krypton> * 10, <liquid:hydrogen> * 5, <liquid:xenon>)
        .duration(600)
        .EUt(510)
        .buildAndRegister();

    Utils.removeRecipeByOutput(blast_furnace, [<gregtech:meta_item_1:11077>], [], false);

    blast_furnace.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2077>)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_item_1:11077>)
    .property("temperature", 2183) //this is a minimal temperature at which the item will be smelted
    .duration(2226)
    .EUt(120)
    .buildAndRegister();


forming.recipeBuilder()
.inputs(<enderio:item_alloy_ingot:7> * 2,<enderio:block_enderman_skull>,<gregtech:meta_item_1:2061> * 2,<enderio:item_alloy_ingot:2>)
.outputs(<enderio:item_material:43>)
.EUt(16)
.duration(150)
.buildAndRegister();
//remove upcraft recipes
/*
Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_2:32457> * 16], [], true);
Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_2:32458> * 8], [], true);
Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_2:32459> * 12], [], true);
Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_2:32460> * 16], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32240> * 16], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32241> * 12], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32242> * 8], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32243> * 16], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32244> * 16], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32245> * 12], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32246> * 8], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32247> * 16], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32248> * 16], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32249> * 8], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32250> * 12], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32251> * 16], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32252> * 16], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32253> * 8], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32254> * 12], [], true);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32255> * 16], [], true);
*/

//Fix blood ratio
Utils.removeRecipeByOutput(centrifuge, [], [<liquid:blood> * 250], true);
Utils.removeRecipeByOutput(large_centrifuge, [], [<liquid:blood> * 250], true);

implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32434>)
    .property("explosives", <gtadditions:ga_explosive:4> * 4)
    .outputs(<gregtech:meta_item_2:32435>)
    .duration(20)
    .EUt(30)
    .buildAndRegister();

    implosion.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2111> * 4)
    .property("explosives", <gtadditions:ga_explosive:4> * 24)
    .outputs(<minecraft:diamond> * 3)
    .duration(20)
    .EUt(30)
    .buildAndRegister();




electrolyzer.findRecipe(30,[<minecraft:snowball> * 3] ,null).remove();

electrolyzer.recipeBuilder()
.inputs([<minecraft:snowball> * 4])
.fluidOutputs([<liquid:hydrogen> * 2000,<liquid:oxygen> * 1000])
.duration(1244)
.EUt(30)
.buildAndRegister();

recipes.remove(<randomthings:spectreenergyinjector>);
recipes.addShaped(<randomthings:spectreenergyinjector>, [[<minecraft:obsidian>, <randomthings:spectrelens>, <minecraft:obsidian>],[<randomthings:ingredient:12>, <randomthings:spectrecharger>, <randomthings:ingredient:12>], [<minecraft:obsidian>, <randomthings:ingredient:12>, <minecraft:obsidian>]]);

//naq

nuclear_reactor.recipeBuilder()
.inputs([<gregtech:meta_item_1:14307> * 2])
.property("temperature",1000)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.outputs([<gregtech:meta_item_1:14051> * 2, <gtadditions:ga_meta_item:32312> * 16])
.duration(500)
.EUt(30)
.buildAndRegister();

nuclear_breeder.recipeBuilder()
.inputs([<gregtech:meta_item_1:14307> * 2, <gtadditions:ga_meta_item:17075> * 10])
.property("temperature",1000)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.outputs([<gregtech:meta_item_1:14051> * 2, <gtadditions:ga_meta_item:32312> * 8 , <gtadditions:ga_meta_item:9815> * 10 , <gtadditions:ga_meta_item:9819> * 10])
.duration(500)
.EUt(30)
.buildAndRegister();

//enriched naq

nuclear_reactor.recipeBuilder()
.inputs([<gregtech:meta_item_1:14309> * 2])
.property("temperature",1000)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.outputs([<gregtech:meta_item_1:14307> * 2, <gtadditions:ga_meta_item:32312> * 16])
.duration(500)
.EUt(30)
.buildAndRegister();

nuclear_breeder.recipeBuilder()
.inputs([<gregtech:meta_item_1:14309> * 2, <gtadditions:ga_meta_item:16053>* 10])
.property("temperature",1000)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.outputs([<gregtech:meta_item_1:14307> * 2, <gtadditions:ga_meta_item:32312> * 8, <gtadditions:ga_meta_item:11809> * 10 , <gtadditions:ga_meta_item:11053> * 10])
.duration(500)
.EUt(30)
.buildAndRegister();

//naqudria

nuclear_reactor.recipeBuilder()
.inputs([<gregtech:meta_item_1:14310> * 2])
.property("temperature",1000)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.outputs([<gregtech:meta_item_1:14309> * 2, <gtadditions:ga_meta_item:32312> * 16])
.duration(500)
.EUt(30)
.buildAndRegister();

nuclear_breeder.recipeBuilder()
.inputs([<gregtech:meta_item_1:14310> * 2, <gtadditions:ga_meta_item:16809> * 10])
.property("temperature",1000)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.outputs([<gregtech:meta_item_1:14309> * 2, <gtadditions:ga_meta_item:32312> * 8, <gtadditions:ga_meta_item:11799> * 10, <gtadditions:ga_meta_item:9804> * 10])
.duration(500)
.EUt(30)
.buildAndRegister();

//awaken draconium

nuclear_reactor.recipeBuilder()
.inputs([<gregtech:meta_item_1:14519> * 2])
.property("temperature",1000)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.outputs([<gregtech:meta_item_1:14518> * 2, <gtadditions:ga_meta_item:32312> * 30])
.duration(500)
.EUt(30)
.buildAndRegister();

nuclear_breeder.recipeBuilder()
.inputs([<gregtech:meta_item_1:14519> * 2, <gtadditions:ga_meta_item:17795> * 10])
.property("temperature",1000)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.outputs([<gregtech:meta_item_1:14518> * 2, <gtadditions:ga_meta_item:32312> * 16, <gtadditions:ga_meta_item:11789> * 10, <gtadditions:ga_meta_item:9793> * 10])
.duration(500)
.EUt(30)
.buildAndRegister();

//refined chaos

nuclear_reactor.recipeBuilder()
.inputs([<gregtech:meta_item_1:14520> * 2])
.property("temperature",1000)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.outputs([<gregtech:meta_item_1:14519> * 2, <gtadditions:ga_meta_item:32312> * 32])
.duration(500)
.EUt(30)
.buildAndRegister();

nuclear_breeder.recipeBuilder()
.inputs([<gregtech:meta_item_1:14520> * 2, <gtadditions:ga_meta_item:17784> * 10])
.property("temperature",1000)
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.outputs([<gregtech:meta_item_1:14519> * 2, <gtadditions:ga_meta_item:32312> * 16, <gtadditions:ga_meta_item:11778> * 10, <gtadditions:ga_meta_item:11783> * 10])
.duration(500)
.EUt(30)
.buildAndRegister();


<gregtech:machine:790>.displayName = "Input Bus (UHV)";
<gregtech:machine:791>.displayName = "Output Bus (UHV)";
<gregtech:machine:792>.displayName = "Input Hatch (UHV)";
<gregtech:machine:793>.displayName = "Output Hatch (UHV)";
<gregtech:machine:819>.displayName = "Rotor Holder (UHV)";

recipes.remove(<gregtech:machine:793>);
recipes.remove(<gregtech:machine:792>);
recipes.remove(<gregtech:machine:791>);
recipes.remove(<gregtech:machine:790>);
//recipes.remove(<gregtech:machine:819>);

recipes.addShaped(<gregtech:machine:793>, [[null, null, null],[null, <gregtech:machine:3239>, null], [null, <minecraft:glass>, null]]);
recipes.addShaped(<gregtech:machine:792>, [[null, <minecraft:glass>, null],[null, <gregtech:machine:3239>, null], [null, null, null]]);
recipes.addShaped(<gregtech:machine:791>, [[null, null, null],[null, <gregtech:machine:3239>, null], [null, <minecraft:chest>, null]]);
recipes.addShaped(<gregtech:machine:790>, [[null, <minecraft:chest>, null],[null, <gregtech:machine:3239>, null], [null, null, null]]);
//recipes.addShaped(<gregtech:machine:819>, [[<gregtech:cable:4312>, <gregtech:machine:3239>, <gregtech:cable:4312>],[<gregtech:cable:4312>, <gregtech:meta_item_2:26304>, <gregtech:cable:4312>], [<gregtech:cable:4312>, <gregtech:cable:4312>, <gregtech:cable:4312>]]);


    ADVFusion.recipeBuilder()
    .fluidInputs(<liquid:sodium> * 144, <liquid:curium250> * 144)
    .fluidOutputs(<liquid:bohrium> * 288)
    .property("eu_to_start",1000000000)
    .property("coilTier",1)
    .property("euReturn",40)
    .duration(50)
    .EUt(1000000)
    .buildAndRegister();

recipes.addShaped(<enderio:block_dark_fused_quartz> * 8, [[<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],[<ore:blockGlassHardened>, <ore:dyeBlack>, <ore:blockGlassHardened>], [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>]]);
recipes.addShaped(<enderio:block_enlightened_fused_quartz:8> * 8, [[<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],[<ore:blockGlassHardened>, <astralsorcery:itemusabledust>, <ore:blockGlassHardened>], [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>]]);
recipes.addShaped(<enderio:block_dark_fused_quartz> * 8, [[<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],[<ore:blockGlassHardened>, <astralsorcery:itemusabledust:1>, <ore:blockGlassHardened>], [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>]]);
recipes.addShaped(<enderio:block_enlightened_fused_quartz:8> * 8, [[<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>],[<ore:blockGlassHardened>, <minecraft:glowstone_dust>, <ore:blockGlassHardened>], [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>]]);
recipes.addShaped(<enderio:item_broken_spawner>.withTag({entityId: "minecraft:pig"}), [[<ore:dustSoularium>, <enderio:item_material:52>, <ore:dustSoularium>],[<enderio:item_material:52>, <enderio:item_material:53>, <enderio:item_material:52>], [<ore:dustSoularium>, <enderio:item_material:52>, <ore:dustSoularium>]]);

Utils.removeRecipeByOutput(mixer, [<gregtech:meta_item_1:2227>], [], false);

mixer.recipeBuilder()
.inputs([<gregtech:meta_item_1:2018>,<gregtech:meta_item_1:2062> * 4])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
.outputs([<gregtech:meta_item_1:2227> * 5])
.duration(20)
.EUt(8)
.buildAndRegister();

extruder.recipeBuilder()
.inputs([<thermalfoundation:material:165> *  4])
.notConsumable(<gregtech:meta_item_1:32372>)
.outputs([<thermalfoundation:material:293>])
.duration(380)
.EUt(30)
.buildAndRegister();

furnace.remove(<gregtech:meta_item_1:2518>);

Utils.removeRecipeByOutput(fluid_extractor, [], [<liquid:pyrotheum> * 250], true);

fluid_extractor.recipeBuilder()
.inputs([<gregtech:meta_item_1:2991>])
.fluidOutputs(<liquid:pyrotheum> * 1000)
.EUt(24)
.duration(35)
.buildAndRegister();

Utils.removeRecipeByOutput(fluid_extractor, [], [<liquid:cryotheum> * 250], true);

fluid_extractor.recipeBuilder()
.inputs([<gregtech:meta_item_1:2952>])
.fluidOutputs(<liquid:cryotheum> * 1000)
.EUt(24)
.duration(35)
.buildAndRegister();

electrolyzer.recipeBuilder()
.inputs([<gregtech:meta_item_1:2111>])
.outputs(<gregtech:meta_item_1:2012> * 64)
.duration(608)
.EUt(30)
.buildAndRegister();

//Diamond upcraft
engraver.recipeBuilder()
.inputs([<minecraft:diamond> * 4])
.notConsumable(<ore:craftingLensWhite>)
.outputs(<gregtech:meta_item_2:24111>)
.duration(2400)
.EUt(2000)
.buildAndRegister();

engraver.recipeBuilder()
.inputs([<gregtech:meta_item_2:24111> * 4])
.notConsumable(<ore:craftingLensWhite>)
.outputs(<gregtech:meta_item_2:25111>)
.duration(2400)
.EUt(2000)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs([<minecraft:diamond> * 4])
.notConsumable(<ore:craftingLensWhite>)
.outputs(<gregtech:meta_item_2:24111>)
.duration(2400)
.EUt(2000)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs([<gregtech:meta_item_2:24111> * 4])
.notConsumable(<ore:craftingLensWhite>)
.outputs(<gregtech:meta_item_2:25111>)
.duration(2400)
.EUt(2000)
.buildAndRegister();


furnace.remove(<gregtech:meta_item_1:10312>);
furnace.remove(<gregtech:meta_item_1:10743>);
furnace.remove(<gregtech:meta_item_1:10311>);


    blast_furnace.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2743>)
    .outputs(<gregtech:meta_item_1:10743>)
    .property("temperature", 5400) //this is a minimal temperature at which the item will be smelted
    .duration(16560)
    .EUt(120)
    .buildAndRegister();

    blast_furnace.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2311>)
    .outputs(<gregtech:meta_item_1:10311>)
    .property("temperature", 11000) //this is a minimal temperature at which the item will be smelted
    .duration(16560)
    .EUt(120)
    .buildAndRegister();


    blast_furnace.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2312>)
    .outputs(<gregtech:meta_item_1:10312>)
    .property("temperature", 6000) //this is a minimal temperature at which the item will be smelted
    .duration(16560)
    .EUt(120)
    .buildAndRegister();

    furnace.remove(<gregtech:meta_item_1:10518>);
    furnace.remove(<gregtech:meta_item_1:10310>);

recipes.remove(<gregtech:machine:3208>);
recipes.remove(<gregtech:machine:3209>);
recipes.remove(<gregtech:machine:3210>);
recipes.remove(<gregtech:machine:817>);
recipes.remove(<gregtech:machine:818>);
recipes.remove(<gregtech:machine:819>);

recipes.addShaped(<gregtech:machine:819>, [[<gregtech:meta_item_2:17850>, <gregtech:meta_item_2:26304>, <gregtech:meta_item_2:17850>],[<gregtech:meta_item_2:26304>, <gregtech:machine:3239>, <gregtech:meta_item_2:26304>], [<gregtech:meta_item_2:17850>, <gregtech:meta_item_2:26304>, <gregtech:meta_item_2:17850>]]);
recipes.addShaped(<gregtech:machine:3210>, [[<gregtech:meta_item_2:17850>, <gregtech:meta_item_2:26736>, <gregtech:meta_item_2:17850>],[<gregtech:meta_item_2:26736>, <gregtech:machine:3239>, <gregtech:meta_item_2:26736>], [<gregtech:meta_item_2:17850>, <gregtech:meta_item_2:26736>, <gregtech:meta_item_2:17850>]]);
recipes.addShaped(<gregtech:machine:818>, [[<gregtech:meta_item_2:17235>, <gregtech:meta_item_2:26016>, <gregtech:meta_item_2:17235>],[<gregtech:meta_item_2:26016>, <gregtech:machine:506>, <gregtech:meta_item_2:26016>], [<gregtech:meta_item_2:17235>, <gregtech:meta_item_2:26016>, <gregtech:meta_item_2:17235>]]);
recipes.addShaped(<gregtech:machine:3209>, [[<gregtech:meta_item_2:17235>, <gregtech:meta_item_2:26859>, <gregtech:meta_item_2:17235>],[<gregtech:meta_item_2:26859>, <gregtech:machine:506>, <gregtech:meta_item_2:26859>], [<gregtech:meta_item_2:17235>, <gregtech:meta_item_2:26859>, <gregtech:meta_item_2:17235>]]);
recipes.addShaped(<gregtech:machine:817>, [[<gregtech:meta_item_2:17001>, <gregtech:meta_item_2:26183>, <gregtech:meta_item_2:17001>],[<gregtech:meta_item_2:26183>, <gregtech:machine:503>, <gregtech:meta_item_2:26183>], [<gregtech:meta_item_2:17001>, <gregtech:meta_item_2:26183>, <gregtech:meta_item_2:17001>]]);
recipes.addShaped(<gregtech:machine:3208>, [[<gregtech:meta_item_2:17001>, <gregtech:meta_item_2:26231>, <gregtech:meta_item_2:17001>],[<gregtech:meta_item_2:26231>, <gregtech:machine:503>, <gregtech:meta_item_2:26231>], [<gregtech:meta_item_2:17001>, <gregtech:meta_item_2:26231>, <gregtech:meta_item_2:17001>]]);

recipes.remove(<enderio:item_big_item_filter>);
recipes.addShaped(<enderio:item_big_item_filter>, [[<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12215>, <gregtech:meta_item_1:12001>],[<gregtech:meta_item_1:12215>, <enderio:item_basic_item_filter>, <gregtech:meta_item_1:12215>], [<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12215>, <gregtech:meta_item_1:12001>]]);

recipes.addShaped(<draconicevolution:grinder>, [[<gregtech:meta_item_1:12308>, <gregtech:meta_item_2:47>, <gregtech:meta_item_1:12308>],[<gregtech:meta_item_2:47>, <gregtech:machine:505>, <gregtech:meta_item_1:32674>], [<gregtech:meta_item_1:12308>, <gregtech:meta_item_2:47>, <gregtech:meta_item_1:12308>]]);

Utils.removeRecipeByOutput(mixer, [<gregtech:meta_item_1:2133> * 5], [], true);

mixer.recipeBuilder()
        .inputs([<gregtech:meta_item_1:2044> * 4, <gregtech:meta_item_1:2016>])
        .outputs(<gregtech:meta_item_1:2133> * 5)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
        .duration(280)
        .EUt(30)
        .buildAndRegister();

        
Utils.removeRecipeByOutput(arc, [<gregtech:meta_item_1:10673>], [], false);
Utils.removeRecipeByOutput(parc, [<gregtech:meta_item_1:10673>], [], false);
Utils.removeRecipeByOutput(fluid_extractor, [], [<liquid:qcd_confined_matter>], false);
Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32566>], [], true);

assembler.recipeBuilder()
        .inputs([<gregtech:meta_item_1:12671> * 3, <gregtech:meta_item_1:12728> * 3, <gregtech:meta_item_1:12520> * 3])
        .outputs(<gtadditions:ga_meta_item:32566>)
        .fluidInputs(<liquid:neutronium_doped_nanotubes> * 2000)
        .duration(280)
        .EUt(536870000)
        .buildAndRegister();


recipes.addShaped("clay1", <ore:blockClay>.firstItem *8,[[<ore:sand>,<ore:sand>,<ore:sand>],[<ore:sand>,<liquid:water> * 1000,<ore:sand>],[<ore:sand>,<ore:sand>,<ore:sand>]]);


mixer.recipeBuilder()
        .inputs([<minecraft:sand> * 8])
        .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
        .outputs(<minecraft:clay> * 8)
        .fluidInputs(<liquid:water> * 1000)
        .duration(100)
        .EUt(30)
        .buildAndRegister();

largeMix.recipeBuilder()
        .inputs([<minecraft:sand> * 8])
        .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
        .outputs(<minecraft:clay> * 8)
        .fluidInputs(<liquid:water> * 1000)
        .duration(100)
        .EUt(30)
        .buildAndRegister();

        Utils.removeRecipeByOutput(assembly_line, [<gtadditions:ga_meta_item:32500> * 6], [], true);


assembly_line.recipeBuilder()
        .inputs([<gregtech:meta_item_1:12716> * 4,<gtadditions:ga_meta_item:32495> * 2, <gtadditions:ga_meta_item:32496> * 2, <gtadditions:ga_meta_item:32497> * 2, <gtadditions:ga_meta_item:32494> * 2, <gregtech:meta_item_1:19730> * 2, <gtadditions:ga_meta_item:32491> * 2, <gtadditions:ga_meta_item:32438> * 2, <gtadditions:ga_meta_item:32488>,<gtadditions:ga_meta_item:32487>, <gtadditions:ga_meta_item:32486>, <gtadditions:ga_meta_item:32499>, <gtadditions:ga_meta_item:32459> ])
        .outputs(<gtadditions:ga_meta_item:32500> * 6)
        .fluidInputs(<liquid:polytetrafluoroethylene> * 864,<liquid:enriched_naquadah_alloy> * 432,<liquid:soldering_alloy> * 1296,  <liquid:fullerene_doped_nanotubes> * 144)
        .duration(100)
        .EUt(1474560)
        .buildAndRegister();

recipes.addShaped(<contenttweaker:steampiston>, [[<gregtech:meta_item_2:17033>, <minecraft:stick>, <minecraft:stick>],[<gregtech:meta_item_2:17033>, <contenttweaker:steammotor>, <gregtech:meta_item_1:12095>], [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12033>]]);

var MAXcompblocks = [<gtadditions:ga_conveyor_casing:13>,<gtadditions:ga_field_gen_casing:13>,<gtadditions:ga_motor_casing:13>,<gtadditions:ga_piston_casing:13>,<gtadditions:ga_pump_casing:13>,<gtadditions:ga_robot_arm_casing:13>,<gtadditions:ga_sensor_casing:13>,<gtadditions:ga_emitter_casing:13>]  as IItemStack[];
var Maxcomp = [<gtadditions:ga_meta_item:32353>,<gtadditions:ga_meta_item:32383>,<gtadditions:ga_meta_item:32359>,<gtadditions:ga_meta_item:32365>,<gtadditions:ga_meta_item:32371>,<gtadditions:ga_meta_item:32389>,<gtadditions:ga_meta_item:32395>,<gtadditions:ga_meta_item:32377>] as IItemStack[];

for i in 0 to 8{

Utils.removeRecipeByOutput(assembler, [MAXcompblocks[i]], [], true);

assembler.recipeBuilder()
        .inputs([<gregtech:ga_cable:5671> * 8, <gregtech:machine:509>, Maxcomp[i] * 2])
        .outputs(MAXcompblocks[i])
        .fluidInputs(<liquid:soldering_alloy> * 288 )
        .duration(100)
        .EUt(536870900)
        .buildAndRegister();
}


assembly_line.recipeBuilder()
        .inputs([<gregtech:cable:2354> * 64,<gtadditions:ga_dust:55> * 64,<gtadditions:ga_cell_casing:11>,<gregtech:meta_item_1:16671> * 16,<gregtech:meta_item_1:13521> * 8, <ore:circuitMax>,<gtadditions:ga_meta_item:32377>, <gtadditions:ga_meta_item:32395>])
        .outputs(<gregtech:meta_item_2:32715>)
        .fluidInputs(<liquid:cosmic_mesh_plasma> * 1000,<liquid:quantum> * 1296 )
        .duration(100)
        .property("qubit", 16)
        .EUt(983040000)
        .buildAndRegister();


 assembler.recipeBuilder()
        .inputs([<gtadditions:ga_cell_casing:10>,<gtadditions:ga_meta_item:1521> * 4, ])
        .outputs(<gtadditions:ga_cell_casing:11>)
        .fluidInputs(<liquid:qcd_confined_matter> * 4000)
        .duration(1200)
        .EUt(536870900)
        .buildAndRegister();

assembler.recipeBuilder()
        .inputs([<gtadditions:ga_cell_casing:9>, <gregtech:meta_item_1:13682> * 4])
        .outputs(<gtadditions:ga_cell_casing:10>)
        .fluidInputs(<liquid:degenerate_rhenium_plasma> * 4000)
        .duration(1200)
        .EUt(536870900)
        .buildAndRegister();

//max componets
//motor
assembly_line.recipeBuilder()
        .inputs([<gregtech:meta_item_2:19775> * 64, <gregtech:meta_item_2:19775> * 64,<gregtech:meta_item_2:16682> * 64, <gregtech:meta_item_2:16682> * 64, <gregtech:meta_item_2:16682> * 64, <gregtech:meta_item_2:16682> * 64, <gregtech:meta_item_2:19671> * 2, <gregtech:meta_item_1:18671> * 4,<gtadditions:ga_meta_item:2671> * 16, <gregtech:ga_cable:9671> * 2, <gtadditions:ga_meta_item:32569> * 8])
        .notConsumable(<gtadditions:ga_meta_item:32518>)
        .outputs(<gtadditions:ga_meta_item:32359>)
        .fluidInputs(<liquid:lubricant> * 3000,<liquid:soldering_alloy> * 1728)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();
//pistin
assembly_line.recipeBuilder()
        .inputs([<gregtech:meta_item_1:12673> * 8, <gregtech:meta_item_2:17671> * 8, <gregtech:meta_item_1:14673> * 4, <gregtech:meta_item_1:10671> * 2, <gtadditions:ga_meta_item:32359>, <gregtech:ga_cable:7671> * 2])
        .notConsumable(<gtadditions:ga_meta_item:32518>)
        .outputs(<gtadditions:ga_meta_item:32365>)
        .fluidInputs(<liquid:lubricant> * 2000,<liquid:soldering_alloy> * 576)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();
//convar
assembly_line.recipeBuilder()
        .inputs([<gregtech:ga_cable:7671> * 2, <gtadditions:ga_meta_item:32359> * 2, <gregtech:meta_item_2:26671> * 4, <gregtech:meta_item_1:14673> * 4, <gregtech:meta_item_1:12673> * 8, <gregtech:meta_item_1:10673>])
        .notConsumable(<gtadditions:ga_meta_item:32518>)
        .outputs(<gtadditions:ga_meta_item:32353>)
        .fluidInputs(<liquid:lubricant> * 5000, <liquid:zylon> * 1440)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();
//pump
assembly_line.recipeBuilder()
        .inputs([<gtadditions:ga_meta_item:32359>, <gregtech:ga_cable:7671> * 2, <gregtech:meta_item_1:18391> * 16, <gregtech:meta_item_1:17671> *  8, <gregtech:meta_item_2:18671> * 2])
        .notConsumable(<gtadditions:ga_meta_item:32518>)
        .outputs(<gtadditions:ga_meta_item:32371>)
        .fluidInputs(<liquid:lubricant> * 2000, <liquid:soldering_alloy> * 576)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();
//emitter
assembly_line.recipeBuilder()
        .inputs([<ore:circuitMax> * 2, <gtadditions:ga_dust:384> * 64, <gtadditions:ga_meta_item:32555>, <gtadditions:ga_meta_item:32516>, <gregtech:meta_item_2:19780> * 64, <gtadditions:ga_meta_item:32561> * 2, <gregtech:ga_cable:5671> * 8, <gregtech:meta_item_1:19520> * 64,<ore:frameGtCosmicNeutronium> ])
        .outputs(<gtadditions:ga_meta_item:32377>)
        .fluidInputs(<liquid:soldering_alloy> * 864)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();

//field generator
assembly_line.recipeBuilder()
        .inputs([<gregtech:meta_item_2:16520> * 64,<gregtech:meta_item_2:16520> * 64, <gregtech:ga_cable:5671> * 4, <ore:frameGtChaos>, <gtadditions:ga_meta_item:32519>, <gregtech:meta_item_1:16521> * 16, <gtadditions:ga_meta_item:32568> * 4, <gtadditions:ga_meta_item:32556> * 4, <gregtech:cable:354> * 4, <ore:circuitMax> ])
        .outputs(<gtadditions:ga_meta_item:32383>)
        .fluidInputs(<liquid:soldering_alloy> * 864)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();
//arm
assembly_line.recipeBuilder()
        .inputs([<gregtech:ga_cable:6671> * 16, <ore:circuitUmv> * 8, <gtadditions:ga_meta_item:32359> * 2, <gtadditions:ga_meta_item:32365>, <gregtech:meta_item_1:10671>, <gregtech:meta_item_1:14673> * 8, <gregtech:meta_item_1:17671> * 16])
        .outputs(<gtadditions:ga_meta_item:32389>)
        .fluidInputs(<liquid:soldering_alloy> * 864, <liquid:lubricant> * 864)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();
//sensor
assembly_line.recipeBuilder()
        .inputs([<gtadditions:ga_meta_item:32569> * 4, <ore:circuitMax> * 2, <gregtech:ga_cable:5671>* 4,<gregtech:meta_item_1:19520> * 64, <gregtech:meta_item_1:19728> * 64, <gtadditions:ga_meta_item:32459> * 32, <gtadditions:ga_meta_item:32516>,<ore:frameGtCosmicNeutronium> ])
        .outputs(<gtadditions:ga_meta_item:32395>)
        .fluidInputs(<liquid:high_energy_qgp> * 2000)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();
//UXV componets


assembly_line.recipeBuilder()
        .inputs([<gregtech:meta_item_2:19775> * 2, <gregtech:meta_item_2:19775> * 2, <gregtech:meta_item_2:16707> * 64, <gregtech:meta_item_2:16707> * 64, <gregtech:meta_item_2:16707> * 64, <gregtech:meta_item_2:16707> * 64,<gtadditions:ga_meta_item:2993> * 16, <gregtech:meta_item_1:18993> * 4, <gregtech:meta_item_2:19993> * 2, <gregtech:ga_cable:7993> * 2 ])
        .outputs(<gtadditions:ga_meta_item:32358>)
        .fluidInputs(<liquid:lubricant> * 3000,<liquid:soldering_alloy> * 1728)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();

assembly_line.recipeBuilder()
        .inputs([<gtadditions:ga_meta_item:32358>, <gregtech:meta_item_1:10993> * 2, <gregtech:meta_item_1:14993> * 4, <gregtech:meta_item_2:17993> * 8, <gregtech:meta_item_1:12993> * 8, <gregtech:ga_cable:5993> * 2])
        .outputs(<gtadditions:ga_meta_item:32364>)
        .fluidInputs(<liquid:lubricant> * 2000,<liquid:soldering_alloy> * 576)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();

assembly_line.recipeBuilder()
        .inputs([<gtadditions:ga_meta_item:32358> * 2, <gregtech:meta_item_2:26993> * 4, <gregtech:meta_item_1:14993> * 4, <gregtech:meta_item_1:12993> * 8, <gregtech:meta_item_1:10993> * 2, <gregtech:ga_cable:5993> * 2])
        .outputs(<gtadditions:ga_meta_item:32352>)
        .fluidInputs(<liquid:lubricant> * 5000, <liquid:zylon> * 1440)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();


assembly_line.recipeBuilder()
         .inputs([<gtadditions:ga_meta_item:32358>, <gregtech:meta_item_2:18993> * 2, <gregtech:meta_item_1:17993> * 8, <gregtech:meta_item_1:18391> * 16, <gregtech:ga_cable:5993> * 2, <gregtech:fluid_pipe:3993> * 16]) 
        .outputs(<gtadditions:ga_meta_item:32370>)
        .fluidInputs(<liquid:lubricant> * 2000, <liquid:soldering_alloy> * 576)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();

assembly_line.recipeBuilder()
        .inputs([<gtadditions:ga_dust:380> * 64, <ore:circuitUxv> * 2, <ore:frameGtNeutronium>, <gregtech:meta_item_2:25206> * 2, <gtadditions:ga_meta_item:32533>, <gtadditions:ga_meta_item:32524> * 4, <gregtech:ga_cable:5993> * 8, <gregtech:meta_item_1:19735> * 64])
        .outputs(<gtadditions:ga_meta_item:32376>)
        .fluidInputs(<liquid:lubricant> * 2000, <liquid:soldering_alloy> * 576)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();

assembly_line.recipeBuilder()
        .inputs([<gtadditions:ga_meta_item:32597>,<gtadditions:ga_meta_item2:10>, <gregtech:ga_cable:722> * 4, <ore:circuitUxv> * 2, <gtadditions:ga_meta_item:32511>, <ore:frameGtVibranium>, <gregtech:ga_cable:5993> * 4, <gregtech:meta_item_2:16717> * 64, <gregtech:meta_item_2:16717> * 64 ])
        .outputs(<gtadditions:ga_meta_item:32382>)
        .fluidInputs(<liquid:soldering_alloy> * 864)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();

assembly_line.recipeBuilder()
        .inputs([<gregtech:ga_cable:6993> * 16, <ore:circuitUiv> * 8, <gregtech:meta_item_1:17993> * 16, <gregtech:meta_item_1:14993> * 16, <gregtech:meta_item_1:10993>, <gtadditions:ga_meta_item:32364>, <gtadditions:ga_meta_item:32358> * 2])
        .outputs(<gtadditions:ga_meta_item:32388>)
        .fluidInputs(<liquid:soldering_alloy> * 864,<liquid:lubricant> * 864)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();

assembly_line.recipeBuilder()
        .inputs([<ore:circuitUxv> * 2, <gregtech:ga_cable:5993> * 8,<ore:frameGtNeutronium>, <gregtech:meta_item_2:25206> * 2, <gtadditions:ga_meta_item:32459> * 16, <gregtech:meta_item_1:19707> * 64, <gregtech:meta_item_1:19728> * 64 ])
        .outputs(<gtadditions:ga_meta_item:32394>)
        .fluidInputs(<liquid:quark_gluon_plasma> * 2000)
        .duration(600)
        .EUt(536870900)
        .buildAndRegister();

furnace.remove(<gregtech:meta_item_1:10526>);



    blast_furnace.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2526>)
    .outputs(<gregtech:meta_item_1:10526>)
    .property("temperature", 2900) //this is a minimal temperature at which the item will be smelted
    .duration(1200)
    .EUt(120)
    .buildAndRegister();

//solar panels
recipes.remove(<gregtech:meta_item_1:32752>);
recipes.addShaped(<gregtech:meta_item_2:32714>, [[<gtadditions:ga_meta_item:32392>, <gregtech:meta_item_2:25696>, <gtadditions:ga_meta_item:32392>],[<ore:circuitUiv>, <gregtech:machine:3241>, <ore:circuitUiv>], [<gregtech:ga_cable:5856>, <gtadditions:ga_meta_item2:7>, <gregtech:ga_cable:5856>]]);
recipes.addShaped(<gregtech:meta_item_2:32713>, [[<gtadditions:ga_meta_item:32391>, <gregtech:meta_item_2:25911>, <gtadditions:ga_meta_item:32391>],[<ore:circuitUev>, <gregtech:machine:3240>, <ore:circuitUev>], [<gregtech:ga_cable:5854>, <gtadditions:ga_meta_item2:4>, <gregtech:ga_cable:5854>]]);
recipes.addShaped(<gregtech:meta_item_2:32712>, [[<gtadditions:ga_meta_item:32390>, <gregtech:meta_item_2:25867>, <gtadditions:ga_meta_item:32390>],[<ore:circuitInfinite>, <gregtech:machine:3239>, <ore:circuitInfinite>], [<gregtech:ga_cable:5755>, <gregtech:meta_item_1:32598>, <gregtech:ga_cable:5755>]]);
recipes.addShaped(<gregtech:meta_item_2:32712>, [[<gtadditions:ga_meta_item:32390>, <gregtech:meta_item_2:25867>, <gtadditions:ga_meta_item:32390>],[<ore:circuitInfinite>, <gregtech:machine:3239>, <ore:circuitInfinite>], [<gregtech:ga_cable:5755>, <gtadditions:ga_meta_item2:6>, <gregtech:ga_cable:5755>]]);
recipes.addShaped(<gregtech:meta_item_2:32711>, [[<gregtech:meta_item_1:32697>, <gregtech:meta_item_2:25092>, <gregtech:meta_item_1:32697>],[<gtadditions:ga_meta_item:32501>, <gregtech:machine:508>, <gtadditions:ga_meta_item:32501>], [<gregtech:cable:5312>, <gregtech:meta_item_1:32597>, <gregtech:cable:5312>]]);
recipes.addShaped(<gregtech:meta_item_2:32711>, [[<gregtech:meta_item_1:32697>, <gregtech:meta_item_2:25092>, <gregtech:meta_item_1:32697>],[<gtadditions:ga_meta_item:32501>, <gregtech:machine:508>, <gtadditions:ga_meta_item:32501>], [<gregtech:cable:5312>, <gtadditions:ga_meta_item2:3>, <gregtech:cable:5312>]]);
recipes.addShaped(<gregtech:meta_item_2:32710>, [[<gregtech:meta_item_1:32696>, <gregtech:meta_item_2:25113>, <gregtech:meta_item_1:32696>],[<ore:circuitUltimate>, <gregtech:machine:507>, <ore:circuitUltimate>], [<gregtech:cable:5307>, <gtadditions:ga_meta_item2:1>, <gregtech:cable:5307>]]);
recipes.addShaped(<gregtech:meta_item_2:32710>, [[<gregtech:meta_item_1:32696>, <gregtech:meta_item_2:25113>, <gregtech:meta_item_1:32696>],[<ore:circuitUltimate>, <gregtech:machine:507>, <ore:circuitUltimate>], [<gregtech:cable:5307>, <gregtech:meta_item_2:32213>, <gregtech:cable:5307>]]);
recipes.addShaped(<gregtech:meta_item_2:32709>, [[<gregtech:meta_item_1:32695>, <gregtech:meta_item_2:25154>, <gregtech:meta_item_1:32695>],[<ore:circuitMaster>, <gregtech:machine:506>, <ore:circuitMaster>], [<gregtech:cable:5200>, <gregtech:meta_item_2:32212>, <gregtech:cable:5200>]]);
recipes.addShaped(<gregtech:meta_item_2:32709>, [[<gregtech:meta_item_1:32695>, <gregtech:meta_item_2:25154>, <gregtech:meta_item_1:32695>],[<ore:circuitMaster>, <gregtech:machine:506>, <ore:circuitMaster>], [<gregtech:cable:5200>, <gregtech:meta_item_1:32537>, <gregtech:cable:5200>]]);
recipes.addShaped(<gregtech:meta_item_2:32709>, [[<gregtech:meta_item_1:32695>, <gregtech:meta_item_2:25154>, <gregtech:meta_item_1:32695>],[<ore:circuitMaster>, <gregtech:machine:506>, <ore:circuitMaster>], [<gregtech:cable:5200>, <gregtech:meta_item_1:32539>, <gregtech:cable:5200>]]);
recipes.addShaped(<gregtech:meta_item_2:32709>, [[<gregtech:meta_item_1:32695>, <gregtech:meta_item_2:25154>, <gregtech:meta_item_1:32695>],[<ore:circuitMaster>, <gregtech:machine:506>, <ore:circuitMaster>], [<gregtech:cable:5200>, <gregtech:meta_item_1:32538>, <gregtech:cable:5200>]]);
recipes.addShaped(<gregtech:meta_item_2:32708>, [[<gregtech:meta_item_1:32694>, <gregtech:meta_item_2:25154>, <gregtech:meta_item_1:32694>],[<ore:circuitElite>, <gregtech:machine:505>, <ore:circuitElite>], [<gregtech:cable:5074>, <gregtech:meta_item_1:32528>, <gregtech:cable:5074>]]);
recipes.addShaped(<gregtech:meta_item_2:32708>, [[<gregtech:meta_item_1:32694>, <gregtech:meta_item_2:25154>, <gregtech:meta_item_1:32694>],[<ore:circuitElite>, <gregtech:machine:505>, <ore:circuitElite>], [<gregtech:cable:5074>, <gregtech:meta_item_1:32527>, <gregtech:cable:5074>]]);
recipes.addShaped(<gregtech:meta_item_2:32708>, [[<gregtech:meta_item_1:32694>, <gregtech:meta_item_2:25154>, <gregtech:meta_item_1:32694>],[<ore:circuitElite>, <gregtech:machine:505>, <ore:circuitElite>], [<gregtech:cable:5074>, <gregtech:meta_item_1:32529>, <gregtech:cable:5074>]]);
recipes.addShaped(<gregtech:meta_item_1:32752>, [[<gregtech:meta_item_1:32693>, <gregtech:meta_item_2:25111>, <gregtech:meta_item_1:32693>],[<ore:circuitExtreme>, <gregtech:machine:504>, <ore:circuitExtreme>], [<gregtech:cable:5001>, <gregtech:meta_item_1:32517>, <gregtech:cable:5001>]]);
recipes.addShaped(<gregtech:meta_item_1:32752>, [[<gregtech:meta_item_1:32693>, <gregtech:meta_item_2:25111>, <gregtech:meta_item_1:32693>],[<ore:circuitExtreme>, <gregtech:machine:504>, <ore:circuitExtreme>], [<gregtech:cable:5001>, <gregtech:meta_item_1:32518>, <gregtech:cable:5001>]]);
recipes.addShaped(<gregtech:meta_item_1:32752>, [[<gregtech:meta_item_1:32693>, <gregtech:meta_item_2:25111>, <gregtech:meta_item_1:32693>],[<ore:circuitExtreme>, <gregtech:machine:504>, <ore:circuitExtreme>], [<gregtech:cable:5001>, <gregtech:meta_item_1:32519>, <gregtech:cable:5001>]]);

//EV/IV motors
recipes.remove(<gregtech:meta_item_1:32604>);
recipes.remove(<gregtech:meta_item_1:32603>);

recipes.addShaped(<gregtech:meta_item_1:32604>, [[<gregtech:cable:5074>, <gregtech:cable:2526>, <gregtech:meta_item_1:14235>],[<gregtech:cable:2526>, <gregtech:meta_item_1:14299>, <gregtech:cable:2526>], [<gregtech:meta_item_1:14235>, <gregtech:cable:2526>, <gregtech:cable:5074>]]);
recipes.addShaped(<gregtech:meta_item_1:32603>, [[<gregtech:cable:5001>, <gregtech:cable:2026>, <gregtech:meta_item_1:14072>],[<gregtech:cable:2026>, <gregtech:meta_item_1:14299>, <gregtech:cable:2026>], [<gregtech:meta_item_1:14072>, <gregtech:cable:2026>, <gregtech:cable:5001>]]);


Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_1:32603>], [], true);
Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_1:32604>], [], true);

Utils.removeRecipeByOutput(assembly_line, [<gregtech:meta_item_1:32603> * 16], [], true);
Utils.removeRecipeByOutput(assembly_line, [<gregtech:meta_item_1:32604> * 16], [], true);

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:14299>,<gregtech:meta_item_1:14072> * 2, <gregtech:cable:5001> * 2, <gregtech:cable:2026> * 4) 
    .outputs(<gregtech:meta_item_1:32603>)
    .duration(100)
    .EUt(1920)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:14299>,<gregtech:meta_item_1:14235>* 2,<gregtech:cable:5074> * 2,<gregtech:cable:2526> * 4)
    .outputs(<gregtech:meta_item_1:32604>)
    .duration(100)
    .EUt(7680)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:2072> * 16, <gtadditions:ga_meta_item:2072> * 16,<gtadditions:ga_meta_item:2072> * 16,<gtadditions:ga_meta_item:2072> * 16,<gregtech:cable:5001> * 4, <gregtech:cable:5001> * 4, <gregtech:cable:5001> * 4, <gregtech:cable:5001> * 4, <gregtech:meta_item_2:19072> * 4,<gregtech:meta_item_2:19299> * 4)
    .outputs(<gregtech:meta_item_1:32603> * 16)
    .fluidInputs(<liquid:gold> * 1152)
    .duration(6000)
    .EUt(64000)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:2235> * 16, <gtadditions:ga_meta_item:2235> * 16, <gtadditions:ga_meta_item:2235> * 16, <gtadditions:ga_meta_item:2235> * 16, <gregtech:cable:5074> * 4, <gregtech:cable:5074> * 4, <gregtech:cable:5074> * 4, <gregtech:cable:5074> * 4, <gregtech:meta_item_2:19235> * 4, <gregtech:meta_item_2:19299> * 4)
    .outputs(<gregtech:meta_item_1:32604> * 16)
    .fluidInputs(<liquid:bright_steel> * 1152)
    .duration(6000)
    .EUt(128000)
    .buildAndRegister();

Utils.removeRecipeByOutput(gas_centrifuge, [], [<liquid:titanium50_tetrafluoride> * 518 ,<liquid:fluorine> * 9482], true);


gas_centrifuge.recipeBuilder()
    .fluidInputs(<liquid:titanium_tetrafluoride> * 10000)
    .fluidOutputs(<liquid:titanium50_tetrafluoride> * 518 , <liquid:titanium_tetrafluoride>* 9482)
    .duration(210)
    .EUt(30720)
    .buildAndRegister();

recipes.remove(<minecraft:golden_apple:1>);

mixer.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2022>, <gregtech:meta_item_1:2010> * 2, <gregtech:meta_item_1:2184> * 4,<gregtech:meta_item_1:2008> * 2)
    .outputs(<gregtech:meta_item_1:2526> * 9)
    .duration(400)
    .EUt(16)
    .buildAndRegister();

largeMix.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2022>, <gregtech:meta_item_1:2010> * 2, <gregtech:meta_item_1:2184> * 4,<gregtech:meta_item_1:2008> * 2)
    .outputs(<gregtech:meta_item_1:2526> * 9)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 4}))
    .duration(400)
    .EUt(16)
    .buildAndRegister();

var removals = [<gtadditions:ga_machine_casing:3>,<gtadditions:ga_machine_casing:2>] as IItemStack[];
for i in removals{
Utils.removeRecipeByOutput(assembler, [i], [], true);
recipes.remove(i);
}

var removals2 = [<gregtech:machine:3243>,<gregtech:machine:3242>,<gregtech:machine:3241>] as IItemStack[];
for i in removals2{
recipes.remove(i);
}

Utils.removeRecipeByOutput(assembler, [<gregtech:machine:509>], [], true);


recipes.addShaped(<gregtech:machine_casing:9>, [[<gregtech:meta_item_1:12993>, <gregtech:meta_item_1:12993>, <gregtech:meta_item_1:12993>],[<gregtech:meta_item_1:12993>, <ore:GTWrench>, <gregtech:meta_item_1:12993>], [<gregtech:meta_item_1:12993>, <gregtech:meta_item_1:12993>, <gregtech:meta_item_1:12993>]]);
recipes.addShaped(<gtadditions:ga_machine_casing:4>, [[<gregtech:meta_item_1:12682>, <gregtech:meta_item_1:12682>, <gregtech:meta_item_1:12682>],[<gregtech:meta_item_1:12682>, <ore:GTWrench>, <gregtech:meta_item_1:12682>], [<gregtech:meta_item_1:12682>, <gregtech:meta_item_1:12682>, <gregtech:meta_item_1:12682>]]);
recipes.addShaped(<gtadditions:ga_machine_casing:3>, [[<gregtech:meta_item_1:12717>, <gregtech:meta_item_1:12717>, <gregtech:meta_item_1:12717>],[<gregtech:meta_item_1:12717>, <ore:GTWrench>, <gregtech:meta_item_1:12717>], [<gregtech:meta_item_1:12717>, <gregtech:meta_item_1:12717>, <gregtech:meta_item_1:12717>]]);
recipes.addShaped(<gtadditions:ga_machine_casing:2>, [[<gregtech:meta_item_1:12718>, <gregtech:meta_item_1:12718>, <gregtech:meta_item_1:12718>],[<gregtech:meta_item_1:12718>, <ore:GTWrench>, <gregtech:meta_item_1:12718>], [<gregtech:meta_item_1:12718>, <gregtech:meta_item_1:12718>, <gregtech:meta_item_1:12718>]]);


assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12718> * 8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<gtadditions:ga_machine_casing:2>)
    .duration(400)
    .EUt(16)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12717> * 8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<gtadditions:ga_machine_casing:3>)
    .duration(400)
    .EUt(16)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12682> * 8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<gtadditions:ga_machine_casing:4>)
    .duration(400)
    .EUt(16)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12993> * 8)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
    .outputs(<gregtech:machine_casing:9>)
    .duration(400)
    .EUt(16)
    .buildAndRegister();

//UXV
assembler.recipeBuilder()
    .inputs(<gtadditions:ga_machine_casing:4>, <gregtech:ga_cable:5993>* 2)
    .outputs(<gregtech:machine:3243>)
    .fluidInputs(<liquid:fullerene_polymer_matrix> * 288)
    .duration(400)
    .EUt(16)
    .buildAndRegister();
//MAX
assembler.recipeBuilder()
    .inputs(<gregtech:machine_casing:9>, <gregtech:ga_cable:5671> * 2)
    .outputs(<gregtech:machine:509>)
    .fluidInputs(<liquid:fullerene_polymer_matrix> * 288)
    .duration(400)
    .EUt(16)
    .buildAndRegister();
//fix cosmic mesh and fabric


Utils.removeRecipeByOutput(condenser, [<gtadditions:ga_meta_item:32569>], [], true);
Utils.removeRecipeByOutput(condenser, [<gtadditions:ga_meta_item:32568>], [], true);

//facric
condenser.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32567>)
    .notConsumable(<gtadditions:ga_meta_item:32562>)
    .outputs(<gtadditions:ga_meta_item:32569>,<gtadditions:ga_meta_item:32515>)
    .fluidInputs(<liquid:xenon> * 500,<liquid:superfluid_helium> * 24000)
    .fluidOutputs(<liquid:helium> * 24000)
    .duration(500)
    .EUt(10000000)
    .buildAndRegister();


//mesh
condenser.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32567>)
    .notConsumable(<gtadditions:ga_meta_item:32431>)
    .outputs(<gtadditions:ga_meta_item:32568>,<gtadditions:ga_meta_item:32515>)
    .fluidInputs(<liquid:superfluid_helium> * 24000)
    .fluidOutputs(<liquid:helium> * 24000)
    .duration(500)
    .EUt(10000000)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gtadditions:ga_meta_item:32552>], [], true);
Utils.removeRecipeByOutput(assembly_line, [<gtadditions:ga_meta_item:32515>], [], false);


assembler.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32391>,<gtadditions:ga_meta_item:32556> * 2,<gtadditions:ga_meta_item:32511>,<gtadditions:ga_meta_item:32516>)
    .outputs(<gtadditions:ga_meta_item:32552>)
    .fluidInputs(<liquid:neutronium> * 144)
    .duration(600)
    .EUt(33550000)
    .buildAndRegister();

assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12993> * 4,<gtadditions:ga_meta_item:32430> * 4, <gregtech:meta_item_1:12728> * 4, <gregtech:meta_item_1:12857> * 4, <gregtech:meta_item_1:14733>* 3, <gregtech:ga_cable:739> * 2, <ore:circuitSuperconductor>)
    .outputs(<gtadditions:ga_meta_item:32515> * 4)
    .fluidInputs(<liquid:tritanium> * 144)
    .duration(100)
    .EUt(800000)
    .buildAndRegister();

<gregtech:wire_coil:7>.addTooltip(format.darkRed("blacklisted from working in non-fusion multiblock machines"));
<gregtech:wire_coil:8>.addTooltip(format.darkRed("blacklisted from working in non-fusion multiblock machines"));

recipes.remove(<simplevoidworld:portal>);
recipes.addShaped(<simplevoidworld:portal>, [[<ore:obsidian>, <minecraft:diamond>, <ore:obsidian>],[<minecraft:diamond>, <minecraft:iron_pickaxe>, <minecraft:diamond>], [<ore:obsidian>, <minecraft:diamond>, <ore:obsidian>]]);

assembler.recipeBuilder()
    .inputs(<ore:circuitUxv> * 2, <gregtech:meta_item_2:26673> * 4, <gregtech:meta_item_1:12673> * 4,<gregtech:ga_cable:7993>)
    .outputs(<gtadditions:ga_multiblock_casing2:4>)
    .fluidInputs(<liquid:enriched_naquadah_alloy>* 288)
    .duration(100)
    .EUt(536870900)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:circuitMax> * 4, <gregtech:meta_item_2:26993> * 4, <gregtech:meta_item_1:12993> * 4, <gregtech:cable:7521>)
    .outputs(<gtadditions:ga_multiblock_casing:12>)
    .fluidInputs(<liquid:chaos> * 288)
    .duration(100)
    .EUt(2147483647)
    .buildAndRegister();

recipes.remove(<ae2stuff:grower>);
recipes.addShaped(<ae2stuff:grower>, [[<minecraft:glass>, <gregtech:meta_item_2:18071>, <minecraft:glass>],[<ore:crystalFluix>, <gregtech:meta_item_1:32600>, <ore:crystalFluix>], [<gregtech:cable:5071>, <gregtech:machine:501>, <gregtech:cable:5071>]]);

recipes.remove(<gregtech:machine:2512>);
recipes.addShaped(<gregtech:machine:2512>, [[<ore:circuitExtreme>, <gregtech:fluid_pipe:3235>, <ore:circuitExtreme>],[<gregtech:meta_item_2:26072>, <gregtech:machine:153>, <gregtech:meta_item_2:26072>], [<gregtech:meta_item_1:12981>, <gregtech:meta_item_1:13981>, <gregtech:meta_item_1:12981>]]);


chemical_bath.recipeBuilder()
    .inputs(<ore:dustRegularBrightSteel> * 2)
    .outputs(<astralsorcery:itemcraftingcomponent:2> * 2)
    .fluidInputs(<liquid:astralsorcery.liquidstarlight> * 1000)
    .duration(100)
    .EUt(131072)
    .buildAndRegister();

distillery.findRecipe(24, [<gregtech:meta_item_1:32766>.withTag({Configuration: 2})], [<liquid:oil_light> * 150]).remove();

Utils.removeRecipeByOutput(assembler, [<gregtech:multiblock_casing> ], [], false);

assembler.recipeBuilder()
    .inputs(<gregtech:metal_casing:6>, <gregtech:meta_item_2:18072> * 4, <gregtech:fluid_pipe:2072> * 2)
    .outputs(<gregtech:multiblock_casing> * 2)
    .duration(50)
    .EUt(16)
    .buildAndRegister();

blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2032>,<gregtech:meta_item_1:2155>, <gregtech:meta_item_1:2155>], [<liquid:oxygen> * 2000]).remove();


chemreactor.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2032> * 2)
    .notConsumable(<gregtech:meta_item_1:2155>)
    .outputs(<gregtech:meta_item_1:2693> * 11)
    .fluidInputs(<liquid:oxygen> * 4000, <liquid:hydrogen> * 1000, <liquid:bismuth_nitrate_solution> * 2000)
    .fluidOutputs(<liquid:nitrogen_dioxide> * 1000,<liquid:nitric_acid> * 5000)
    .duration(300)
    .EUt(1920)
    .buildAndRegister();
large_chem.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2032> * 2)
    .notConsumable(<gregtech:meta_item_1:2155>)
    .outputs(<gregtech:meta_item_1:2693> * 11)
    .fluidInputs(<liquid:oxygen> * 4000, <liquid:hydrogen> * 1000, <liquid:bismuth_nitrate_solution> * 2000)
    .fluidOutputs(<liquid:nitrogen_dioxide> * 1000,<liquid:nitric_acid> * 5000)
    .duration(300)
    .EUt(1920)
    .buildAndRegister();

recipes.remove(<randomthings:ingredient:1>);
recipes.addShaped(<randomthings:ingredient:1>, [[<randomthings:stableenderpearl>, <gregtech:meta_item_1:19183>, <randomthings:stableenderpearl>],[<gregtech:meta_item_1:19183>, <ore:itemSkull>, <gregtech:meta_item_1:19183>], [<randomthings:stableenderpearl>, <gregtech:meta_item_1:19183>, <randomthings:stableenderpearl>]]);

centrifuge.findRecipe(640, [<gregtech:meta_item_1:2309>], []).remove();
large_centrifuge.findRecipe(640, [<gregtech:meta_item_1:2309>], []).remove();

centrifuge.findRecipe(320, [<gregtech:meta_item_1:2307>], []).remove();
large_centrifuge.findRecipe(320, [<gregtech:meta_item_1:2307>], []).remove();

Utils.removeRecipeByOutput(blast_furnace, [<gregtech:meta_item_1:10061>], [], true);
recipes.addShaped(<minecraft:name_tag>, [[null, <minecraft:string>, <minecraft:string>],[null, <ore:slimeball>, <minecraft:string>], [<minecraft:string>, null, null]]);

assembler.recipeBuilder()
    .inputs(<minecraft:chest> * 4)
    .outputs(<gregtech:machine:808> * 4)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .duration(60)
    .EUt(16)
    .buildAndRegister();
recipes.addShaped(<gregtech:machine:4034>, [[null, null, null],[null, <gregtech:machine:3243>, <gregtech:ga_cable:5993>], [null, null, null]]);
recipes.addShaped(<gregtech:machine:4029>, [[null, null, null],[<gregtech:ga_cable:5993>, <gregtech:machine:3243>, null], [null, null, null]]);

recipes.remove(<danknull:dank_null_1>);
recipes.remove(<danknull:dank_null_panel_1>);
recipes.addShaped(<danknull:dank_null_1>, [[<danknull:dank_null_panel_1>, <danknull:dank_null_panel_1>, <danknull:dank_null_panel_1>],[<danknull:dank_null_panel_1>, <danknull:dank_null_0>, <danknull:dank_null_panel_1>], [<danknull:dank_null_panel_1>, <danknull:dank_null_panel_1>, <danknull:dank_null_panel_1>]]);
recipes.addShaped(<danknull:dank_null_panel_1>, [[<ore:blockLapis>, <ore:blockCoalCoke>, <ore:blockLapis>],[<ore:blockCoalCoke>, <gtadditions:ga_transparent_casing:1>, <ore:blockCoalCoke>], [<ore:blockLapis>, <ore:blockCoalCoke>, <ore:blockLapis>]]);

large_chem.recipeBuilder()
    .inputs(<gtadditions:ga_dust:922> * 4)
    .fluidInputs(<liquid:fuming_nitric_acid> * 2000)
    .notConsumable(<liquid:acetic_anhydride>)
    .outputs(<gtadditions:ga_dust:530> * 1)
    .EUt(1024)
    .duration(20)
    .buildAndRegister();



large_chem.recipeBuilder()
    .inputs([<gregtech:meta_item_1:373>])
    .fluidInputs( <liquid:creosote> * 10000, <liquid: ethanol> * 1000)
        .fluidOutputs(<liquid: bio_diesel> * 10000, <liquid: glycerol> * 1000)
    .duration(120)
    .EUt(30)
    .buildAndRegister();

large_chem.recipeBuilder()
    .inputs([<gregtech:meta_item_1:373>])
    .fluidInputs( <liquid:creosote>* 10000, <liquid: methanol> * 1000)
    .fluidOutputs(<liquid: bio_diesel> * 10000, <liquid: glycerol> * 1000)
    .duration(120)
    .EUt(30)
    .buildAndRegister();
//update vacuume tube
recipes.remove(<gregtech:meta_item_2:32450>);
recipes.addShaped(<gregtech:meta_item_2:32450>, [[null, <gregtech:meta_item_2:32454>, null],[null, <gregtech:meta_item_1:16018>, null], [<gregtech:meta_item_1:14197>, null, <gregtech:meta_item_1:14197>]]);
recipes.remove(<gtadditions:ga_meta_item:32307>);


chemreactor.recipeBuilder()
    .inputs([<ore:wool> * 5])
    .fluidInputs(<liquid:glue> * 144,<liquid:plastic> * 144)
    .outputs([<gtadditions:ga_meta_item:32307> * 10])
    .duration(160)
    .EUt(14)
    .buildAndRegister();


large_chem.recipeBuilder()
    .inputs([<ore:wool> * 5])
    .fluidInputs(<liquid:glue> * 144,<liquid:plastic> * 144)
    .outputs([<gtadditions:ga_meta_item:32307> * 10])
    .duration(160)
    .EUt(14)
    .buildAndRegister();

green_house.recipeBuilder()
    .notConsumable(<randomthings:glowingmushroom>)
    .inputs(<minecraft:dye:15>)
    .fluidInputs(<liquid:water> * 2000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .outputs([<randomthings:glowingmushroom>])
    .duration(160)
    .EUt(14)
    .buildAndRegister();

green_house.recipeBuilder()
    .notConsumable(<randomthings:glowingmushroom>)
    .inputs(<gregtech:meta_item_1:2754>)
    .fluidInputs(<liquid:water> * 2000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .outputs([<randomthings:glowingmushroom> * 2])
    .duration(160)
    .EUt(14)
    .buildAndRegister();


green_house.recipeBuilder()
    .inputs(<minecraft:brown_mushroom>, <minecraft:glowstone_dust>)
    .fluidInputs(<liquid:water> * 2000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .outputs([<randomthings:glowingmushroom>])
    .duration(160)
    .EUt(14)
    .buildAndRegister();

green_house.recipeBuilder()
    .inputs(<minecraft:red_mushroom>, <minecraft:glowstone_dust>)
    .fluidInputs(<liquid:water> * 2000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .outputs([<randomthings:glowingmushroom>])
    .duration(160)
    .EUt(14)
    .buildAndRegister();

Utils.removeRecipeByOutput(chemreactor, [], [<liquid:indium_concentrate>], false);
Utils.removeRecipeByOutput(large_chem, [], [<liquid:indium_concentrate>], false);

largeMix.recipeBuilder()
    .inputs([<ore:sand> * 4,<minecraft:gravel> * 4])
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 3}))
    .fluidInputs(<liquid:water> * 1000)
    .outputs([<enderio:item_material:22> * 16])
    .EUt(500)
    .duration(80)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembler, [<gregtech:machine:508>], [], true);

assembler.recipeBuilder()
    .inputs([<gregtech:cable:5308> * 2, <gregtech:machine_casing:8>])
    .outputs(<gregtech:machine:508>)
    .fluidInputs(<liquid:polybenzimidazole>* 288)
    .duration(50)
    .EUt(16)
    .buildAndRegister();


large_chem.recipeBuilder()
.inputs(<actuallyadditions:item_misc:23> * 8)
.fluidInputs(<liquid:refinedcanolaoil> * 10000)
.fluidOutputs( <liquid:crystaloil> * 10000)
.duration(300)
.EUt(16)
.buildAndRegister();

large_chem.recipeBuilder()
.fluidInputs(<liquid:crystaloil> * 5000, <liquid: creosote> * 5000)
.fluidOutputs( <liquid:empoweredoil> * 10000)
.duration(300)
.EUt(16)
.buildAndRegister();

large_chem.recipeBuilder()
.inputs([<gregtech:meta_item_1:373>])
.fluidInputs( <liquid:empoweredoil> * 10000, <liquid: ethanol> * 1000)
.fluidOutputs(<liquid: bio_diesel> * 10000, <liquid: glycerol> * 1000)
.duration(120)
.EUt(30)
.buildAndRegister();

large_chem.recipeBuilder()
.inputs([<gregtech:meta_item_1:373>])
.fluidInputs( <liquid:empoweredoil>* 10000, <liquid: methanol> * 1000)
.fluidOutputs(<liquid: bio_diesel> * 10000, <liquid: glycerol> * 1000)
.duration(120)
.EUt(30)
.buildAndRegister();

chemreactor.recipeBuilder()
    .inputs([<ore:wool> * 5])
    .fluidInputs(<liquid:glue> * 144,<liquid:polytetrafluoroethylene> * 144)
    .outputs([<gtadditions:ga_meta_item:32307> * 20])
    .duration(160)
    .EUt(116)
    .buildAndRegister();


large_chem.recipeBuilder()
    .inputs([<ore:wool> * 5])
    .fluidInputs(<liquid:glue> * 144,<liquid:polytetrafluoroethylene> * 144)
    .outputs([<gtadditions:ga_meta_item:32307> * 20])
    .duration(160)
    .EUt(116)
    .buildAndRegister();


chemreactor.recipeBuilder()
    .inputs([<ore:wool> * 5])
    .fluidInputs(<liquid:glue> * 144,<liquid:polybenzimidazole> * 144)
    .outputs([<gtadditions:ga_meta_item:32307> * 40])
    .duration(160)
    .EUt(116)
    .buildAndRegister();


large_chem.recipeBuilder()
    .inputs([<ore:wool> * 5])
    .fluidInputs(<liquid:glue> * 144,<liquid:polybenzimidazole> * 144)
    .outputs([<gtadditions:ga_meta_item:32307> * 40])
    .duration(160)
    .EUt(116)
    .buildAndRegister();

recipes.addShaped(<contenttweaker:eternityblock>, [[<contenttweaker:eternityingot>, <contenttweaker:eternityingot>, <contenttweaker:eternityingot>],[<contenttweaker:eternityingot>, <contenttweaker:eternityingot>, <contenttweaker:eternityingot>], [<contenttweaker:eternityingot>, <contenttweaker:eternityingot>, <contenttweaker:eternityingot>]]);
recipes.addShapeless(<contenttweaker:eternityingot> * 9, [<contenttweaker:eternityblock>]);

recipes.addShaped(<minecraft:diamond_hoe>.withTag({Unbreakable: 1 as long, RepairCost: 1, display: {Name: "Unbreakable Emerald Tipped Diamond Hoe"}}), [[<minecraft:emerald>, <minecraft:emerald>, null],[<minecraft:emerald>, <minecraft:diamond_hoe>, null], [null, null, null]]);
mods.jei.JEI.addItem(<minecraft:diamond_hoe>.withTag({display:{Name: "Unbreakable Emerald Tipped Diamond Hoe"}}));

blast_alloy.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2736> * 4])
    .inputs([<gregtech:meta_item_1:2735> * 4])
    .property("temperature", 11200)
    .fluidOutputs(<liquid:fusion1> * 1152)
    .duration(160)
    .EUt(1000000)
    .buildAndRegister();

blast_alloy.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2743> * 4])
    .property("temperature", 11200)
    .inputs([<gregtech:meta_item_1:2742> * 4])
    .fluidOutputs(<liquid:fusion2> * 1152)
    .duration(160)
    .EUt(1000000)
    .buildAndRegister();

Utils.removeRecipeByOutput(blast_alloy, [], [<liquid:superheavy_mix> * 4000], false);
//blast_alloy.findRecipe(25000000, [<gregtech:meta_item_1:2743>, <gregtech:meta_item_1:2742>, <gregtech:meta_item_1:2736>, <gregtech:meta_item_1:2735>, ])

ADVFusion.recipeBuilder()
    .fluidInputs(<liquid:fusion1> * 288, <liquid:fusion2> * 288)//,<liquid:lead_bismuth_eutatic> * 7440)
    .fluidOutputs(<liquid:superheavy_mix> * 1000)//, <liquid:supercritical_lead_bismuth_eutectic> * 7440)
    .property("eu_to_start", 10000000000)
    .property("coilTier", 4)
    .property("euReturn", 75)
    .duration(50)
    .EUt(4000000)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembly_line, [<gtadditions:ga_meta_item:32607>], [], false);


assembly_line.recipeBuilder()
    .inputs([<gtadditions:ga_meta_item:32426> * 64, <gtadditions:ga_meta_item:32603> * 32, <gtadditions:ga_meta_item:32602> * 32, <gtadditions:ga_meta_item:32604> * 32, <gtadditions:ga_meta_item:32601> * 32, <gregtech:meta_item_1:19729> * 32, <gtadditions:ga_meta_item:32424> * 32, <gregtech:ga_cable:737> * 16, <gtadditions:ga_meta_item:32595> * 8, <gtadditions:ga_meta_item:32606> * 4, <gregtech:meta_item_1:12519> * 4])
    .fluidInputs(<liquid:polyetheretherketone> * 2592, <liquid:vibranium> * 288, <liquid:enriched_naquadah_alloy> * 1296, <liquid:trinium_titanium> * 576)
    .outputs(<gtadditions:ga_meta_item:32607>)
    .property("qubit", 2)
    .duration(300)
    .EUt(4000000)
    .buildAndRegister();


//capacitor recipes
recipes.addShaped(<gregtech:meta_item_2:32452> * 4, [[<gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>],[<gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>, <gregtech:meta_item_1:19001>], [<gregtech:cable:71>, null, <gregtech:cable:71>]]);

Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_2:32452> * 2], [], false);

assembler.recipeBuilder()
.inputs([<ore:foilAluminium> * 4,<ore:platePlastic> * 1])
.outputs([<gregtech:meta_item_2:32452> * 12])
.duration(80)
.EUt(16)
.buildAndRegister();

//new electronic circuit recipe

Utils.removeRecipeByOutput(circuit_assembler, [<gregtech:meta_item_2:32488>], [], false);

circuit_assembler.recipeBuilder()
.inputs([<gregtech:meta_item_2:32455> * 8,<gregtech:meta_item_2:32452> * 4, <ore:wireFineCopper> * 4, <gtadditions:ga_meta_item:32030>])
.fluidInputs(<liquid:soldering_alloy> * 50)
.outputs([<gregtech:meta_item_2:32488> * 1])
.duration(100)
.EUt(16)
.buildAndRegister();

circuit_assembler.recipeBuilder()
.inputs([<gtadditions:ga_meta_item:32241> * 2,<gtadditions:ga_meta_item:32242> * 2, <ore:wireFineCopper> * 4, <gtadditions:ga_meta_item:32030>])
.fluidInputs(<liquid:soldering_alloy> * 50)
.outputs([<gregtech:meta_item_2:32488> * 1])
.duration(100)
.EUt(16)
.buildAndRegister();


compressor.recipeBuilder()
.inputs([<ore:ingotSilver> * 9])
.outputs([<gregtech:meta_block_compressed_3:14> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotPlatinum> * 9])
.outputs([<gregtech:meta_block_compressed_3:3> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotEnderium> * 9])
.outputs([<gregtech:meta_block_compressed_60:3> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotLead> * 9])
.outputs([<gregtech:meta_block_compressed_2:3> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotBronze> * 9])
.outputs([<gregtech:meta_block_compressed_5:15> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotSilicon> * 9])
.outputs([<gregtech:meta_block_compressed_3:13> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotCopper> * 9])
.outputs([<gregtech:meta_block_compressed_1:2> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotTin> * 9])
.outputs([<gregtech:meta_block_compressed_4:7> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotNickel> * 9])
.outputs([<gregtech:meta_block_compressed_2:12> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotInvar> * 9])
.outputs([<gregtech:meta_block_compressed_7:14> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotElectrum> * 9])
.outputs([<gregtech:meta_block_compressed_7> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

//block fixes

compressor.recipeBuilder()
.inputs([<ore:ingotSilver> * 9])
.outputs([<gregtech:meta_block_compressed_3:14> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotPlatinum> * 9])
.outputs([<gregtech:meta_block_compressed_3:3> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotEnderium> * 9])
.outputs([<gregtech:meta_block_compressed_60:3> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotLead> * 9])
.outputs([<gregtech:meta_block_compressed_2:3> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotBronze> * 9])
.outputs([<gregtech:meta_block_compressed_5:15> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotSilicon> * 9])
.outputs([<gregtech:meta_block_compressed_3:13> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotCopper> * 9])
.outputs([<gregtech:meta_block_compressed_1:2> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotTin> * 9])
.outputs([<gregtech:meta_block_compressed_4:7> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotNickel> * 9])
.outputs([<gregtech:meta_block_compressed_2:12> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotInvar> * 9])
.outputs([<gregtech:meta_block_compressed_7:14> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

compressor.recipeBuilder()
.inputs([<ore:ingotElectrum> * 9])
.outputs([<gregtech:meta_block_compressed_7> * 1])
.duration(400)
.EUt(2)
.buildAndRegister();

Utils.removeRecipeByOutput(ADVFusion, [], [<liquid:neutronium> * 1296], false);

Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_1:32670>], [], false);
Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_1:32671>], [], false);
Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_1:32672>], [], false);
Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_1:32673>], [], false);
Utils.removeRecipeByOutput(assembler, [<gregtech:meta_item_1:32674>], [], false);

recipes.remove(<gregtech:meta_item_1:32670>);
recipes.remove(<gregtech:meta_item_1:32671>);
recipes.remove(<gregtech:meta_item_1:32672>);
recipes.remove(<gregtech:meta_item_1:32673>);
recipes.remove(<gregtech:meta_item_1:32674>);


//lv
assembler.recipeBuilder()
    .inputs([<ore:circuitBasic>,<gregtech:meta_item_1:2218>])
    .outputs(<gregtech:meta_item_1:32670>)
    .fluidInputs(<liquid:lv_superconductor_base> * 288)
    .duration(100)
    .EUt(30)
    .buildAndRegister();
//mv
assembler.recipeBuilder()
    .inputs([<ore:circuitGood> * 4, <gregtech:meta_item_1:2219>])
    .outputs(<gregtech:meta_item_1:32671>)
    .fluidInputs(<liquid:mv_superconductor_base> * 576)
    .duration(100)
    .EUt(120)
    .buildAndRegister();
//hv
assembler.recipeBuilder()
    .inputs([<ore:circuitAdvanced> * 4, <gregtech:meta_item_1:32724>])
    .outputs(<gregtech:meta_item_1:32672>)
    .fluidInputs(<liquid:hv_superconductor_base> * 1152)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
//EV
assembler.recipeBuilder()
    .inputs([<ore:circuitExtreme> * 4, <gregtech:meta_item_1:2331>])
    .outputs(<gregtech:meta_item_1:32673>)
    .fluidInputs(<liquid:ev_superconductor_base> * 2304)
    .duration(100)
    .EUt(1920)
    .buildAndRegister();
//IV
assembler.recipeBuilder()
    .inputs([<ore:circuitElite> * 4, <gregtech:meta_item_1:32725>])
    .outputs(<gregtech:meta_item_1:32674>)
    .fluidInputs(<liquid:iv_superconductor_base> * 4608)
    .duration(100)
    .EUt(7680)
    .buildAndRegister();

recipes.addShaped(<gregtech:meta_item_1:32674>, [[<gregtech:cable:4973>, <ore:circuitElite>, <gregtech:cable:4973>],[<ore:circuitElite>, <gregtech:meta_item_1:32725>, <ore:circuitElite>], [<gregtech:cable:4973>, <ore:circuitElite>, <gregtech:cable:4973>]]);
recipes.addShaped(<gregtech:meta_item_1:32673>, [[<gregtech:cable:3974>, <ore:circuitExtreme>, <gregtech:cable:3974>],[<ore:circuitExtreme>, <minecraft:nether_star>, <ore:circuitExtreme>], [<gregtech:cable:3974>, <ore:circuitExtreme>, <gregtech:cable:3974>]]);
recipes.addShaped(<gregtech:meta_item_1:32672>, [[<gregtech:cable:2975>, <ore:circuitAdvanced>, <gregtech:cable:2975>],[<ore:circuitAdvanced>, <gregtech:meta_item_1:32724>, <ore:circuitAdvanced>], [<gregtech:cable:2975>, <ore:circuitAdvanced>, <gregtech:cable:2975>]]);
recipes.addShaped(<gregtech:meta_item_1:32671>, [[<gregtech:cable:1976>, <ore:circuitGood>, <gregtech:cable:1976>],[<ore:circuitGood>, <minecraft:ender_eye>, <ore:circuitGood>], [<gregtech:cable:1976>, <ore:circuitGood>, <gregtech:cable:1976>]]);
recipes.addShaped(<gregtech:meta_item_1:32670>, [[<gregtech:cable:516>, <ore:circuitBasic>, <gregtech:cable:516>],[<ore:circuitBasic>, <minecraft:ender_pearl>, <ore:circuitBasic>], [<gregtech:cable:516>, <ore:circuitBasic>, <gregtech:cable:516>]]);

Utils.removeRecipeByOutput(largeMix, [<gregtech:meta_item_1:2134> * 2], [], true);

largeMix.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2045>])
    .outputs(<gregtech:meta_item_1:2134> * 2)
    .fluidInputs(<liquid:nitrogen> * 1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(108)
    .EUt(30)
    .buildAndRegister();

Utils.removeRecipeByOutput(largeMix, [<gregtech:meta_item_1:2133> * 5], [], true);

largeMix.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2016>, <gregtech:meta_item_1:2044> * 4])
    .outputs(<gregtech:meta_item_1:2133> * 5)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
    .duration(280)
    .EUt(30)
    .buildAndRegister();

condenser.recipeBuilder()
    .fluidInputs(<liquid:plasma.helium3> * 1000,<liquid:superfluid_helium> * 100)
    .fluidOutputs(<liquid:helium> * 100,<liquid:helium3> * 1000)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .duration(40)
    .EUt(960)
    .buildAndRegister();

largeMix.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2018> *3,<gregtech:meta_item_1:2062> ])
    .fluidInputs(<liquid:redstone> * 1000)
    .outputs([<thermalfoundation:material:101> * 4])
    .duration(240)
    .EUt(500)
    .buildAndRegister();

//steel
assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_1:12184> * 4,<ore:frameGtSteel>,<gregtech:meta_item_2:26184> * 2])
    .outputs(<gregtech:turbine_casing:1>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();
//ti
assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_1:12184> * 4,<gregtech:frame_titanium>,<gregtech:meta_item_2:26072> * 2])
    .outputs(<gregtech:turbine_casing:2> * 3)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

Utils.removeRecipeByOutput(assembly_line, [<gregtech:meta_item_1:2134> * 2], [], true);
Utils.removeRecipeByOutput(assembly_line, [<gregtech:meta_item_1:32670> * 16], [], true);

assembly_line.recipeBuilder()
    .inputs([<gregtech:meta_item_1:10180> * 2, <ore:circuitBasic> * 8 , <ore:dustEnderPearl> * 4])
    .outputs(<gregtech:meta_item_1:32670> * 16)
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    .notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
    .duration(6000)
    .EUt(8000)
    .buildAndRegister();
<actuallyadditions:item_misc:5>.addTooltip("Smelt Quartzite dust twice");
<actuallyadditions:item_dust:7>.addTooltip("Smelt Quartzite dust");