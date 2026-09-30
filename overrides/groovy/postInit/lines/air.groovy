package postInit.lines

import gregtech.api.recipes.RecipeMaps
import gregtech.api.unification.material.Materials

// Air * 10000
mods.gregtech.gas_collector.removeByInput(16, [metaitem('circuit.integrated').withNbt(['Configuration': 1])], null)
RecipeMaps.GAS_COLLECTOR_RECIPES.recipeBuilder()
        .dimension(0) // overworld
        .dimension(43) // simple void world
        .dimension(-6) // mining world
        .dimension(2) // storage cell?
        .circuitMeta(1)
        .fluidOutputs(Materials.Air.getFluid(10000))
        .EUt(16).duration(200)
        .buildAndRegister()
