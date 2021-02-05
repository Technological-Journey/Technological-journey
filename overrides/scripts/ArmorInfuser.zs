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

var loc = "armor_infuser";
var meta = 1004;
val armor_infuser = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "HHHHH",
                    "HCCCH",
                    "HCCCH",
                    "HCCCH",
                    "HHSHH")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "AAAAA",
                    "A~F~A",
                    "AFGFA",
                    "A~F~A",
                    "AAAAA")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "AAAAA",
                    "A~F~A",
                    "AFGFA",
                    "A~F~A",
                    "AAAAA")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .where("C", <metastate:gregtech:metal_casing_awaken_draconium>)
                .whereOr("H", 
                <metastate:gregtech:metal_casing_awaken_draconium>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:multiblock_casing:4>)
                .where("G", <metastate:gregtech:wire_coil:8>)
                .where("A", <metastate:gtadditions:ga_fusion_casing:4>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCECC",
                    "     ",
                    "     ",
                    "AAAAA",
                    "     ",
                    "     ",
                    "AAAAA",
                    "     ",
                    "     ",
                    "CCCCC")
                .aisle(
                    "OCCCC",
                    "  F  ",
                    "  F  ",
                    "A F A",
                    "  F  ",
                    "  F  ",
                    "A F A",
                    "  F  ",
                    "  F  ",
                    "CCCCC")
                .aisle(
                    "SCCCC",
                    " FGF ",
                    " FGF ",
                    "AFGFA",
                    " FGF ",
                    " FGF ",
                    "AFGFA",
                    " FGF ",
                    " FGF ",
                    "CCCCC")
                .aisle(
                    "ICCCC",
                    "  F  ",
                    "  F  ",
                    "A F A",
                    "  F  ",
                    "  F  ",
                    "A F A",
                    "  F  ",
                    "  F  ",
                    "CCCCC")
                .aisle(
                    "CCWXC",
                    "     ",
                    "     ",
                    "AAAAA",
                    "     ",
                    "     ",
                    "AAAAA",
                    "     ",
                    "     ",
                    "CCCCC")
                .where("C", <metastate:gregtech:metal_casing_awaken_draconium>)
                .where("F", <metastate:gregtech:multiblock_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("A", <metastate:gtadditions:ga_fusion_casing:4>)
                .where("G", <metastate:gregtech:wire_coil:8>)
                .where("I", MetaTileEntities.ITEM_IMPORT_BUS[2], IFacing.west())
                .where("O", MetaTileEntities.ITEM_EXPORT_BUS[2], IFacing.west())
                .where("W", MetaTileEntities.FLUID_IMPORT_HATCH[5], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[5], IFacing.south())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[8], IFacing.north())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxInputs(4)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/awakenedcasing"))

.buildAndRegister() as Multiblock;

// armor_infuser.recipemap.recipeBuilder()


                
