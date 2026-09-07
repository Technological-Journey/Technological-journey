package postInit.multiblock_recipes

import classes.MetaTileEntityLargePoweredSpawner
import classes.TJMetaTileEntities
import com.fulltrix.gcyl.materials.GCYLNuclearMaterials
import gregtech.api.GTValues
import gregtech.api.recipes.RecipeMaps
import gregtech.api.recipes.ingredients.IntCircuitIngredient
import gregtech.api.unification.material.MarkerMaterials
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import gregtech.common.items.MetaItems
import gregtech.common.metatileentities.MetaTileEntities

def largeSpawnerRecipes = MetaTileEntityLargePoweredSpawner.LARGE_POWERED_SPAWNER_RECIPES
def mobs = ['enderman', 'zombie', 'skeleton', 'blaze', 'ghast', 'spider', 'slime', 'creeper',
            'magma_cube', 'witch', 'wither_skeleton', 'snowman', 'sheep', 'pig', 'chicken', 'cow']

// large powered spawner
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .input(OrePrefix.plate, GCYLNuclearMaterials.Curium247, 12)
        .input(OrePrefix.cableGtQuadruple, Materials.NiobiumTitanium, 8)
        .input(OrePrefix.circuit, MarkerMaterials.Tier.ZPM, 2)
        .input(MetaItems.FIELD_GENERATOR_LuV, 2)
        .input(MetaItems.EMITTER_LuV, 2)
        .input(MetaItems.ROBOT_ARM_LuV, 2)
        .input(MetaItems.ELECTRIC_PUMP_LuV, 2)
        .input(MetaTileEntities.HULL[GTValues.LuV])
        .inputs(item('enderio:block_powered_spawner') * 16, item('technological_journey:soulcasing') * 4, item('enderio:item_capacitor_stellar') * 2)
        .output(TJMetaTileEntities.LARGE_POWERED_SPAWNER)
        .fluidInputs(Materials.SolderingAlloy.getFluid(576))
        .fluidInputs(Materials.HSSG.getFluid(2304))
        //.fluidInputs(Materials.Soularium.getFluid(2304)) add soularium fluid
        .EUt(30000).duration(800)
        .buildAndRegister()
for (i in 0..<32) {
    largeSpawnerRecipes.recipeBuilder()
            .notConsumable(IntCircuitIngredient.getIntegratedCircuit(i))
            .inputs(i < 16 ? item('enderio:item_soul_vial') * 16 : item('enderio:item_soul_vial') * 64)
            .outputs(i < 16 ? item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:' + mobs.get(i % 16)]) * 16
                    : item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:' + mobs.get(i % 16)]) * 64)
            .fluidInputs(i < 16 ? fluid('xpjuice') * 16000 : fluid('xpjuice') * 64000)
            .EUt(GTValues.VA[i < 16 ? GTValues.LuV : GTValues.ZPM]).duration(20)
            .buildAndRegister()
}
