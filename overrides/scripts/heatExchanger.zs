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

var loc = "heat_exchanger";
var meta = 1003;

val heat_exchanger = Builder.start(loc, meta)
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
                <metastate:gtadditions:ga_metal_casing_1:14>  as IBlockMatcher,
                IBlockMatcher.abilityPartPredicate(
                    MultiblockAbility.EXPORT_FLUIDS,
                    MultiblockAbility.IMPORT_FLUIDS
                ))
            .where("S", IBlockMatcher.controller(loc))
            .setAmountAtLeast('@', 16)
            .where('@', <metastate:gtadditions:ga_metal_casing_1:14>)
            .where(" ", IBlockMatcher.AIR)
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle(
                "EEC",
                "CCC",
                "CCC")
            .aisle(
                "OCC",
                "S C",
                "CCC")
            .aisle(
                "OCC",
                "CCC",
                "CCC")
            .where("C", <metastate:gtadditions:ga_metal_casing_1:14>)
            .where("S", IBlockInfo.controller(loc))
            .where("O", MetaTileEntities.FLUID_IMPORT_HATCH[5], IFacing.west())
            .where("E", MetaTileEntities.FLUID_EXPORT_HATCH[5], IFacing.north())
            .where(" ", IBlockInfo.EMPTY)
            .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(2)
                        .maxFluidOutputs(2)
                        .build())

.buildAndRegister() as Multiblock;

heat_exchanger.noEnergy = true;


heat_exchanger.recipeMap.recipeBuilder()
.fluidInputs(<liquid:water> * 2880, <liquid:lava> * 1000)
.fluidOutputs(<liquid:hot.steam> * 172800, <liquid:pahoehoe_lava> * 1000)
.duration(20)
.hidden()
.buildAndRegister();

electrolyzer.recipeBuilder()
.fluidInputs(<liquid:pahoehoe_lava> * 10000)
.outputs([<minecraft:obsidian> * 1, <gregtech:meta_item_1:2065> * 1, <gregtech:meta_item_1:2012> * 1])
.duration(20)
.EUt(7000)
.buildAndRegister();

recipes.addShaped(<gregtech:machine:1003>, [[<gregtech:meta_item_1:12741>, <gtadditions:ga_metal_casing_1:14>, <gregtech:meta_item_1:12741>],[<gtadditions:ga_metal_casing_1:14>, <gregtech:machine:522>, <gtadditions:ga_metal_casing_1:14>], [<gregtech:meta_item_1:12741>, <gtadditions:ga_metal_casing_1:14>, <gregtech:meta_item_1:12741>]]);
