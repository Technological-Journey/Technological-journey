#nowarn
import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.multiblock.Multiblock;
import mods.gregtech.MetaTileEntities;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;

var loc = "chaos_replicator";
var meta = 1005;
val chaos_replicator = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
                .aisle(
                    "CCCCCCC",
                    "CHHHHHC",
                    "CQQQQQC",
                    "CQQQQQC",
                    "CQQCQQC",
                    "CQQCQQC",
                    "CQQCQQC",
                    "CHHSHHC",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "HZZZZZH",
                    "QN~~~NQ",
                    "QN~~~NQ",
                    "QN~A~NQ",
                    "QN~~~NQ",
                    "QN~~~NQ",
                    "HZZZZZH",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "HZZZZZH",
                    "Q~ZZZ~Q",
                    "Q~~~~~Q",
                    "Q~~~~~Q",
                    "Q~~~~~Q",
                    "Q~ZZZ~Q",
                    "HZZZZZH",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "HZZZZZH",
                    "Q~ZZZ~Q",
                    "Q~~Z~~Q",
                    "CA~X~AC",
                    "C~~Z~~C",
                    "C~ZZZ~C",
                    "HZZZZZH",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "HZZZZZH",
                    "Q~ZZZ~Q",
                    "Q~~~~~Q",
                    "Q~~~~~Q",
                    "Q~~~~~Q",
                    "Q~ZZZ~Q",
                    "HZZZZZH",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "HZZZZZH",
                    "QN~~~NQ",
                    "QN~~~NQ",
                    "QN~A~NQ",
                    "QN~~~NQ",
                    "QN~~~NQ",
                    "HZZZZZH",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "CHHHHHC",
                    "CQQQQQC",
                    "CQQQQQC",
                    "CQQCQQC",
                    "CQQCQQC",
                    "CQQCQQC",
                    "CHHHHHC",
                    "CCCCCCC")
                .where("C", <metastate:gregtech:metal_casing_chaos>)
                .where("~", IBlockMatcher.AIR)
                .where("S", IBlockMatcher.controller(loc))
                .whereOr("H",
                    <metastate:gregtech:metal_casing_chaos>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("Q", <blockstate:enderio:block_fused_quartz:color=white,render=auto>)
                .where("N", <metastate:gregtech:frame_enriched_naquadah_alloy>)
                .where("Z", <metastate:draconicevolution:infused_obsidian>)
                .where("A", <metastate:draconicevolution:draconic_block>)
                .where("X", <metastate:gregtech:compressed_17:4>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCCCCCC",
                    "CCCFCCC",
                    "CQQCQQC",
                    "CQQCQQC",
                    "CQQCQQC",
                    "CQQQQQC",
                    "CQQQQQC",
                    "CCCCCCC",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "OZZZZZC",
                    "QN~~~NQ",
                    "QN~~~NQ",
                    "QN~A~NQ",
                    "QN~~~NQ",
                    "QN~~~NQ",
                    "CZZZZZC",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "CZZZZZC",
                    "Q~ZZZ~Q",
                    "Q~~~~~Q",
                    "Q~~~~~Q",
                    "Q~~~~~Q",
                    "Q~ZZZ~Q",
                    "CZZZZZC",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "SZZZZZC",
                    "C~ZZZ~C",
                    "C~~Z~~C",
                    "CA~X~AC",
                    "Q~~Z~~Q",
                    "Q~ZZZ~Q",
                    "CZZZZZC",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "CZZZZZC",
                    "Q~ZZZ~Q",
                    "Q~~~~~Q",
                    "Q~~~~~Q",
                    "Q~~~~~Q",
                    "Q~ZZZ~Q",
                    "CZZZZZC",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "IZZZZZC",
                    "QN~~~NQ",
                    "QN~~~NQ",
                    "QN~A~NQ",
                    "QN~~~NQ",
                    "QN~~~NQ",
                    "CZZZZZC",
                    "CCCCCCC")
                .aisle(
                    "CCCCCCC",
                    "CCCECCC",
                    "CQQCQQC",
                    "CQQCQQC",
                    "CQQCQQC",
                    "CQQQQQC",
                    "CQQQQQC",
                    "CCCCCCC",
                    "CCCCCCC")
                .where("C", <metastate:gregtech:metal_casing_chaos>)
                .where("~", IBlockInfo.EMPTY)
                .where("S", IBlockInfo.controller(loc))
                .where("Q", <metastate:enderio:block_fused_quartz:0>)
                .where("N", <metastate:gregtech:frame_enriched_naquadah_alloy>)
                .where("Z", <metastate:draconicevolution:infused_obsidian>)
                .where("A", <metastate:draconicevolution:draconic_block>)
                .where("X", <metastate:gregtech:compressed_17:4>)
                .where("I", MetaTileEntities.ITEM_IMPORT_BUS[2], IFacing.west())
                .where("O", MetaTileEntities.ITEM_EXPORT_BUS[2], IFacing.west())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[8], IFacing.south())
                .where("F", MetaTileEntities.FLUID_IMPORT_HATCH[5], IFacing.north())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(1)
                        .maxInputs(6)
                        .maxOutputs(2)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/chaoticcasing"))
.buildAndRegister() as Multiblock;

// chaos_replicator.recipemap.recipeBuilder()



