import appeng.core.Api
import classes.TJMaterials
import com.fulltrix.gcyl.api.recipes.GCYLRecipeMaps
import com.fulltrix.gcyl.blocks.GCYLExplosive
import com.fulltrix.gcyl.blocks.GCYLHeatingCoil
import com.fulltrix.gcyl.blocks.GCYLMetaBlocks
import com.fulltrix.gcyl.item.GCYLCoreItems
import com.fulltrix.gcyl.materials.GCYLMaterials
import gregicality.multiblocks.common.metatileentities.GCYMMetaTileEntities
import gregtech.api.GTValues
import gregtech.api.fluids.store.FluidStorageKeys
import gregtech.api.recipes.RecipeMaps
import gregtech.api.unification.material.MarkerMaterials
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import gregtech.common.items.MetaItems
import tja.blocks.BlockBatteryCell
import tja.blocks.TJAMetaBlocks
import tja.items.TJAMetaItems

// hardened upgrade kit
crafting.removeByOutput(item('thermalfoundation:upgrade'))
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:draconic_core') * 10)
        .input(OrePrefix.plate, TJMaterials.StarMetalAlloy, 10)
        .input(OrePrefix.wireGtSingle, GCYLMaterials.UVSuperconductor, 64)
        .input(OrePrefix.plate, GCYLMaterials.TitanSteel, 64)
        .fluidInputs(Materials.SolderingAlloy.getFluid(1440), GCYLMaterials.Draconium.getFluid(1440))
        .outputs(item('thermalfoundation:upgrade'))
        .EUt(GTValues.VAOC[GTValues.MAX]).duration(100)
        .buildAndRegister()
// reinforced upgrade kit
crafting.removeByOutput(item('thermalfoundation:upgrade', 1))
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:wyvern_core') * 10)
        .input(OrePrefix.plate, GCYLMaterials.ProtoAdamantium, 64)
        .input(OrePrefix.wireGtSingle, GCYLMaterials.UHVSuperconductor, 64)
        .input(OrePrefix.plate, GCYLMaterials.Pikyonium, 64)
        .fluidInputs(Materials.SolderingAlloy.getFluid(1440), GCYLMaterials.Draconium.getFluid(1440),
                Materials.NaquadahAlloy.getFluid(1440))
        .outputs(item('thermalfoundation:upgrade', 1))
        .EUt(GTValues.VAOC[GTValues.MAX]).duration(100)
        .buildAndRegister()
// signalum upgrade kit
crafting.removeByOutput(item('thermalfoundation:upgrade', 2))
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 10)
        .input(OrePrefix.plate, Materials.Seaborgium, 64)
        .input(OrePrefix.wireGtSingle, GCYLMaterials.UEVSuperconductor, 64)
        .input(OrePrefix.plate, GCYLMaterials.BlackTitanium, 64)
        .fluidInputs(Materials.SolderingAlloy.getFluid(1440), GCYLMaterials.AwakenDraconium.getFluid(1440),
                GCYLMaterials.EnrichedNaquadahAlloy.getFluid(1440))
        .outputs(item('thermalfoundation:upgrade', 2))
        .EUt(GTValues.VAOC[GTValues.MAX]).duration(100)
        .buildAndRegister()
// resonant upgrade kit
crafting.removeByOutput(item('thermalfoundation:upgrade', 3))
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:chaotic_core') * 10)
        .input(OrePrefix.plate, Materials.Bohrium, 64)
        .input(OrePrefix.wireGtSingle, GCYLMaterials.UIVSuperconductor, 64)
        .input(OrePrefix.plate, GCYLMaterials.HDCS, 64)
        .fluidInputs(Materials.SolderingAlloy.getFluid(1440), GCYLMaterials.Chaos.getFluid(1440),
                GCYLMaterials.NaquadriaticTaranium.getFluid(1440))
        .outputs(item('thermalfoundation:upgrade', 3))
        .EUt(GTValues.VAOC[GTValues.MAX]).duration(100)
        .buildAndRegister()
// creative conversion kit
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('thermalfoundation:upgrade'), item('thermalfoundation:upgrade', 1), item('thermalfoundation:upgrade', 2),
                item('thermalfoundation:upgrade', 3))
        .fluidInputs(GCYLMaterials.NaquadriaticTaranium.getFluid(1440), GCYLMaterials.CosmicNeutronium.getFluid(1440),
                GCYLMaterials.EnrichedNaquadahAlloy.getFluid(1440), Materials.NaquadahAlloy.getFluid(1440))
        .outputs(item('thermalfoundation:upgrade', 256))
        .EUt(GTValues.VAOC[GTValues.MAX]).duration(100)
        .buildAndRegister()
