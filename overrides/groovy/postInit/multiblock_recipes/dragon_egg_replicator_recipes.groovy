package postInit.multiblock_recipes

import classes.MetaTileEntityDragonEggReplicator
import classes.TJMetaTileEntities
import com.fulltrix.gcyl.item.GCYLCoreItems
import com.fulltrix.gcyl.materials.GCYLMaterials
import gregtech.api.GTValues
import gregtech.api.recipes.RecipeMaps
import gregtech.api.unification.material.MarkerMaterials
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import gregtech.common.items.MetaItems
import gregtech.common.metatileentities.MetaTileEntities

def dragonEggReplicatorRecipes = MetaTileEntityDragonEggReplicator.DRAGON_EGG_REPLICATOR_RECIPES

// dragon egg replicator
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .input(OrePrefix.plate, GCYLMaterials.TantalumHafniumSeaborgiumCarbide, 10)
        .input(OrePrefix.plate, GCYLMaterials.Draconium, 10)
        .input(OrePrefix.plate, GCYLMaterials.AwakenDraconium, 10)
        .input(OrePrefix.cableGtSingle, GCYLMaterials.TungstenTitaniumCarbide, 10)
        .input(MetaTileEntities.HULL[GTValues.UHV])
        .input(OrePrefix.circuit, MarkerMaterials.Tier.UHV)
        .input(GCYLCoreItems.RED_HALIDE_LAMP)
        .input(MetaItems.SENSOR_UHV)
        .output(TJMetaTileEntities.DRAGON_EGG_REPLICATOR)
        .fluidInputs(GCYLMaterials.Incoloy813.getFluid(1296))
        .fluidInputs(Materials.Einsteinium.getFluid(2592))
        .EUt(GTValues.VA[GTValues.UEV]).duration(600)
        .buildAndRegister()
// dragon heart, sword of the wyvern, dragon egg, depleted growth medium
dragonEggReplicatorRecipes.recipeBuilder()
        .inputs(item('minecraft:egg') * 16, item('draconicevolution:wyvern_sword').withNbt(['Energy': 4000000]))
        .outputs(item('draconicevolution:dragon_heart') * 2, item('draconicevolution:wyvern_sword'), item('minecraft:dragon_egg'))
        .fluidInputs(Materials.SterileGrowthMedium.getFluid(2000))
        .fluidOutputs(GCYLMaterials.DepletedGrowthMedium.getFluid(2000))
        .EUt(GTValues.V[GTValues.ZPM]).duration(500)
        .buildAndRegister()