import mods.gtadditions.recipe.Utils;
//red
assembler.recipeBuilder()
.inputs([<actuallyadditions:block_crystal>,<minecraft:brick> * 2,<minecraft:netherbrick> *2,<minecraft:redstone_block> * 2])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:block_crystal_empowered>])
.duration(160)
.EUt(120)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<actuallyadditions:item_crystal>,<minecraft:brick_block> * 2,<minecraft:nether_brick> *2,<minecraft:redstone_block> * 2])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:item_crystal_empowered>])
.duration(160)
.EUt(120)
.buildAndRegister();
//blue
assembler.recipeBuilder()
.inputs([<actuallyadditions:block_crystal:1>,<minecraft:prismarine> *2, <minecraft:lapis_block> *2])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:block_crystal_empowered:1>])
.duration(160)
.EUt(120)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<actuallyadditions:item_crystal:1>,<minecraft:prismarine> *2, <minecraft:lapis_block> *2])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:item_crystal_empowered:1>])
.duration(160)
.EUt(120)
.buildAndRegister();
//white
assembler.recipeBuilder()
.inputs([<actuallyadditions:block_crystal:5>,<minecraft:snow> *2,<minecraft:stone>* 2 ])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:block_crystal_empowered:5>])
.duration(160)
.EUt(120)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<actuallyadditions:item_crystal:5>,<minecraft:snow> *2,<minecraft:stone>* 2 ])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:item_crystal_empowered:5>])
.duration(160)
.EUt(120)
.buildAndRegister();
//black
assembler.recipeBuilder()
.inputs([<actuallyadditions:block_crystal:3>,<ore:blockCharcoal> *2,<gregtech:meta_block_compressed_22:5> * 2 ])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:block_crystal_empowered:3>])
.duration(160)
.EUt(120)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<actuallyadditions:item_crystal:3>,<ore:blockCharcoal> *2,<gregtech:meta_block_compressed_22:5> * 2 ])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:item_crystal_empowered:3>])
.duration(160)
.EUt(120)
.buildAndRegister();
//light blue
assembler.recipeBuilder()
.inputs([<actuallyadditions:block_crystal:2>,<minecraft:clay> *4])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:block_crystal_empowered:2>])
.duration(160)
.EUt(120)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<actuallyadditions:item_crystal:2>,<minecraft:clay> *4])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:item_crystal_empowered:2>])
.duration(160)
.EUt(120)
.buildAndRegister();
//green
assembler.recipeBuilder()
.inputs([<actuallyadditions:block_crystal:4>,<ore:blockSlime>*2,<gregtech:meta_item_2:32570> * 2])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:block_crystal_empowered:4>])
.duration(160)
.EUt(120)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<actuallyadditions:item_crystal:4>,<ore:blockSlime>*2,<gregtech:meta_item_2:32570> * 2])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:item_crystal_empowered:4>])
.duration(160)
.EUt(120)
.buildAndRegister();
<actuallyadditions:block_misc:9>.displayName = "Stainless Steel Casing";
recipes.addShaped(<actuallyadditions:block_misc:9>, [[null, <gregtech:meta_item_1:12183>, null],[<gregtech:meta_item_1:12183>, <actuallyadditions:item_misc:5>, <gregtech:meta_item_1:12183>], [null, <gregtech:meta_item_1:12183>, null]]);

//attomic recipes
engraver.recipeBuilder()
.inputs(<minecraft:quartz_block:1>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_testifi_bucks_green_wall>)
.EUt(8)
.duration(20)
.buildAndRegister();

engraver.recipeBuilder()
.inputs(<minecraft:quartz_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_testifi_bucks_white_wall>)
.EUt(8)
.duration(20)
.buildAndRegister();

engraver.recipeBuilder()
.inputs(<minecraft:quartz>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<minecraft:prismarine_shard>)
.EUt(8)
.duration(20)
.buildAndRegister();

engraver.recipeBuilder()
.inputs(<minecraft:red_mushroom>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<minecraft:nether_wart>)
.EUt(8)
.duration(20)
.buildAndRegister();

engraver.recipeBuilder()
.inputs(<minecraft:rotten_flesh>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<minecraft:leather>)
.EUt(8)
.duration(20)
.buildAndRegister();