// chaotic energy core
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:chaotic_core') * 4)
        .input(OrePrefix.plate, GCYLMaterials.Chaos, 10)
        .input(OrePrefix.wireGtSingle, GCYLMaterials.Chaos, 10)
        .input(GCYLCoreItems.UNSTABLE_STAR)
        .fluidInputs(Materials.Redstone.getFluid(1440))
        .outputs(item('draconicadditions:chaotic_energy_core'))
        .EUt(GTValues.VAOC[GTValues.MAX]).duration(100)
        .buildAndRegister()
// chaos stabilizer core
crafting.shapedBuilder()
        .row('HSC')
        .row('DOD')
        .row('LBF')
        .key('H', item('draconicadditions:chaotic_helm'))
        .key('S', item('draconicadditions:chaotic_staff_of_power'))
        .key('C', item('draconicadditions:chaotic_chest'))
        .key('D', item('draconicevolution:draconic_energy_core'))
        .key('O', item('draconicadditions:chaotic_energy_core'))
        .key('L', item('draconicadditions:chaotic_legs'))
        .key('B', item('draconicadditions:chaotic_bow'))
        .key('F', item('draconicadditions:chaotic_boots'))
        .output(item('draconicadditions:chaos_stabilizer_core'))
        .register()
// chaotic core
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core'), item('technological_journey:refinedchaoscrystal'))
        .input(OrePrefix.frameGt, GCYLMaterials.Quantum, 10)
        .input(OrePrefix.plate, GCYLMaterials.Cinobite, 10)
        .input(OrePrefix.plate, GCYLMaterials.AwakenDraconium, 10)
        .input(OrePrefix.plate, GCYLMaterials.Chaos, 10)
        .input(MetaItems.FIELD_GENERATOR_UXV)
        .input(MetaItems.SENSOR_UXV)
        .input(MetaItems.EMITTER_UXV)
        .input(OrePrefix.circuit, MarkerMaterials.Tier.UXV)
        .fluidInputs(Materials.SolderingAlloy.getFluid(50))
        .outputs(item('draconicevolution:chaotic_core') * 2)
        .EUt(GTValues.V[GTValues.UIV]).duration(600)
        .buildAndRegister()
// ender energy manipulator
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('draconicevolution:draconic_core') * 2, item('draconicevolution:wyvern_core'), item('draconicevolution:dislocator'),
                item('draconicadditions:chaotic_energy_core'), item('minecraft:skull'))
        .input(OrePrefix.gem, Materials.EnderEye, 7)
        .fluidInputs(Materials.Blaze.getFluid(2304))
        .outputs(item('draconicevolution:ender_energy_manipulator'))
        .EUt(GTValues.V[GTValues.UHV]).duration(200)
        .buildAndRegister()
// chaos infinity alloy plasma
GCYLRecipeMaps.STELLAR_FORGE_RECIPES.recipeBuilder()
        .inputs(GCYLMetaBlocks.EXPLOSIVE.getItemVariant(GCYLExplosive.ExplosiveType.QCD_CHARGE))
        .input(OrePrefix.ingot, GCYLMaterials.CosmicNeutronium)
        .input(GCYLCoreItems.COSMIC_MESH)
        .fluidInputs(GCYLMaterials.Chaos.getFluid(1008))
        .fluidOutputs(GCYLMaterials.ChaosAlloy.getPlasma(2592))
        .EUt(GTValues.V[GTValues.UIV]).duration(20)
        .buildAndRegister()
// chaos infinity alloy
GCYLRecipeMaps.PLASMA_CONDENSER_RECIPES.recipeBuilder()
        .circuitMeta(1)
        .fluidInputs(GCYLMaterials.ChaosAlloy.getPlasma(144), Materials.Helium.getFluid(FluidStorageKeys.LIQUID, 100))
        .fluidOutputs(GCYLMaterials.ChaosAlloy.getFluid(144), Materials.Helium.getFluid(100))
        .EUt(960).duration(98)
        .buildAndRegister()
