import classes.TJMaterials
import com.fulltrix.gcyl.api.recipes.GCYLRecipeMaps
import com.fulltrix.gcyl.materials.GCYLMaterials
import gregtech.api.GTValues
import gregtech.api.fluids.store.FluidStorageKeys
import gregtech.api.recipes.RecipeMaps
import gregtech.api.unification.material.MarkerMaterials
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import gregtech.common.items.MetaItems

// awakened core
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:wyvern_core'))
        .input(OrePrefix.frameGt, GCYLMaterials.TriniumTitanium, 10)
        .input(OrePrefix.dust, GCYLMaterials.Legendarium, 10)
        .input(OrePrefix.plate, GCYLMaterials.AwakenDraconium, 10)
        .input(OrePrefix.plate, GCYLMaterials.SuperheavyLAlloy, 10)
        .input(OrePrefix.plate, GCYLMaterials.SuperheavyHAlloy, 10)
        .input(MetaItems.FIELD_GENERATOR_UIV)
        .input(MetaItems.EMITTER_UIV)
        .input(MetaItems.SENSOR_UIV)
        .input(OrePrefix.circuit, MarkerMaterials.Tier.UIV)
        .fluidInputs(Materials.SolderingAlloy.getFluid(50))
        .outputs(item('draconicevolution:awakened_core') * 2)
        .EUt(GTValues.V[GTValues.UEV]).duration(600)
        .buildAndRegister()
// draconic energy core
crafting.removeByOutput(item('draconicevolution:draconic_energy_core'))
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 4)
        .input(OrePrefix.plate, GCYLMaterials.AwakenDraconium, 10)
        .input(OrePrefix.wireGtSingle, GCYLMaterials.AwakenDraconium, 10)
        .input(MetaItems.QUANTUM_STAR)
        .fluidInputs(Materials.Redstone.getFluid(1440))
        .outputs(item('draconicevolution:draconic_energy_core'))
        .EUt(GTValues.V[GTValues.UIV]).duration(400)
        .buildAndRegister()
// draconic flux capacitor
crafting.removeByOutput(item('draconicevolution:draconium_capacitor', 1))
// dragon heart
GCYLRecipeMaps.STELLAR_FORGE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core'), item('draconicadditions:chaos_heart'))
        .input(OrePrefix.block, GCYLMaterials.AwakenDraconium, 4)
        .outputs(item('draconicevolution:dragon_heart'))
        .fluidOutputs(TJMaterials.RawChaos.getFluid(5184))
        .EUt(GTValues.V[GTValues.UEV]).duration(600)
        .buildAndRegister()
// refined chaos crystal
RecipeMaps.CHEMICAL_BATH_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:chaos_shard'))
        .fluidInputs(Materials.Rutherfordium.getFluid(1000))
        .outputs(item('technological_journey:refinedchaoscrystal') * 2)
        .EUt(GTValues.V[GTValues.UEV]).duration(600)
        .buildAndRegister()
RecipeMaps.CHEMICAL_BATH_RECIPES.recipeBuilder()
        .inputs(item('technological_journey:refinedchaosshard') * 9)
        .fluidInputs(Materials.Rutherfordium.getFluid(500))
        .outputs(item('technological_journey:refinedchaoscrystal'))
        .EUt(GTValues.V[GTValues.ZPM]).duration(600)
        .buildAndRegister()
// refined chaos shard
crafting.addShapeless(item('technological_journey:refinedchaosshard') * 9, [item('technological_journey:refinedchaoscrystal')])
// raw chaos
GCYLRecipeMaps.STELLAR_FORGE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 3, item('technological_journey:refinedchaoscrystal'))
        .input(OrePrefix.block, GCYLMaterials.AwakenDraconium, 2)
        .fluidOutputs(TJMaterials.RawChaos.getFluid(2592))
        .EUt(GTValues.V[GTValues.UEV]).duration(600)
        .buildAndRegister()
// chaos plasma
GCYLRecipeMaps.ADV_FUSION_RECIPES.recipeBuilder()
        .AdvCoilTier(5)
        .EUToStart(2000000000)
        .EUReturn(75)
        .fluidInputs(TJMaterials.RawChaos.getFluid(288), Materials.Bohrium.getFluid(288))
        .fluidOutputs(GCYLMaterials.Chaos.getPlasma(576))
        .EUt(16000000).duration(50)
        .buildAndRegister()
// liquid chaos
GCYLRecipeMaps.PLASMA_CONDENSER_RECIPES.recipeBuilder()
        .circuitMeta(1)
        .fluidInputs(GCYLMaterials.Chaos.getPlasma(144), Materials.Helium.getFluid(FluidStorageKeys.LIQUID, 100))
        .fluidOutputs(GCYLMaterials.Chaos.getFluid(144), Materials.Helium.getFluid(100))
        .EUt(960).duration(98)
        .buildAndRegister()

