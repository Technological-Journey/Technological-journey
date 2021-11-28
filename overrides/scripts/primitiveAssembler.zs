

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
import mods.gregtech.render.Textures;

import mods.gregtech.recipe.RecipeMap;

import crafttweaker.world.IFacing;

var loc = "primitive_asssembler";
var meta = 1003;

val primitive_asssembler = Builder.start(loc, meta)
    .withPattern(
        FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
            .aisle(
                "DDDDD",
                "CCSCC",
                "FFFFF")
            .aisle(
                "DDDDD",
                "C   C",
                "FFFFF")
            .aisle(
                "DDDDD",
                "C   C",
                "FFFFF")
            .aisle(
                "DDDDD",
                "C   C",
                "FFFFF")
            .aisle(
                "DDDDD",
                "CCCCC",
                "FFFFF")
            .where("C",
                <metastate:gregtech:metal_casing:1>)
                .whereOr("F",
                <metastate:gregtech:machine_casing:13>,
                <metastate:gregtech:machine_casing:10>,
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
                "IMMMM",
                "CCCCC",
                "DDDDD")
            .aisle(
                "IMMMM",
                "C   C",
                "DDDDD")
            .aisle(
                "IMMMM",
                "S   C",
                "DDDDD")
            .aisle(
                "OMMMM",
                "C   C",
                "DDDDD")
            .aisle(
                "EMMMM",
                "CCCCC",
                "DDDDD")
            .where("M", <metastate:gregtech:machine_casing:10>)
            .where("D", <metastate:gregtech:machine_casing:10>)
            .where("C", <metastate:gregtech:metal_casing:1>)
            .where("S", IBlockInfo.controller(loc))
            .where("I", MetaTileEntities.ITEM_IMPORT_BUS[0], IFacing.west())
            .where("O", MetaTileEntities.ITEM_EXPORT_BUS[0], IFacing.west())
            .where("E", MetaTileEntities.FLUID_IMPORT_HATCH[0], IFacing.west())
            .where(" ", IBlockInfo.EMPTY)
            .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(1)
                        .minInputs(1)
                        .maxInputs(4)
                        .maxOutputs(2)
                        .build())
//.withTexture(Textures.PRIMITIVE_BRICKS)
.buildAndRegister() as Multiblock;

primitive_asssembler.noEnergy = true;

primitive_asssembler.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10095> * 4, <gregtech:meta_item_1:14033> * 2)
    .outputs(<contenttweaker:steammotor>)
    .fluidInputs(<liquid:steam> * 1000)
    .duration(150)
    .buildAndRegister();
    primitive_asssembler.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12033> * 3, <gregtech:meta_item_2:26033>* 1,<contenttweaker:steammotor>)
    .outputs(<contenttweaker:steampiston>)
    .fluidInputs(<liquid:steam> * 1000)
    .duration(150)
    .buildAndRegister();
    primitive_asssembler.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_2:19297> * 2, <gregtech:cable:18>* 2,<gregtech:cable:5071> * 2)
    .outputs(<gregtech:meta_item_1:32600>)
    .fluidInputs(<liquid:steam> * 1000)
    .duration(150)
    .buildAndRegister();
    primitive_asssembler.recipeMap.recipeBuilder()
    .inputs(<gregtech:meta_item_2:32454> * 1,<gtadditions:ga_meta_item:32307> * 3, <gregtech:cable:18> * 3)
    .outputs(<gregtech:meta_item_2:32450>)
    .fluidInputs(<liquid:steam> * 1000)
    .duration(150)
    .buildAndRegister();

    primitive_asssembler.recipeMap.recipeBuilder()
    .inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:blaze"}) *9)
    .outputs(<minecraft:blaze_rod> * 3,<enderio:item_soul_vial> *9)
    .fluidInputs(<liquid:steam> * 4000)
    .duration(150)
    .buildAndRegister();

    primitive_asssembler.recipeMap.recipeBuilder()
    .inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:zombie"}) *9)
    .outputs(<minecraft:skull:2> * 3,<enderio:item_soul_vial> *9)
    .fluidInputs(<liquid:steam> * 4000)
    .duration(150)
    .buildAndRegister();