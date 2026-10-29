package postInit.multiblock_recipes

import classes.MetaTileEntityHeatExchanger
import classes.TJMaterials
import classes.TJMetaTileEntities
import com.fulltrix.gcyl.materials.GCYLNuclearMaterials
import gregicality.multiblocks.common.block.GCYMMetaBlocks
import gregicality.multiblocks.common.block.blocks.BlockLargeMultiblockCasing
import gregtech.api.recipes.RecipeMaps
import gregtech.api.unification.OreDictUnifier
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import gregtech.common.metatileentities.MetaTileEntities

def heatExchangerRecipes = MetaTileEntityHeatExchanger.HEAT_EXCHANGER_RECIPES

// heat exchanger
crafting.shapedBuilder()
        .row('PCP')
        .row('CBC')
        .row('PCP')
        .key('P', OreDictUnifier.get(OrePrefix.plate, GCYLNuclearMaterials.ReactorSteel))
        .key('C', GCYMMetaBlocks.LARGE_MULTIBLOCK_CASING.getItemVariant(BlockLargeMultiblockCasing.CasingType.HIGH_TEMPERATURE_CASING))
        .key('B', MetaTileEntities.LARGE_STEEL_BOILER.getStackForm())
        .output(TJMetaTileEntities.HEAT_EXCHANGER.getStackForm())
        .register()
// steam, pahoehoe lava
heatExchangerRecipes.recipeBuilder()
        .fluidInputs(Materials.Water.getFluid(2880))
        .fluidInputs(Materials.Lava.getFluid(1000))
        .fluidOutputs(Materials.Steam.getFluid(172800))
        .fluidOutputs(TJMaterials.PahoehoeLava.getFluid(1000))
        .duration(20)
        .buildAndRegister()
// obsidian, sulfur dust, carbon dust
RecipeMaps.ELECTROLYZER_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.PahoehoeLava.getFluid(10000))
        .outputs(item('minecraft:obsidian'))
        .output(OrePrefix.dust, Materials.Sulfur)
        .output(OrePrefix.dust, Materials.Carbon)
        .EUt(7000).duration(20)
        .buildAndRegister()