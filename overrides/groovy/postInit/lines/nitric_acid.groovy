package postInit.lines

import gregtech.api.recipes.RecipeMaps
import gregtech.api.unification.material.Materials

// nitrogen dioxide
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .circuitMeta(1)
        .fluidInputs(Materials.Oxygen.getFluid(2000), Materials.Nitrogen.getFluid(1000))
        .fluidOutputs(Materials.NitrogenDioxide.getFluid(1000))
        .EUt(30).duration(1250)
        .buildAndRegister()
