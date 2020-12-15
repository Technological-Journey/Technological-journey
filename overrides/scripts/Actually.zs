
//red
assembler.recipeBuilder()
.inputs([<actuallyadditions:block_crystal>,<minecraft:brick> * 2,<minecraft:netherbrick> *2,<minecraft:redstone_block> * 2])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:block_crystal_empowered>])
.duration(160)
.EUt(128)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<actuallyadditions:item_crystal>,<minecraft:brick_block> * 2,<minecraft:nether_brick> *2,<minecraft:redstone_block> * 2])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:item_crystal_empowered>])
.duration(160)
.EUt(128)
.buildAndRegister();
//blue
assembler.recipeBuilder()
.inputs([<actuallyadditions:block_crystal:1>,<minecraft:prismarine> *2, <minecraft:lapis_block> *2])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:block_crystal_empowered:1>])
.duration(160)
.EUt(128)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<actuallyadditions:item_crystal:1>,<minecraft:prismarine> *2, <minecraft:lapis_block> *2])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:item_crystal_empowered:1>])
.duration(160)
.EUt(128)
.buildAndRegister();
//white
assembler.recipeBuilder()
.inputs([<actuallyadditions:block_crystal:5>,<minecraft:snow> *2,<minecraft:stone>* 2 ])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:block_crystal_empowered:5>])
.duration(160)
.EUt(128)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<actuallyadditions:item_crystal:5>,<minecraft:snow> *2,<minecraft:stone>* 2 ])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:item_crystal_empowered:5>])
.duration(160)
.EUt(128)
.buildAndRegister();
//black
assembler.recipeBuilder()
.inputs([<actuallyadditions:block_crystal:3>,<actuallyadditions:block_misc:5> *2,<gregtech:compressed_10> * 2 ])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:block_crystal_empowered:3>])
.duration(160)
.EUt(128)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<actuallyadditions:item_crystal:3>,<actuallyadditions:block_misc:5> *2,<gregtech:compressed_10> * 2 ])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:item_crystal_empowered:3>])
.duration(160)
.EUt(128)
.buildAndRegister();
//light blue
assembler.recipeBuilder()
.inputs([<actuallyadditions:block_crystal:2>,<minecraft:clay> *4])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:block_crystal_empowered:2>])
.duration(160)
.EUt(128)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<actuallyadditions:item_crystal:2>,<minecraft:clay> *4])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:item_crystal_empowered:2>])
.duration(160)
.EUt(128)
.buildAndRegister();
//green
assembler.recipeBuilder()
.inputs([<actuallyadditions:block_crystal:4>,<ore:blockSlime>*2,<gregtech:meta_item_2:32570> * 2])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:block_crystal_empowered:4>])
.duration(160)
.EUt(128)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<actuallyadditions:item_crystal:4>,<ore:blockSlime>*2,<gregtech:meta_item_2:32570> * 2])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<actuallyadditions:item_crystal_empowered:4>])
.duration(160)
.EUt(128)
.buildAndRegister();
<actuallyadditions:block_misc:9>.displayName = "Stainless Steel Casing";
recipes.addShaped(<actuallyadditions:block_misc:9>, [[null, <gregtech:meta_item_1:12183>, null],[<gregtech:meta_item_1:12183>, <actuallyadditions:item_misc:5>, <gregtech:meta_item_1:12183>], [null, <gregtech:meta_item_1:12183>, null]]);
