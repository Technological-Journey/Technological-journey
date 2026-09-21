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

// draconic core
crafting.removeByOutput(item('draconicevolution:draconic_core'))
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .input(OrePrefix.frameGt, Materials.Tritanium, 10)
        .input(OrePrefix.plate, GCYLMaterials.Draconium, 10)
        .input(OrePrefix.plate, TJMaterials.StarMetalAlloy, 10)
        .input(OrePrefix.plate, Materials.Mendelevium, 10)
        .input(MetaItems.NEUTRON_REFLECTOR, 2)
        .input(MetaItems.FIELD_GENERATOR_ZPM)
        .input(MetaItems.EMITTER_ZPM)
        .input(MetaItems.SENSOR_ZPM)
        .input(OrePrefix.circuit, MarkerMaterials.Tier.UHV)
        .fluidInputs(Materials.SolderingAlloy.getFluid(50))
        .outputs(item('draconicevolution:draconic_core') * 2)
        .EUt(GTValues.V[GTValues.UV]).duration(1200)
        .buildAndRegister()
// wyvern core
crafting.removeByOutput(item('draconicevolution:wyvern_core'))
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:draconic_core'))
        .input(OrePrefix.frameGt, GCYLMaterials.HDCS, 10)
        .input(OrePrefix.plate, GCYLMaterials.TantalumHafniumSeaborgiumCarbide, 10)
        .input(OrePrefix.plate, GCYLMaterials.Draconium, 10)
        .input(OrePrefix.plate, GCYLMaterials.ProtoAdamantium, 10)
        .input(OrePrefix.plate, GCYLMaterials.TitanSteel, 10)
        .input(MetaItems.FIELD_GENERATOR_UV)
        .input(MetaItems.EMITTER_UV)
        .input(MetaItems.SENSOR_UV)
        .input(OrePrefix.circuit, MarkerMaterials.Tier.UEV)
        .fluidInputs(Materials.SolderingAlloy.getFluid(50))
        .outputs(item('draconicevolution:wyvern_core') * 2)
        .EUt(GTValues.V[GTValues.UHV]).duration(1200)
        .buildAndRegister()
// wyvern energy core
crafting.removeByOutput(item('draconicevolution:wyvern_energy_core'))
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:wyvern_core') * 4)
        .input(OrePrefix.plate, GCYLMaterials.Draconium, 10)
        .input(OrePrefix.wireGtSingle, GCYLMaterials.Draconium, 10)
        .input(MetaItems.QUANTUM_STAR)
        .fluidInputs(Materials.Redstone.getFluid(1440))
        .outputs(item('draconicevolution:wyvern_energy_core'))
        .EUt(GTValues.V[GTValues.UIV]).duration(400)
        .buildAndRegister()
// awakened item dislocator
crafting.removeByOutput(item('draconicevolution:magnet', 1))
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:dislocator_advanced'), item('draconicevolution:magnet'))
        .input(OrePrefix.plate, GCYLMaterials.AwakenDraconium, 4)
        .input(OrePrefix.dust, Materials.NeodymiumMagnetic, 2)
        .fluidInputs(Materials.SolderingAlloy.getFluid(50))
        .outputs(item('draconicevolution:magnet', 1))
        .EUt(GTValues.V[GTValues.UHV]).duration(200)
        .buildAndRegister()
// draconic stem cell fluid
GCYLRecipeMaps.BIO_REACTOR_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:dragon_heart') * 2)
        .input(MetaItems.STEM_CELLS, 10)
        .fluidInputs(Materials.SterileGrowthMedium.getFluid(2000))
        .fluidOutputs(TJMaterials.DraconicStemCell.getFluid(2000))
        .EUt(GTValues.V[GTValues.UHV]).duration(600)
        .buildAndRegister()
// awakened draconium plasma
GCYLRecipeMaps.STELLAR_FORGE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:wyvern_core') * 2)
        .input(OrePrefix.block, GCYLMaterials.Draconium, 3)
        .fluidInputs(TJMaterials.DraconicStemCell.getFluid(2000))
        .fluidOutputs(GCYLMaterials.DepletedGrowthMedium.getFluid(2000), GCYLMaterials.AwakenDraconium.getPlasma(3888))
        .EUt(GTValues.V[GTValues.UEV]).duration(100)
        .buildAndRegister()
// awakened draconium
GCYLRecipeMaps.PLASMA_CONDENSER_RECIPES.recipeBuilder()
        .circuitMeta(1)
        .fluidInputs(GCYLMaterials.AwakenDraconium.getPlasma(144), Materials.Helium.getFluid(FluidStorageKeys.LIQUID, 100))
        .fluidOutputs(GCYLMaterials.AwakenDraconium.getFluid(144), Materials.Helium.getFluid(100))
        .EUt(960).duration(98)
        .buildAndRegister()

