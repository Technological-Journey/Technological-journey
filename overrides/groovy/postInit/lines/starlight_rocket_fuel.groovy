package postInit.lines

import classes.TJMaterials
import com.fulltrix.gcyl.api.recipes.GCYLRecipeMaps
import com.fulltrix.gcyl.materials.GCYLMaterials
import gregtech.api.recipes.RecipeMaps
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix

// hmx high explosive compound
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .notConsumable(GCYLMaterials.AceticAnhydride.getFluid(1))
        .input(OrePrefix.dust, GCYLMaterials.Hexamethylenetetramine, 4)
        .fluidInputs(GCYLMaterials.FumingNitricAcid.getFluid(2000))
        .output(OrePrefix.dust, TJMaterials.HMX)
        .EUt(1024).duration(20)
        .buildAndRegister()
// naquadric fuel catalyst
RecipeMaps.MIXER_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, Materials.Naquadah, 3)
        .inputs(item('astralsorcery:itemcraftingcomponent', 2) * 2)
        .input(OrePrefix.dust, Materials.Plutonium241) // TODO replace with plutonium 244 dust
        .fluidInputs(GCYLMaterials.ClearNaquadahLiquid.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.NaquadricFuelCatalyst, 6)
        .EUt(8096).duration(600)
        .buildAndRegister()
// wet octaazacubane solution
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, GCYLMaterials.SodiumAzide, 8)
        .fluidInputs(Materials.DistilledWater.getFluid(3000), Materials.Oxygen.getFluid(2000))
        .output(OrePrefix.dust, GCYLMaterials.SodiumOxide, 4)
        .fluidOutputs(TJMaterials.OctaazacubaneSolution.getFluid(3000))
        .EUt(30000).duration(6)
        .buildAndRegister()
// metastable octaazacubane booster
GCYLRecipeMaps.CHEMICAL_DEHYDRATOR_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.OctaazacubaneSolution.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.Octaazacubane)
        .EUt(4500).duration(36)
        .buildAndRegister()
// starlight complex
RecipeMaps.MIXER_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, TJMaterials.Octaazacubane)
        .fluidInputs(fluid('astralsorcery.liquidstarlight') * 1000)
        .fluidOutputs(TJMaterials.StarlightComplex.getFluid(2000))
        .EUt(2000).duration(36)
        .buildAndRegister()
// explosive hydrazine fuel mixture
GCYLRecipeMaps.ADVANCED_MIXER_RECIPES.recipeBuilder()
        .fluidInputs(Materials.GlycerylTrinitrate.getFluid(1000), GCYLMaterials.Nitrotoluene.getFluid(4000),
                GCYLMaterials.DenseHydrazineFuelMixture.getFluid(8000))
        .fluidOutputs(TJMaterials.ExplosiveHydrazineMixture.getFluid(13000))
        .EUt(1024).duration(100)
        .buildAndRegister()
// starlight rocket fuel
RecipeMaps.LARGE_CHEMICAL_RECIPES.recipeBuilder()
        .notConsumable(OrePrefix.dust, TJMaterials.NaquadricFuelCatalyst)
        .input(OrePrefix.dust, TJMaterials.HMX, 4)
        .fluidInputs(GCYLMaterials.RocketFuelCN3H7O3.getFluid(2000), TJMaterials.StarlightComplex.getFluid(6000),
                TJMaterials.ExplosiveHydrazineMixture.getFluid(32000), Materials.DinitrogenTetroxide.getFluid(6000),
                GCYLMaterials.Kerosene.getFluid(4000))
        .fluidOutputs(TJMaterials.StarlightRocketFuel.getFluid(50000))
        .EUt(30000).duration(20)
        .buildAndRegister()
GCYLRecipeMaps.ROCKET_FUEL_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.StarlightRocketFuel.getFluid(6))
        .EUt(8192).duration(420)
        .buildAndRegister()