engraver.recipeBuilder()
.inputs(<minecraft:sand>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<minecraft:soul_sand>)
.EUt(8)
.duration(20)
.buildAndRegister();

engraver.recipeBuilder()
.inputs(<minecraft:iron_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_crystal:5>)
.EUt(8)
.duration(20)
.buildAndRegister();

engraver.recipeBuilder()
.inputs(<minecraft:coal_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_crystal:3>)
.EUt(8)
.duration(20)
.buildAndRegister();

engraver.recipeBuilder()
.inputs(<minecraft:emerald_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_crystal:4>)
.EUt(8)
.duration(20)
.buildAndRegister();

engraver.recipeBuilder()
.inputs(<minecraft:diamond_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_crystal:2>)
.EUt(8)
.duration(20)
.buildAndRegister();

engraver.recipeBuilder()
.inputs(<minecraft:lapis_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_crystal:1>)
.EUt(8)
.duration(20)
.buildAndRegister();

engraver.recipeBuilder()
.inputs(<minecraft:redstone_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_crystal>)
.EUt(8)
.duration(20)
.buildAndRegister();

engraver.recipeBuilder()
.inputs(<actuallyadditions:item_canola_seed> * 30)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:item_misc:23> * 30)
.EUt(8)
.duration(20)
.buildAndRegister();

recipes.addShaped(<actuallyadditions:block_laser_relay_item> * 4, [[<minecraft:obsidian>, <minecraft:emerald_block>, <minecraft:obsidian>],[<actuallyadditions:item_crystal:4>, <actuallyadditions:item_misc:8>, <actuallyadditions:item_crystal:4>], [<minecraft:obsidian>, <minecraft:emerald_block>, <minecraft:obsidian>]]);
recipes.addShaped(<actuallyadditions:block_laser_relay_fluids> * 4, [[<minecraft:obsidian>, <minecraft:lapis_block>, <minecraft:obsidian>],[<actuallyadditions:item_crystal:1>, <actuallyadditions:item_misc:8>, <actuallyadditions:item_crystal:1>], [<minecraft:obsidian>, <minecraft:lapis_block>, <minecraft:obsidian>]]);


//attomic recipes
large_engrav.recipeBuilder()
.inputs(<minecraft:quartz_block:1>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_testifi_bucks_green_wall>)
.EUt(8)
.duration(20)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs(<minecraft:quartz_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_testifi_bucks_white_wall>)
.EUt(8)
.duration(20)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs(<minecraft:quartz>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<minecraft:prismarine_shard>)
.EUt(8)
.duration(20)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs(<minecraft:red_mushroom>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<minecraft:nether_wart>)
.EUt(8)
.duration(20)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs(<minecraft:rotten_flesh>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<minecraft:leather>)
.EUt(8)
.duration(20)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs(<minecraft:sand>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<minecraft:soul_sand>)
.EUt(8)
.duration(20)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs(<minecraft:iron_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_crystal:5>)
.EUt(8)
.duration(20)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs(<minecraft:coal_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_crystal:3>)
.EUt(8)
.duration(20)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs(<minecraft:emerald_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_crystal:4>)
.EUt(8)
.duration(20)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs(<minecraft:diamond_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_crystal:2>)
.EUt(8)
.duration(20)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs(<minecraft:lapis_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_crystal:1>)
.EUt(8)
.duration(20)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs(<minecraft:redstone_block>)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:block_crystal>)
.EUt(8)
.duration(20)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs(<actuallyadditions:item_canola_seed> * 30)
.notConsumable(<ore:craftingLensWhite>)
.outputs(<actuallyadditions:item_misc:23> * 30)
.EUt(8)
.duration(20)
.buildAndRegister();

engraver.recipeBuilder()
.inputs(<minecraft:quartz>)
.notConsumable(<ore:craftingLensBlue>)
.outputs(<minecraft:prismarine_crystals>)
.EUt(8)
.duration(20)
.buildAndRegister();

large_engrav.recipeBuilder()
.inputs(<minecraft:quartz>)
.notConsumable(<ore:craftingLensBlue>)
.outputs(<minecraft:prismarine_crystals>)
.EUt(8)
.duration(20)
.buildAndRegister();
