// No special #loader, just use the default crafttweaker one.

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.Multiblock;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.MetaTileEntities;

import mods.gregtech.recipe.RecipeMap;

import crafttweaker.world.IFacing;

var loc = "primitive_alloy";
var meta = 1002;

val primitive_alloy = Builder.start(loc, meta)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            .aisle(
                "CCC",
                "CCC",
                "CSC")
            .aisle(
                "CCC",
                "C C",
                "CCC")
            .aisle(
                "CCC",
                "CCC",
                "CCC")
            .whereOr("C",
                <metastate:gregtech:metal_casing:1>,
                IBlockMatcher.abilityPartPredicate(
                    MultiblockAbility.IMPORT_FLUIDS,
                    MultiblockAbility.IMPORT_ITEMS,
                    MultiblockAbility.EXPORT_ITEMS
                ))
            .where("S", IBlockMatcher.controller(loc))
            .where(" ", IBlockMatcher.ANY)
            .build())
    .addDesign(
        FactoryMultiblockShapeInfo.start()
            .aisle(
                "ICC",
                "CCC",
                "ECC")
            .aisle(
                "SCC",
                "C C",
                "CCC")
            .aisle(
                "OCC",
                "CCC",
                "CCC")
            .where("C", <metastate:gregtech:metal_casing:1>)
            .where("S", IBlockInfo.controller(loc))
            .where("I", MetaTileEntities.ITEM_IMPORT_BUS[1], IFacing.west())
            .where("O", MetaTileEntities.ITEM_EXPORT_BUS[1], IFacing.west())
            .where("E", MetaTileEntities.FLUID_IMPORT_HATCH[1], IFacing.west())
            .where(" ", IBlockInfo.EMPTY)
            .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(1)
                        .minInputs(1)
                        .maxInputs(2)
                        .maxOutputs(1)
                        .build())
.buildAndRegister() as Multiblock;

primitive_alloy.noEnergy = true;

    primitive_alloy.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10018> * 3, <gregtech:meta_item_1:10071>)
    .outputs(<gregtech:meta_item_1:10095> * 4)
    .fluidInputs(<liquid:steam> * 1000)
    .duration(600)
    .buildAndRegister();
    primitive_alloy.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10003>, <gregtech:meta_item_1:10071> * 9)
    .outputs(<gregtech:meta_item_1:10180> * 10)
    .fluidInputs(<liquid:steam> * 1000)
    .duration(600)
    .buildAndRegister();
    primitive_alloy.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10018>,<minecraft:redstone> * 4)
    .outputs(<gregtech:meta_item_1:10237>)
    .fluidInputs(<liquid:steam> * 1000)
    .duration(600)
    .buildAndRegister();