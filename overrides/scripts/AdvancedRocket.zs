import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import scripts.commonNames;



mods.advancedrocketry.ChemicalReactor.clear(); 
mods.advancedrocketry.PrecisionAssembler.clear(); 

mods.advancedrocketry.CuttingMachine.clear();
mods.advancedrocketry.RollingMachine.clear();
mods.advancedrocketry.Lathe.clear();
mods.advancedrocketry.Electrolyser.clear();
mods.advancedrocketry.ArcFurnace.clear();
mods.advancedrocketry.Crystallizer.clear(); 
mods.advancedrocketry.PlatePresser.clear();
recipes.remove(<advancedrocketry:launchpad>);
mixer.recipeBuilder()
.inputs([<gregtech:concrete>,<ore:dyeYellow>,<ore:dyeBlack>])
.outputs([<advancedrocketry:launchpad>])
.duration(240)
.EUt(512)
.buildAndRegister();
recipes.remove(<advancedrocketry:loader:1>);
recipes.remove(<advancedrocketry:ic:3>);
recipes.remove(<advancedrocketry:spaceboots>);
recipes.remove(<advancedrocketry:spacechestplate>);
recipes.remove(<libvulpes:structuremachine>);
recipes.remove(<libvulpes:holoprojector>);
recipes.remove(<advancedrocketry:spaceleggings>);
recipes.remove(<advancedrocketry:spacehelmet>);
recipes.addShaped(<advancedrocketry:spacehelmet>, [[<minecraft:wool>, <ore:plateDenseStainlessSteel>, <minecraft:wool>],[<ore:wool>, <minecraft:glass_pane>, <ore:wool>], [<ore:plateDenseStainlessSteel>, <minecraft:leather_helmet>, <ore:plateDenseStainlessSteel>]]);
recipes.addShaped(<advancedrocketry:spacechestplate>, [[null, <ore:plateDenseStainlessSteel>, null],[<ore:wool>, <minecraft:leather_chestplate>, <ore:wool>], [<ore:plateDenseStainlessSteel>, <ore:wool>, <ore:plateDenseStainlessSteel>]]);
recipes.addShaped(<advancedrocketry:spaceleggings>, [[<gregtech:meta_item_1:13183>, null, <gregtech:meta_item_1:13183>],[<ore:wool>, <minecraft:leather_leggings>, <ore:wool>], [<ore:wool>, <ore:wool>, <ore:wool>]]);
recipes.addShaped(<advancedrocketry:spaceboots>, [[<gregtech:meta_item_1:13183>, <ore:wool>, <gregtech:meta_item_1:13183>],[<ore:wool>, <minecraft:leather_boots>, <ore:wool>], [<gregtech:meta_item_1:13183>, <ore:wool>, <gregtech:meta_item_1:13183>]]);
recipes.addShaped(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 13 as short}]}), [[null, <ore:stickLongStainlessSteel>, null],[null, <advancedrocketry:spacehelmet>, null], [null, <ore:bookEmpty>, null]]);
recipes.addShaped(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 13 as short}]}), [[null, <ore:stickLongStainlessSteel>, null],[null, <advancedrocketry:spacechestplate>, null], [null, <ore:bookEmpty>, null]]);
recipes.addShaped(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 13 as short}]}), [[null, <ore:stickLongStainlessSteel>, null],[null, <advancedrocketry:spaceleggings>, null], [null, <ore:bookEmpty>, null]]);
recipes.addShaped(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 13 as short}]}), [[null, <ore:stickLongStainlessSteel>, null],[null, <advancedrocketry:spaceboots>, null], [null, <ore:bookEmpty>, null]]);

