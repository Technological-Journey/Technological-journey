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
.EUt(512)
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
blast_furnace.recipeBuilder()
    .inputs(<redstonearsenal:material> * 1)
    .outputs(<redstonearsenal:material:32> * 1)
    .property("temperature", 2700) //this is a minimal temperature at which the item will be smelted
    .duration(40)
    .EUt(512)
    .buildAndRegister();

macerator.recipeBuilder()
.inputs([<minecraft:obsidian>])
.outputs([<gregtech:meta_item_1:2138>])
.duration(160)
.EUt(32)
.buildAndRegister();

autoclave.recipeBuilder()
    .inputs([<minecraft:diamond> *2])
    .fluidInputs(<liquid:redstone> *1000)
    .outputs([<redstonearsenal:material:160> * 2])
    .duration(160)
    .EUt(128)
    .buildAndRegister();

mixer.recipeBuilder()
.inputs([<gregtech:meta_item_1:2062>,<gregtech:meta_item_1:2026> ])
.fluidInputs(<liquid:redstone> * 1000)
.outputs([<redstonearsenal:material> * 2])
.duration(240)
.EUt(512)
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

chemreactor.recipeBuilder()
.inputs([<extrautils2:compressedsand:1>])
.fluidInputs(<liquid:lava> * 1000)
.outputs([<minecraft:end_stone>])
.duration(160)
.EUt(32)
.buildAndRegister();

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

compressor.recipeBuilder()
.inputs([<redstonearsenal:material:32>])
.outputs([<redstonearsenal:material:128>])
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
recipes.addShaped(<simplyjetpacks:metaitemmods:4>, [[<ore:ingotConductiveIron>, <ore:ingotConductiveIron>, <ore:ingotConductiveIron>],[<ore:ingotConductiveIron>, <ore:ingotConductiveIron>, <ore:ingotConductiveIron>], [<ore:ingotConductiveIron>, <ore:ingotConductiveIron>, <ore:ingotConductiveIron>]]);
recipes.addShaped(<simplyjetpacks:metaitemmods:5>, [[<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>],[<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>], [<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>]]);
recipes.addShaped(<simplyjetpacks:metaitemmods:6>, [[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>], [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>]]);
recipes.addShaped(<simplyjetpacks:metaitemmods:19>, [[<ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>],[<ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>], [<ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>]]);

//low tank
extruder.recipeBuilder()
.inputs([<minecraft:iron_ingot> *16])
.notConsumable(<gregtech:meta_item_1:32313>)
.outputs([<advancedrocketry:pressuretank>])
.duration(600)
.EUt(32)
.buildAndRegister();
//med tank
extruder.recipeBuilder()
.inputs([<gregtech:meta_item_1:10184> *16])
.notConsumable(<gregtech:meta_item_1:32313>)
.outputs([<advancedrocketry:pressuretank:1>])
.duration(600)
.EUt(128)
.buildAndRegister();
// large tank
extruder.recipeBuilder()
.inputs([<gregtech:meta_item_1:10183> *16])
.notConsumable(<advancedrocketry:pressuretank:2>)
.outputs([<advancedrocketry:pressuretank:2>])
.duration(600)
.EUt(512)
.buildAndRegister();
//max tank
extruder.recipeBuilder()
.inputs([<gregtech:meta_item_1:10072> *16])
.notConsumable(<advancedrocketry:pressuretank:2>)
.outputs([<advancedrocketry:pressuretank:3>])
.duration(600)
.EUt(1048)
.buildAndRegister();
freezer.findRecipe(48000,null,[<fluid:air>* 4000]).remove();
centrifuge.findRecipe(48000,null,[<fluid:liquid_air>* 53000]).remove();

alloy.recipeBuilder()
    .inputs([<redstonearsenal:material:128>,<redstonearsenal:material:160> ])
    .outputs([<simplyjetpacks:metaitemmods:26>])
    .duration(160)
    .EUt(1048)
    .buildAndRegister();
    blast_furnace .findRecipe(2361600,[<gregtech:meta_item_1:10074>,<gregtech:meta_item_1:2012>] ,null).remove();
    arc.findRecipe(1800,[<gregtech:meta_item_1:12018>],[<liquid:oxygen> * 60]).remove();
    arc.findRecipe(1800,[<gregtech:meta_item_2:26018>],[<liquid:oxygen> * 240]).remove();
    arc.findRecipe(1800,[<gregtech:meta_item_1:13018>],[<liquid:oxygen> * 540]).remove();
    arc.findRecipe(1800,[<gregtech:compressed_0:15>],[<liquid:oxygen>* 540]).remove();