// infinity coil
RecipeMaps.ASSEMBLER_RECIPES.recipeBuilder()
        .input(GCYLCoreItems.HIGHLY_INSULATING_FOIL, 16)
        .input(OrePrefix.wireGtDouble, GCYLMaterials.ChaosAlloy, 8)
        .fluidInputs(GCYLMaterials.CosmicNeutronium.getFluid(144))
        .outputs(GCYLMetaBlocks.HEATING_COIL.getItemVariant(GCYLHeatingCoil.CoilType.INFINITY_COIL))
        .EUt(GTValues.V[GTValues.OpV]).duration(250)
        .buildAndRegister()
// eternity preparation
RecipeMaps.BLAST_RECIPES.recipeBuilder()
        .blastFurnaceTemp(23000)
        .input(GCYLCoreItems.COSMIC_FABRIC, 4)
        .input(GCYLCoreItems.TIME_DILATION_CONTAINMENT_UNIT)
        .input(GCYLCoreItems.QCD_PROTECTIVE_PLATING)
        .fluidInputs(GCYLMaterials.Taranium.getFluid(4032))
        .output(OrePrefix.dust, TJMaterials.EternityPreparation)
        .EUt(GTValues.V[GTValues.OpV]).duration(50)
        .buildAndRegister()
// infinity crystal
RecipeMaps.BLAST_RECIPES.recipeBuilder()
        .blastFurnaceTemp(19302)
        .input(OrePrefix.bolt, GCYLMaterials.ChaosAlloy, 8)
        .inputs(item('technological_journey:refinedchaoscrystal'))
        .input(GCYLCoreItems.RECURSIVELY_FOLDED_NEGATIVE_SPACE)
        .fluidInputs(GCYLMaterials.LightQuarks.getFluid(750))
        .outputs(item('technological_journey:infinitycrystal'))
        .EUt(GTValues.V[GTValues.OpV]).duration(100)
        .buildAndRegister()
// eternity plasma
GCYLRecipeMaps.STELLAR_FORGE_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, TJMaterials.EternityPreparation, 4)
        .inputs(item('technological_journey:infinitycrystal') * 2, GCYLMetaBlocks.EXPLOSIVE.getItemVariant(GCYLExplosive.ExplosiveType.QCD_CHARGE))
        .fluidInputs(GCYLMaterials.Gluons.getFluid(8000))
        .fluidOutputs(TJMaterials.Eternity.getPlasma(1152))
        .EUt(GTValues.V[GTValues.OpV]).duration(20)
        .buildAndRegister()
// eternity ingot
GCYLRecipeMaps.PLASMA_CONDENSER_RECIPES.recipeBuilder()
        .notConsumable(MetaItems.SHAPE_MOLD_INGOT)
        .fluidInputs(TJMaterials.Eternity.getPlasma(144), GCYLMaterials.MicrocrystallizingHydrogen.getFluid(5000))
        .outputs(item('technological_journey:eternityingot'))
        .fluidOutputs(Materials.Hydrogen.getFluid(5000))
        .EUt(GTValues.V[GTValues.OpV]).duration(40)
        .buildAndRegister()
crafting.addShapeless(item('technological_journey:eternityingot') * 9, [item('technological_journey:eternityblock')])
// block of eternity
crafting.shapedBuilder()
        .row('III')
        .row('III')
        .row('III')
        .key('I', item('technological_journey:eternityingot'))
        .output(item('technological_journey:eternityblock'))
        .register()
// eternity coil
RecipeMaps.ASSEMBLER_RECIPES.recipeBuilder()
        .input(GCYLCoreItems.HIGHLY_INSULATING_FOIL, 32)
        .input(OrePrefix.wireGtHex, GCYLMaterials.MAXSuperconductor, 8)
        .inputs(item('technological_journey:eternityblock'))
        .input(MetaItems.FIELD_GENERATOR_OpV)
        .fluidInputs(GCYLMaterials.ChaosAlloy.getFluid(288))
        .outputs(GCYLMetaBlocks.HEATING_COIL.getItemVariant(GCYLHeatingCoil.CoilType.ETERNITY_COIL))
        .EUt(GTValues.V[GTValues.OpV]).duration(100)
        .buildAndRegister()
// eternity crystal
RecipeMaps.BLAST_RECIPES.recipeBuilder()
        .blastFurnaceTemp(51237)
        .input(GCYLCoreItems.COSMIC_FABRIC, 8)
        .input(GCYLCoreItems.EIGENFOLDED_KERR_MANIFOLD)
        .inputs(item('technological_journey:infinitycrystal'))
        .fluidInputs(GCYLMaterials.HighEnergyQGP.getFluid(288))
        .outputs(item('technological_journey:eternitycrystal'))
        .EUt(GTValues.V[GTValues.OpV]).duration(10000)
        .buildAndRegister()