recipes.remove(<advancedrocketry:rocketmotor>);
recipes.remove(<advancedrocketry:advrocketmotor>);
recipes.remove(<advancedrocketry:fuelingstation>);
recipes.remove(<advancedrocketry:fueltank>);
recipes.remove(<advancedrocketry:guidancecomputer>);
recipes.remove(<advancedrocketry:thermite>);
recipes.remove(<advancedrocketry:ic:5>);
recipes.remove(<advancedrocketry:ic:4>);
recipes.remove(<advancedrocketry:gravitymachine>);
recipes.remove(<advancedrocketry:altitudecontroller>);
recipes.remove(<advancedrocketry:stationmarker>);
recipes.remove(<advancedrocketry:circlelight>);
recipes.remove(<advancedrocketry:stationbuilder>);
recipes.remove(<advancedrocketry:oxygenscrubber>);
recipes.remove(<advancedrocketry:oxygenvent>);
recipes.remove(<advancedrocketry:oxygencharger>);
recipes.remove(<advancedrocketry:landingpad>);
recipes.remove(<advancedrocketry:warpcore>);
recipes.remove(<advancedrocketry:warpmonitor>);
recipes.remove(<advancedrocketry:orientationcontroller>);
recipes.remove(<advancedrocketry:gravitycontroller>);
recipes.remove(<advancedrocketry:rocketbuilder>);
recipes.addShaped(<advancedrocketry:warpmonitor>, [[<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32692>, <gregtech:meta_item_1:12183>],[<gregtech:meta_item_1:32692>, <gregtech:machine:503>, <gregtech:meta_item_1:32692>], [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32692>, <gregtech:meta_item_1:12183>]]);
recipes.addShaped(<advancedrocketry:orientationcontroller>, [[<gregtech:meta_item_1:13183>, <gregtech:machine:503>, <gregtech:meta_item_1:13183>],[<gregtech:machine:503>, <advancedrocketry:misc>, <gregtech:machine:503>], [<gregtech:meta_item_1:13183>, <gregtech:machine:503>, <gregtech:meta_item_1:13183>]]);
recipes.addShaped(<advancedrocketry:loader:1>, [[<gregtech:meta_item_1:14183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:14183>],[<gregtech:meta_item_1:12183>, <minecraft:chest>, <gregtech:meta_item_1:12183>], [<gregtech:meta_item_1:14183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:14183>]]);
recipes.addShaped(<advancedrocketry:oxygencharger>, [[null, null, null],[<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:12183>], [null, <gregtech:machine:2196>, null]]);
recipes.addShaped(<advancedrocketry:oxygenvent>, [[null, <gregtech:meta_item_1:32612>, null],[null, <gregtech:machine:503>, null], [<gregtech:meta_item_1:13183>, <gregtech:meta_item_1:13183>, <gregtech:meta_item_1:13183>]]);
recipes.addShaped(<advancedrocketry:oxygenscrubber>, [[<gregtech:meta_item_1:13183>, <gregtech:meta_item_1:13183>, <gregtech:meta_item_1:13183>],[null,<gregtech:machine:503>, null], [null, <gregtech:meta_item_1:32612>, null]]);
recipes.addShaped(<advancedrocketry:gravitycontroller>, [[<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32682>, <gregtech:meta_item_1:12183>],[<gregtech:meta_item_1:12183>, <gregtech:machine:503>, <gregtech:meta_item_1:12183>], [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32692>, <gregtech:meta_item_1:12183>]]);
recipes.addShaped(<advancedrocketry:rocketbuilder>, [[<gregtech:meta_item_1:12183>, <advancedrocketry:misc>, <gregtech:meta_item_1:12183>],[<gregtech:meta_item_1:32652>, <gregtech:machine:503>, <gregtech:meta_item_1:32652>], [<gregtech:meta_item_1:12183>, null, <gregtech:meta_item_1:12183>]]);
recipes.addShaped(<libvulpes:structuremachine> * 4, [[<gregtech:meta_item_2:19183>, <gregtech:meta_item_1:13183>, <gregtech:meta_item_2:19183>],[<gregtech:meta_item_1:13183>, <gregtech:meta_item_2:19183>, <gregtech:meta_item_1:13183>], [<gregtech:meta_item_2:19183>, <gregtech:meta_item_1:13183>, <gregtech:meta_item_2:19183>]]);
recipes.addShaped(<advancedrocketry:warpcore>, [[<gregtech:meta_item_1:12072>, <ore:circuitExtreme>, <gregtech:meta_item_1:12072>],[<gregtech:meta_item_1:12072>, <gregtech:machine:504>, <gregtech:meta_item_1:12072>], [<gregtech:meta_item_1:12072>, <ore:circuitExtreme>, <gregtech:meta_item_1:12072>]]);
recipes.addShaped(<advancedrocketry:circlelight>, [[null, <gregtech:meta_item_1:12033>, null],[<gregtech:meta_item_1:12033>, <minecraft:glowstone>, <gregtech:meta_item_1:12033>], [null, <gregtech:meta_item_1:12033>, null]]);
recipes.addShaped(<advancedrocketry:altitudecontroller>, [[<gregtech:meta_item_1:12183>, <advancedrocketry:misc>, <gregtech:meta_item_1:12183>],[<gregtech:meta_item_1:32692>, <gregtech:machine:503>, <gregtech:meta_item_1:32692>], [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>]]);
recipes.addShaped(<advancedrocketry:stationmarker>, [[<gregtech:meta_item_1:12183>, <advancedrocketry:misc>, <gregtech:meta_item_1:12183>],[<gregtech:meta_item_1:13183>, <gregtech:machine:503>, <gregtech:meta_item_1:13183>], [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:13183>, <gregtech:meta_item_1:12183>]]);
recipes.addShaped(<advancedrocketry:gravitymachine>, [[<gregtech:meta_item_1:32682>, <advancedrocketry:misc>, <gregtech:meta_item_1:32682>],[<gregtech:meta_item_1:13183>, <gregtech:machine:503>, <gregtech:meta_item_1:13183>], [<gregtech:meta_item_1:13183>, <gregtech:meta_item_1:32682>, <gregtech:meta_item_1:13183>]]);
recipes.addShaped(<advancedrocketry:stationbuilder>, [[<gregtech:meta_item_1:32692>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32692>],[<gregtech:meta_item_1:32652>, <gregtech:machine:503>, <gregtech:meta_item_1:32652>], [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32682>, <gregtech:meta_item_1:12183>]]);
recipes.addShaped(<advancedrocketry:fueltank>, [[<gregtech:meta_item_1:14183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:14183>],[<gregtech:meta_item_1:12183>, null, <gregtech:meta_item_1:12183>], [<gregtech:meta_item_1:14183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:14183>]]);
alloy.recipeBuilder()
    .inputs([<gregtech:meta_item_2:32440>,<minecraft:glass_pane>])
    .outputs([<advancedrocketry:wafer>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
engraver.recipeBuilder()
    .inputs([<advancedrocketry:wafer>])
    .notConsumable(<ore:craftingLensWhite>)
    .outputs([<advancedrocketry:itemcircuitplate>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
engraver.recipeBuilder()
    .inputs([<advancedrocketry:wafer>])
    .notConsumable(<ore:craftingLensLime>)
    .outputs([<advancedrocketry:itemcircuitplate:1>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    saw.recipeBuilder()
    .inputs([<advancedrocketry:itemcircuitplate:1>])
    .fluidInputs(<liquid:lubricant> * 144)
    .outputs([<advancedrocketry:ic:2> * 16])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
     saw.recipeBuilder()
    .inputs([<advancedrocketry:itemcircuitplate>])
    .fluidInputs(<liquid:lubricant> * 144)
    .outputs([<advancedrocketry:ic> * 16])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    recipes.addShaped(<advancedrocketry:ic:1>, [[null, null, null],[null, <advancedrocketry:ic>, null], [<advancedrocketry:ic:2>, <advancedrocketry:ic:2>, <advancedrocketry:ic:2>]]);
    recipes.addShaped(<advancedrocketry:satelliteidchip>, [[null, null, null],[null, <advancedrocketry:ic:2>, null], [<advancedrocketry:ic>, <advancedrocketry:ic>, <advancedrocketry:ic>]]);
    recipes.addShaped(<advancedrocketry:advrocketmotor>, [[null, <gregtech:meta_item_2:19072>, null],[<gregtech:meta_item_2:19072>, null, <gregtech:meta_item_2:19072>], [<gregtech:meta_item_1:13072>, <gregtech:meta_item_1:13072>, <gregtech:meta_item_1:13072>]]);
    recipes.addShaped(<advancedrocketry:rocketmotor>, [[null, <gregtech:meta_item_2:19183>, null],[<gregtech:meta_item_2:19183>, null, <gregtech:meta_item_2:19183>], [<gregtech:meta_item_1:13183>, <gregtech:meta_item_1:13183>, <gregtech:meta_item_1:13183>]]);
    recipes.addShaped(<advancedrocketry:fuelingstation>, [[<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:12183>],[<gregtech:meta_item_1:32612>, <gregtech:machine:503>, <gregtech:meta_item_1:32612>], [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:12183>]]);
    recipes.addShaped(<advancedrocketry:guidancecomputer>, [[<gregtech:meta_item_1:12033>, <advancedrocketry:misc>, <gregtech:meta_item_1:12033>],[<gregtech:meta_item_1:32682>, <gregtech:machine:503>, <gregtech:meta_item_1:32682>], [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:32692>, <gregtech:meta_item_1:12033>]]);
    recipes.addShapeless(<advancedrocketry:landingpad>, [<advancedrocketry:launchpad>,<advancedrocketry:ic>]);
    recipes.addShaped(<libvulpes:holoprojector>, [[<minecraft:glass_pane>, <gregtech:meta_item_1:32682>, <minecraft:glass_pane>],[null, <gregtech:machine:503>, null], [null, null, null]]);

chemreactor.recipeBuilder()
.inputs([<gregtech:meta_item_1:2033> * 2,<gregtech:meta_item_1:2001>*1])
.fluidInputs( <liquid:oxygen> * 2000)
.outputs([<advancedrocketry:thermite> * 3])
.duration(600)
.EUt(32)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<advancedrocketry:crystal>])
.outputs([<actuallyadditions:item_crystal_shard:1> * 4])
.duration(160)
.EUt(32)
.buildAndRegister();
macerator.recipeBuilder()
.inputs([<advancedrocketry:crystal:1>])
.outputs([<actuallyadditions:item_crystal_shard:2> * 4])
.duration(160)
.EUt(32)
.buildAndRegister();
macerator.recipeBuilder()
.inputs([<advancedrocketry:crystal:2>])
.outputs([<actuallyadditions:item_crystal_shard:4> * 4])
.duration(160)
.EUt(32)
.buildAndRegister();
macerator.recipeBuilder()
.inputs([<advancedrocketry:crystal:3>])
.outputs([<actuallyadditions:item_crystal_shard> * 4])
.duration(160)
.EUt(32)
.buildAndRegister();
macerator.recipeBuilder()
.inputs([<advancedrocketry:crystal:5>])
.outputs([<actuallyadditions:item_crystal_shard:3> * 4])
.duration(160)
.EUt(32)
.buildAndRegister();
macerator.recipeBuilder()
.inputs([<advancedrocketry:crystal:4>])
.outputs([<actuallyadditions:item_crystal_shard:5> * 4])
.duration(160)
.EUt(32)
.buildAndRegister();

alloy.recipeBuilder()
    .inputs([<advancedrocketry:hotturf>,<minecraft:glass>])
    .outputs([<gtadditions:ga_transparent_casing>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();

    chemreactor.recipeBuilder()
.inputs([<ore:sand> * 2,<gregtech:meta_item_1:2033>])
.fluidInputs( <liquid:oxygen> * 2000)
.outputs([<advancedrocketry:hotturf>])
.duration(600)
.EUt(32)
.buildAndRegister();

autoclave.recipeBuilder()
.inputs([<libvulpes:productdust>])
.fluidInputs([<liquid:water> * 1000])
.outputs([<libvulpes:productgem>])
.duration(120)
.EUt(512)
.buildAndRegister();
<advancedrocketry:charcoallog>.addTooltip("ID 400 artifact");
<advancedrocketry:hotturf>.addTooltip("ID 401 artifact");
<gregtech:compressed_7:9>.addTooltip("ID 402 artifact");
<gregtech:compressed_2:6>.addTooltip("ID 403 artifact");

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
.notConsumable(<gregtech:meta_item_1:32313>)
.outputs([<advancedrocketry:pressuretank:2>])
.duration(600)
.EUt(512)
.buildAndRegister();
//max tank
extruder.recipeBuilder()
.inputs([<gregtech:meta_item_1:10072> *16])
.notConsumable(<gregtech:meta_item_1:32313>)
.outputs([<advancedrocketry:pressuretank:3>])
.duration(600)
.EUt(1048)
.buildAndRegister();
