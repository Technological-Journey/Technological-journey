#priority 0

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.Multiblock;
import mods.gregtech.multiblock.IBlockWorldState;

import mods.gregtech.MetaTileEntities;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;
import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;



val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
assembler.recipeBuilder()
    .inputs([<ore:frameGtSoularium> * 1, <ore:platePolytetrafluoroethylene> * 4, <ore:gearSmallTungstenSteel>*2, <ore:ingotEndSteel> * 2]) 
    .fluidInputs([<liquid:soularium> * 288])
    .outputs(<contenttweaker:soulcasing> * 2)
    .duration(160)
    .EUt(30720)
    .buildAndRegister();


var loc = "large_powered_spawner";
var meta = 4201;

val large_spawner = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "SSSSS",
                    "SSSSS",
                    "SSSSS",
                    "SSSSS",
                    "SSCSS")
                .aisle(
                    "F~~~F",
                    "~PMP~",
                    "~MEM~",
                    "~PMP~",
                    "F~~~F")
                .aisle(
                    "F~~~F",
                    "~PMP~",
                    "~MEM~",
                    "~PMP~",
                    "F~~~F")
                .aisle(
                    "F~~~F",
                    "~PMP~",
                    "~MEM~",
                    "~PMP~",
                    "F~~~F")
                .aisle(
                    "SSSSS",
                    "SGGGS",
                    "SGGGS",
                    "SGGGS",
                    "SSSSS")
                .where("C", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("S", 
                <metastate:contenttweaker:soulcasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_protactinium:0>)
                .where("E", <metastate:enderio:block_alloy:8>)
                .where("P", <metastate:gregtech:boiler_casing:3>)
                .where("M", <metastate:enderio:block_decoration1>)
                .where("G", <metastate:gregtech:multiblock_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
		.aisle(
		    "LSSSS",
		    "F~~~F",
		    "F~~~F",
		    "F~~~F",
		    "SSSSS")
		.aisle(
		    "ISSSS",
		    "~PMP~",
		    "~PMP~",
		    "~PMP~",
		    "SGGGS")
		.aisle(
		    "CSSSS",
		    "~MEM~",
		    "~MEM~",
		    "~MEM~",
		    "SGGGS")
		.aisle(
		    "OSSSS",
		    "~PMP~",
		    "~PMP~",
		    "~PMP~",
		    "SGGGS")
		.aisle(
		    "TSSSS",
		    "F~~~F",
		    "F~~~F",
		    "F~~~F",
		    "SSSSS")
                .where("S", <metastate:contenttweaker:soulcasing>)
                .where("C", IBlockInfo.controller(loc))
                .where("I", MetaTileEntities.ITEM_IMPORT_BUS[2], IFacing.west())
                .where("O", MetaTileEntities.ITEM_EXPORT_BUS[2], IFacing.west())
                .where("L", MetaTileEntities.FLUID_IMPORT_HATCH[2], IFacing.west())
                .where("T", MetaTileEntities.ENERGY_INPUT_HATCH[6], IFacing.west())
                .where("F", <metastate:gregtech:frame_protactinium:0>)
                .where("E", <metastate:enderio:block_alloy:8>)
                .where("P", <metastate:gregtech:boiler_casing:3>)
                .where("M", <metastate:enderio:block_decoration1>)
                .where("G", <metastate:gregtech:multiblock_casing:1>)
                .build())
	.withRecipeMap(
        	FactoryRecipeMap.start(loc)
                        .maxFluidInputs(1)
                        .maxInputs(2)
                        .maxOutputs(1)
                        .build())
	.withTexture(ICubeRenderer.sided("contenttweaker:blocks/soulcasing"))
	.withZoom(0.5f)
	.buildAndRegister() as Multiblock;



val MOB_TYPE = [
	"enderman",
	"zombie",
	"skeleton",
	"blaze",
	"ghast",
	"spider",
	"slime",
	"creeper",
	"magma_cube",
	"witch",
	"wither_skeleton",
	"snowman",
	"sheep",
	"pig",
	"chicken",
	"cow",
] as string[];


val multiplierArray = [1, 4] as int[]; 

for j,k in multiplierArray {
    for i,mob in MOB_TYPE {
    	large_spawner.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial> * (16 * k))
		.outputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + mob}) * (16 * k))
		.fluidInputs(<liquid:xpjuice> * (16000 * k))
		.duration(20)
		.EUt(30720 * k)
		.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration:(i + 16 * j)}))
		.buildAndRegister();
	}
}

