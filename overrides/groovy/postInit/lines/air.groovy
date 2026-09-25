package postInit.lines

import gregtech.api.recipes.RecipeMaps
import gregtech.api.unification.material.Materials

// air
RecipeMaps.GAS_COLLECTOR_RECIPES.recipeBuilder()
        .dimension(43) // simple void world
        .circuitMeta(4)
        .fluidOutputs(Materials.Air.getFluid(10000))
        .EUt(16).duration(200)
        .buildAndRegister()
RecipeMaps.GAS_COLLECTOR_RECIPES.recipeBuilder()
        .dimension(-6) // mining world
        .circuitMeta(5)
        .fluidOutputs(Materials.Air.getFluid(10000))
        .EUt(16).duration(200)
        .buildAndRegister()
RecipeMaps.GAS_COLLECTOR_RECIPES.recipeBuilder()
        .dimension(2) // storage cell?
        .circuitMeta(6)
        .fluidOutputs(Materials.Air.getFluid(10000))
        .EUt(16).duration(200)
        .buildAndRegister()

