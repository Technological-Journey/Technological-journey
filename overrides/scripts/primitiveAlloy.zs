

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
                "DDD",
                "CSC",
                "CCC")
            .aisle(
                "D D",
                "C C",
                "CCC")
            .aisle(
                "DDD",
                "CCC",
                "CCC")
            .whereOr("C",
                <metastate:gregtech:metal_casing:1>,
                IBlockMatcher.abilityPartPredicate(
                    MultiblockAbility.IMPORT_FLUIDS,
                    MultiblockAbility.IMPORT_ITEMS,
                    MultiblockAbility.EXPORT_ITEMS
                ))
                .whereOr("D",
                <metastate:gregtech:machine_casing:10>,
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
                "DDD")
            .aisle(
                "ICC",
                "S C",
                "D D")
            .aisle(
                "OCE",
                "CCC",
                "DDD")
            .where("D", <metastate:gregtech:machine_casing:10>)
            .where("C", <metastate:gregtech:metal_casing:1>)
            .where("S", IBlockInfo.controller(loc))
            .where("I", MetaTileEntities.ITEM_IMPORT_BUS[0], IFacing.west())
            .where("O", MetaTileEntities.ITEM_EXPORT_BUS[0], IFacing.west())
            .where("E", MetaTileEntities.FLUID_IMPORT_HATCH[0], IFacing.east())
            .where(" ", IBlockInfo.EMPTY)
            .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(1)
                        .minInputs(1)
                        .maxInputs(2)
                        .maxOutputs(1)
                        .build())
//.withTexture(Textures.PRIMITIVE_BLAST_FURNACE_OVERLAY)
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
    
    primitive_alloy.recipeMap.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32037> * 4)
    .outputs(<gregtech:meta_item_1:10197> * 4)
    .fluidInputs(<liquid:steam> * 1000)
    .duration(150)
    .buildAndRegister();
    
    primitive_alloy.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:2209> * 4)
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<gregtech:meta_item_2:32454> * 4)
    .fluidInputs(<liquid:steam> * 1000)
    .duration(150)
    .buildAndRegister();
    primitive_alloy.recipeMap.recipeBuilder()
    .inputs([<ore:ingotIron>,<gregtech:meta_item_1:2822>])
    .outputs([<enderio:item_alloy_ingot:5>])
    .duration(160)
    .fluidInputs(<liquid:steam> * 1000)
    .buildAndRegister();
primitive_alloy.recipeMap.recipeBuilder()
    .inputs([<minecraft:quartz> * 4])
    .outputs([<enderio:block_fused_quartz>])
    .fluidInputs(<liquid:steam> * 1000)
    .duration(160)
    .buildAndRegister();

    primitive_alloy.recipeMap.recipeBuilder()
    .inputs([<ore:ingotIron>,<gregtech:meta_item_1:10822>])
    .outputs([<enderio:item_alloy_ingot:5>])
    .duration(160)
    .fluidInputs(<liquid:steam> * 1000)
    .buildAndRegister();
        primitive_alloy.recipeMap.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2822>])
    .outputs([<enderio:item_alloy_ingot:5>])
    .duration(160)
    .fluidInputs(<liquid:steam> * 1000)
    .buildAndRegister();
        primitive_alloy.recipeMap.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:10822>])
    .outputs([<enderio:item_alloy_ingot:5>])
    .duration(160)
    .fluidInputs(<liquid:steam> * 1000)
    .buildAndRegister();
    primitive_alloy.recipeMap.recipeBuilder()
    .inputs([<gregtech:meta_item_1:10044>,<minecraft:iron_ingot> *2])
    .outputs([<gregtech:meta_item_1:10126> *3])
    .duration(160)
    .fluidInputs(<liquid:steam> * 1000)
    .buildAndRegister();

    primitive_alloy.recipeMap.recipeBuilder()
    .inputs([<gregtech:meta_item_1:10044>,<gregtech:meta_item_1:2033> *2])
    .outputs([<gregtech:meta_item_1:10126> *3])
    .duration(160)
    .fluidInputs(<liquid:steam> * 1000)
    .buildAndRegister();
        primitive_alloy.recipeMap.recipeBuilder()
    .inputs([<minecraft:iron_ingot> *2,<gregtech:meta_item_1:2044>])
    .outputs([<gregtech:meta_item_1:10126> *3])
    .duration(160)
    .fluidInputs(<liquid:steam> * 1000)
    .buildAndRegister();
        primitive_alloy.recipeMap.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2033> *2,<gregtech:meta_item_1:2044>])
    .outputs([<gregtech:meta_item_1:10126> *3])
    .duration(160)
    .fluidInputs(<liquid:steam> * 1000)
    .buildAndRegister();

