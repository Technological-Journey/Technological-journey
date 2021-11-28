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
var loc = "dragon_egg_replicator";
var meta = 1006;
val dragon_egg_replicator = Builder.start(loc, meta)
.withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            .aisle(
                "CCC",
                "CSC",
                "CCC")
            .aisle(
                "CCC",
                "C C",
                "CCC")
            .aisle(
                "CCC",
                "CCC",
                "CCC")
            .whereOr("C",
                <metastate:contenttweaker:awakenedcasing>,
                IBlockMatcher.abilityPartPredicate(
                    MultiblockAbility.EXPORT_FLUIDS,
                    MultiblockAbility.IMPORT_FLUIDS,
                    MultiblockAbility.IMPORT_ITEMS,
                    MultiblockAbility.EXPORT_ITEMS,
                    MultiblockAbility.INPUT_ENERGY
                ))
            .where("S", IBlockMatcher.controller(loc))
            .where(" ", <metastate:minecraft:dragon_egg>)
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle(
                "IAC",
                "CCC",
                "CCC")
            .aisle(
                "ECC",
                "S C",
                "CCC")
            .aisle(
                "ECC",
                "CCC",
                "CCC")
            .where("C", <metastate:contenttweaker:awakenedcasing>)
            .where("S", IBlockInfo.controller(loc))
            .where("I", MetaTileEntities.ITEM_IMPORT_BUS[5], IFacing.west())
            .where("O", MetaTileEntities.ITEM_EXPORT_BUS[5], IFacing.west())
            .where("E", MetaTileEntities.FLUID_EXPORT_HATCH[5], IFacing.west())
            .where("A", MetaTileEntities.ENERGY_INPUT_HATCH[8], IFacing.north())
            .where(" ", <metastate:minecraft:dragon_egg>)
            .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxInputs(2)
                        .maxOutputs(3)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/awakenedcasing"))

.buildAndRegister() as Multiblock;


dragon_egg_replicator.recipeMap.recipeBuilder()
.inputs([<minecraft:egg> * 16,<draconicevolution:wyvern_sword>.withTag({Energy: 4000000})])
.outputs([<draconicevolution:dragon_heart> * 2,<draconicevolution:wyvern_sword>,<minecraft:dragon_egg>])
.fluidInputs(<liquid:sterilized_growth_medium> * 2000)
.fluidOutputs(<liquid:depleted_growth_medium> * 2000)
.duration(500)
.EUt(131072)
.buildAndRegister();