// maximum voltage control unit
RecipeMaps.ASSEMBLER_RECIPES.recipeBuilder()
        .input(OrePrefix.circuit, MarkerMaterials.Tier.MAX, 4)
        .input(OrePrefix.gear, Materials.Neutronium, 4)
        .input(OrePrefix.plate, Materials.Neutronium, 4)
        .input(OrePrefix.wireGtQuadruple, GCYLMaterials.ChaosAlloy)
        .fluidInputs(GCYLMaterials.Chaos.getFluid(288))
        .output(GCYMMetaTileEntities.TIERED_HATCH[GTValues.MAX])
        .EUt(GTValues.V[GTValues.MAX]).duration(100)
        .buildAndRegister()
// creative storage upgrade
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .input(OrePrefix.plate, GCYLMaterials.SuperheavyLAlloy, 64)
        .input(OrePrefix.plate, GCYLMaterials.SuperheavyHAlloy, 64)
        .inputs(item('tja:me.material.item_cell.digital_singularity') * 2, item('draconicevolution:chaotic_core') * 2)
        .input(GCYLCoreItems.SENSOR_MAX, 2)
        .inputs(item('thermalfoundation:upgrade', 2), item('thermalfoundation:upgrade', 3))
        .fluidInputs(Materials.SolderingAlloy.getFluid(1440), GCYLMaterials.ChaosAlloy.getFluid(1440),
                GCYLMaterials.HeavyQuarkDegenerateMatter.getFluid(1440))
        .outputs(item('storagedrawers:upgrade_creative'))
        .EUt(GTValues.VAOC[GTValues.MAX]).duration(100)
        .buildAndRegister()
// creative flux capacitor
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .input(OrePrefix.plate, GCYLMaterials.Quantum, 64)
        .input(OrePrefix.plate, GCYLMaterials.Zylon, 64)
        .inputs(item('draconicevolution:chaotic_core') * 4, item('draconicadditions:chaotic_energy_core') * 4)
        .input(GCYLCoreItems.EMITTER_MAX, 2)
        .inputs(item('thermalfoundation:upgrade'), item('thermalfoundation:upgrade', 1), item('draconicevolution:draconium_capacitor', 1),
                TJAMetaBlocks.BATTERY_CELL.getItemVariant(BlockBatteryCell.CasingType.CELL_MAX))
        .fluidInputs(Materials.SolderingAlloy.getFluid(1440), GCYLMaterials.ChaosAlloy.getFluid(1440))
        .outputs(item('draconicevolution:draconium_capacitor', 2))
        .EUt(GTValues.VAOC[GTValues.MAX]).duration(100)
        .buildAndRegister()
// creative me storage cell
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .inputs(item('technological_journey:refinedchaoscrystal') * 64, item('technological_journey:refinedchaoscrystal') * 64,
                TJAMetaBlocks.BATTERY_CELL.getItemVariant(BlockBatteryCell.CasingType.CELL_MAX, 64),
                TJAMetaBlocks.BATTERY_CELL.getItemVariant(BlockBatteryCell.CasingType.CELL_MAX, 64),
                item('tja:me.material.item_cell.digital_singularity') * 64,
                TJAMetaBlocks.BATTERY_CELL.getItemVariant(BlockBatteryCell.CasingType.CELL_MAX, 14),
                GCYLCoreItems.FIELD_GENERATOR_MAX.getStackForm(4), item('technological_journey:eternitycrystal') * 4,
                item('thermalfoundation:upgrade', 256), item('storagedrawers:upgrade_creative'), item('draconicevolution:draconium_capacitor', 2))
        .input(MetaItems.NAN_CERTIFICATE)
        .input(OrePrefix.circuit, MarkerMaterials.Tier.MAX)
        .inputs(item('draconicadditions:chaos_stabilizer_core'))
        .input(TJAMetaItems.SUPRA_SOLAR_PANEL)
        .input(GCYMMetaTileEntities.TIERED_HATCH[GTValues.MAX])
        .fluidInputs(GCYLMaterials.ChaosAlloy.getFluid(11520))
        .outputs(Api.INSTANCE.definitions().items().cellCreative().maybeStack(1).get())
        .EUt(1).duration(Integer.MAX_VALUE)
        .buildAndRegister()

