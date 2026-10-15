package postInit.lines

import gregtech.api.recipes.RecipeMaps
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix

// polycaprolactam
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, Materials.Saltpeter)
        .fluidInputs(Materials.Naphtha.getFluid(576))
        .output(OrePrefix.dustTiny, Materials.Potassium)
        .fluidOutputs(Materials.Polycaprolactam.getFluid(1296))
        .EUt(30).duration(640)
        .buildAndRegister()