loc = "large_vial_processor";
meta += 1;

val large_vial = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "SSSSS",
                    "SPPPS",
                    "SPEPS",
                    "SPPPS",
                    "SSCSS")
                .aisle(
                    "F~~~F",
                    "~BGB~",
                    "~GEG~",
                    "~BGB~",
                    "F~~~F")
                .aisle(
                    "F~~~F",
                    "~BGB~",
                    "~GEG~",
                    "~BGB~",
                    "F~~~F")
                .aisle(
                    "F~~~F",
                    "~BGB~",
                    "~GEG~",
                    "~BGB~",
                    "F~~~F")
                .aisle(
                    "SSSSS",
                    "SPPPS",
                    "SPEPS",
                    "SPPPS",
                    "SSSSS")
                .where("C", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .whereOr("S", 
                <metastate:contenttweaker:soulcasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:frame_protactinium:0>)
                .where("E", <metastate:enderio:block_alloy:8>)
                .where("P", <metastate:gregtech:boiler_casing:3>)
                .where("B", <metastate:gtadditions:ga_multiblock_casing:15>)
                .where("G", <metastate:gregtech:multiblock_casing:1>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
		.aisle(
		    "LSSSS",
		    "F~~~F",
		    "F~~~F",
		    "F~~~F",
		    "SSSSS")
		.aisle(
		    "IPPPS",
		    "~BGB~",
		    "~BGB~",
		    "~BGB~",
		    "SPPPS")
		.aisle(
		    "CPEPS",
		    "~GEG~",
		    "~GEG~",
		    "~GEG~",
		    "SPEPS")
		.aisle(
		    "OPPPS",
		    "~BGB~",
		    "~BGB~",
		    "~BGB~",
		    "SPPPS")
		.aisle(
		    "TSSSS",
		    "F~~~F",
		    "F~~~F",
		    "F~~~F",
		    "SSSSS")
                .where("S", <metastate:contenttweaker:soulcasing>)
                .where("C", IBlockInfo.controller(loc))
                .where("I", MetaTileEntities.ITEM_IMPORT_BUS[2], IFacing.west())
                .where("O", MetaTileEntities.ITEM_EXPORT_BUS[4], IFacing.west())
                .where("T", MetaTileEntities.ENERGY_INPUT_HATCH[6], IFacing.west())
                .where("F", <metastate:gregtech:frame_protactinium:0>)
                .where("E", <metastate:enderio:block_alloy:8>)
                .where("P", <metastate:gregtech:boiler_casing:3>)
                .where("G", <metastate:gregtech:multiblock_casing:1>)
                .where("B", <metastate:gtadditions:ga_multiblock_casing:15>)
                .where("L", MetaTileEntities.FLUID_EXPORT_HATCH[2], IFacing.west())
                .build())
	.withRecipeMap(
        	FactoryRecipeMap.start(loc)
                        .maxInputs(1)
                        .minOutputs(4)
                        .maxOutputs(14)
                        .maxFluidOutputs(1)
                        .build())
	.withTexture(ICubeRenderer.sided("contenttweaker:blocks/soulcasing"))
	.withZoom(0.5f)
	.buildAndRegister() as Multiblock;


large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[0]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<enderio:block_enderman_skull> * 64,
			<enderio:block_enderman_skull> * 64,
			<enderio:block_enderman_skull> * 64,
			<minecraft:ender_pearl> * 64,
			<minecraft:ender_pearl> * 64,
			<minecraft:ender_pearl> * 64,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[1]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:skull:2> * 64,
			<minecraft:skull:2> * 64,
			<minecraft:skull:2> * 32,
			<minecraft:rotten_flesh> * 64,
			<minecraft:rotten_flesh> * 64,
			<minecraft:rotten_flesh> * 32,
			<minecraft:skull:2> * 24,
			<minecraft:potato> * 4,
			<minecraft:carrot> * 4,
			<minecraft:melon> * 4,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[2]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:bone> * 64,
			<minecraft:bone> * 64,
			<minecraft:skull> * 24,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[3]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:blaze_rod> * 64,
			<minecraft:blaze_rod> * 64,
			<minecraft:blaze_rod> * 32,
			<minecraft:blaze_powder> * 64,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[4]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:ghast_tear> * 64,
			<minecraft:ghast_tear> * 48,
			<gregtech:meta_item_1:2155> * 48,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[5]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:string> * 64,
			<minecraft:string> * 64,
			<minecraft:string> * 32,
			<minecraft:web> * 12,
			<minecraft:spider_eye> * 16,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[6]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:slime_ball> * 64,
			<minecraft:slime_ball> * 64,
			<minecraft:slime> * 4,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[7]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:gunpowder> * 64,
			<minecraft:gunpowder> * 32,
			<gregtech:meta_item_1:2065> * 32,
			<gregtech:meta_item_1:2156> * 16,
			<gregtech:meta_item_1:2106> * 16,
			<minecraft:skull:4> * 24,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[8]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:magma_cream> * 64,
			<minecraft:magma_cream> * 16,
			<minecraft:blaze_powder> * 32,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[9]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:redstone> * 64,
			<minecraft:redstone> * 16,
			<minecraft:glowstone_dust> * 48,
			<minecraft:gunpowder> * 32,
			<minecraft:sugar> * 64,
			<minecraft:sugar> * 32,
			<minecraft:glass_bottle> * 12,
			<minecraft:potion>.withTag({Potion: "minecraft:water"}) * 4,
			<minecraft:stick> * 32,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[10]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:bone> * 48,
			<minecraft:skull:1> * 12,
			<gregtech:meta_item_1:2106> * 32,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[11]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:snowball> * 16,
			<minecraft:snowball> * 16,
			<minecraft:snowball> * 16,
			<minecraft:snowball> * 16,
			<minecraft:snow> * 4,
			<minecraft:ice> * 8,
			<minecraft:pumpkin> * 4,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[12]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:wool:0> * 64,
			<minecraft:wool:0> * 64,
			<minecraft:string> * 32,
			<minecraft:mutton> * 64,
			<minecraft:mutton> * 64,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[13]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:porkchop> * 512,
			<minecraft:porkchop> * 512,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[14]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:egg> * 960,
			<minecraft:feather> * 400,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.duration(20)
		.EUt(30720)
		.buildAndRegister();

large_vial.recipeMap.recipeBuilder()
		.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:" + MOB_TYPE[15]}) * 16)
		.outputs([
			<enderio:item_soul_vial> * 16,
			<minecraft:leather> * 64,
			<minecraft:leather> * 64,
			<minecraft:beef> * 512,
			<actuallyadditions:item_solidified_experience> * 64,
			<actuallyadditions:item_solidified_experience> * 64
		])
		.fluidOutputs(<liquid:milk> * 16000)
		.duration(20)
		.EUt(30720)
		.buildAndRegister();


val assemblyLine = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");

assemblyLine.recipeBuilder()
    .inputs([
			<gregtech:machine:506> * 1,
			<enderio:block_powered_spawner> * 16,
			<contenttweaker:soulcasing> * 4,
			<ore:plateCurium> * 12,
			<ore:circuitUltimate> * 2,
			<gregtech:meta_item_1:32675> * 2,
			<enderio:item_capacitor_stellar> * 2,
			<ore:cableGtQuadrupleNiobiumTitanium> * 8,
			<gregtech:meta_item_1:32685> * 2,
			<gregtech:meta_item_1:32655> * 2,
			<gregtech:meta_item_1:32615> * 2

		]) 
    .fluidInputs([
			<liquid:soldering_alloy> * 576,
			<liquid:hssg> * 2304,
			<liquid:soularium> * 2304,
		])
    .outputs(<gregtech:machine:4201> * 1)
    .duration(800)
    .EUt(30000)
    .buildAndRegister();


assemblyLine.recipeBuilder()
    .inputs([
			<gregtech:machine:506> * 1,
			<gregtech:machine:1400> * 16,
			<contenttweaker:soulcasing> * 4,
			<ore:plateCurium> * 12,
			<ore:circuitUltimate> * 2,
			<gregtech:meta_item_1:32675> * 2,
			<enderio:item_capacitor_stellar> * 2,
			<ore:cableGtQuadrupleNiobiumTitanium> * 8,
			<gregtech:meta_item_1:32635> * 2,
			<gregtech:meta_item_1:32645> * 2,
			<gregtech:meta_item_1:32695> * 2

		]) 
    .fluidInputs([
			<liquid:soldering_alloy> * 576,
			<liquid:hssg> * 2304,
			<liquid:soularium> * 2304,
		])
    .outputs(<gregtech:machine:4202> * 1)
    .duration(800)
    .EUt(30000)
    .buildAndRegister();
