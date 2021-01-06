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

var loc = "coke_oven_2";
var meta = 1000; 

val coke_oven_2 = Builder.start(loc, meta)
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
                <metastate:gregtech:metal_casing:8>,
                IBlockMatcher.abilityPartPredicate(
                    MultiblockAbility.EXPORT_FLUIDS,
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
                "ECC",
                "CCC",
                "CCC")
            .where("C", <metastate:gregtech:metal_casing:8>)
            .where("S", IBlockInfo.controller(loc))
            .where("I", MetaTileEntities.ITEM_IMPORT_BUS[0], IFacing.west())
            .where("O", MetaTileEntities.ITEM_EXPORT_BUS[0], IFacing.west())
            .where("E", MetaTileEntities.FLUID_EXPORT_HATCH[0], IFacing.west())
            .where(" ", IBlockInfo.EMPTY)
            .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidOutputs(1)
                        .minInputs(1)
                        .maxInputs(1)
                        .minOutputs(1)
                        .maxOutputs(1)
                        .build())
.buildAndRegister() as Multiblock;

coke_oven_2.noEnergy = true;

    coke_oven_2.recipeMap.recipeBuilder()
    .inputs(<ore:logWood> * 1)
    .outputs(<minecraft:coal:1>)
    .fluidOutputs(<liquid:creosote> * 250)
    .duration(450)
    .buildAndRegister();

    coke_oven_2.recipeMap.recipeBuilder()
    .inputs(<minecraft:coal:1>)
    .outputs(<gregtech:meta_item_1:8357>)
    .fluidOutputs(<liquid:creosote> * 500)
    .duration(900)
    .buildAndRegister();

    coke_oven_2.recipeMap.recipeBuilder()
    .inputs(<minecraft:coal>)
    .outputs(<gregtech:meta_item_1:8357>)
    .fluidOutputs(<liquid:creosote> * 4500)
    .duration(900)
    .buildAndRegister();
    coke_oven_2.recipeMap .recipeBuilder()
    .inputs(<gregtech:meta_item_1:32627> * 2)
    .outputs(<thermalfoundation:material:833>)
    .fluidOutputs(<liquid:creosote> * 500)
    .duration(150)
    .buildAndRegister();
