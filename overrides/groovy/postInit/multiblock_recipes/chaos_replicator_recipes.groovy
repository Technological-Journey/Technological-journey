package postInit.multiblock_recipes

import classes.MetaTileEntityChaosReplicator
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

def chaosReplicatorRecipes = MetaTileEntityChaosReplicator.CHAOS_REPLICATOR_RECIPES

// chaos replicator
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .input(OrePrefix.plate, GCYLMaterials.Lafium, 10)
        .input(OrePrefix.plate, GCYLMaterials.HastelloyK243, 10)
        .input(OrePrefix.plate, GCYLMaterials.HastelloyX78, 10)
        .input(OrePrefix.plate, GCYLMaterials.AwakenDraconium, 10)
        .input(OrePrefix.cableGtSingle, GCYLMaterials.Pikyonium, 10)
        .input(OrePrefix.plate, GCYLMaterials.HDCS, 5)
        .input(MetaTileEntities.HULL[GTValues.UEV])
        .input(MetaItems.ROBOT_ARM_UEV)
        .input(OrePrefix.circuit, MarkerMaterials.Tier.UEV)
        .inputs(item('draconicevolution:awakened_core'))
        .output(TJMetaTileEntities.CHAOS_REPLICATOR)
        .fluidInputs(GCYLMaterials.TitanSteel.getFluid(1296))
        .fluidInputs(Materials.Mendelevium.getFluid(2592))
        .fluidInputs(GCYLMaterials.Cinobite.getFluid(1296))
        .EUt(GTValues.V[GTValues.UHV]).duration(600)
        .buildAndRegister()
// refined chaos shard
chaosReplicatorRecipes.recipeBuilder()
        .input(GCYLCoreItems.UNSTABLE_STAR, 16)
        .input(MetaItems.QUANTUM_STAR, 16)
        .input(MetaItems.GRAVI_STAR, 16)
        .inputs(item('technological_journey:refinedchaoscrystal'))
        .outputs(item('technological_journey:refinedchaosshard') * 64, item('technological_journey:refinedchaosshard') * 64)
        .fluidInputs(Materials.UUMatter.getFluid(32000))
        .EUt(GTValues.V[GTValues.UV]).duration(500)
        .buildAndRegister()