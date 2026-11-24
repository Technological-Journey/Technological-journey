package postInit.multiblock_recipes

import classes.MetaTileEntityTJCokeOven
import classes.TJMetaTileEntities
import com.fulltrix.gcyl.materials.GCYLMaterials
import gregtech.api.unification.OreDictUnifier
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import gregtech.common.blocks.BlockMetalCasing
import gregtech.common.blocks.MetaBlocks
import gregtech.common.items.MetaItems

def cokeRecipes = MetaTileEntityTJCokeOven.COKE_OVEN_RECIPES

// coke oven
crafting.shapedBuilder()
        .row('BPB')
        .row('P P')
        .row('BPB')
        .key('B', MetaBlocks.METAL_CASING.getItemVariant(BlockMetalCasing.MetalCasingType.COKE_BRICKS))
        .key('P', OreDictUnifier.get(OrePrefix.plateDouble, Materials.Bronze))
        .output(TJMetaTileEntities.COKE_OVEN.getStackForm())
        .register()
// charcoal
cokeRecipes.recipeBuilder()
        .input(OrePrefix.log, Materials.Wood)
        .output(OrePrefix.gem, Materials.Charcoal)
        .fluidOutputs(Materials.Creosote.getFluid(1000))
        .duration(180)
        .buildAndRegister()
// coke
cokeRecipes.recipeBuilder()
        .input(OrePrefix.gem, Materials.Charcoal)
        .output(OrePrefix.gem, Materials.Coke)
        .fluidOutputs(Materials.Creosote.getFluid(1000))
        .duration(360)
        .buildAndRegister()
// coke
cokeRecipes.recipeBuilder()
        .input(OrePrefix.gem, Materials.Coal)
        .output(OrePrefix.gem, Materials.Coke)
        .fluidOutputs(Materials.Creosote.getFluid(1800))
        .duration(180)
        .buildAndRegister()
// coke
cokeRecipes.recipeBuilder()
        .input(OrePrefix.gem, GCYLMaterials.Lignite, 2)
        .output(OrePrefix.gem, Materials.Coke)
        .fluidOutputs(Materials.Creosote.getFluid(1800))
        .duration(180)
        .buildAndRegister()
// coke
cokeRecipes.recipeBuilder()
        .input(OrePrefix.dust, Materials.Coal)
        .output(OrePrefix.dust, Materials.Coke)
        .fluidOutputs(Materials.Creosote.getFluid(1800))
        .duration(180)
        .buildAndRegister()
// coke
cokeRecipes.recipeBuilder()
        .input(OrePrefix.dust, GCYLMaterials.Lignite, 2)
        .output(OrePrefix.dust, Materials.Coke)
        .fluidOutputs(Materials.Creosote.getFluid(1800))
        .duration(180)
        .buildAndRegister()
// tar
cokeRecipes.recipeBuilder()
        .input(MetaItems.STICKY_RESIN, 2)
        .outputs(item('thermalfoundation:material', 833))
        .fluidOutputs(Materials.Creosote.getFluid(750))
        .duration(180)
        .buildAndRegister()