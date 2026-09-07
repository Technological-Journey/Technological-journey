package postInit.lines

import com.fulltrix.gcyl.item.GCYLCoreItems
import com.fulltrix.gcyl.materials.GCYLMaterials
import gregtech.api.GTValues
import gregtech.api.items.metaitem.MetaItem
import gregtech.api.unification.OreDictUnifier
import gregtech.api.unification.material.MarkerMaterials
import gregtech.api.unification.material.Material
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import gregtech.api.unification.stack.UnificationEntry
import gregtech.common.items.MetaItems
import gregtech.common.metatileentities.MetaTileEntities
import tja.blocks.BlockTieredGlass
import tja.blocks.TJAMetaBlocks

Material[] materials = [Materials.WroughtIron, Materials.Steel, Materials.Aluminium, Materials.StainlessSteel, Materials.Titanium, Materials.TungstenSteel,
                        Materials.RhodiumPlatedPalladium, Materials.Duranium, Materials.Tritanium, Materials.Seaborgium, Materials.Bohrium,
                        GCYLMaterials.Quantum, GCYLMaterials.BlackTitanium, GCYLMaterials.HeavyQuarkDegenerateMatter, Materials.Neutronium]

Material[] circuitTier = [MarkerMaterials.Tier.ULV, MarkerMaterials.Tier.LV, MarkerMaterials.Tier.MV, MarkerMaterials.Tier.HV, MarkerMaterials.Tier.EV,
                          MarkerMaterials.Tier.IV, MarkerMaterials.Tier.LuV, MarkerMaterials.Tier.ZPM, MarkerMaterials.Tier.UV, MarkerMaterials.Tier.UHV,
                          MarkerMaterials.Tier.UEV, MarkerMaterials.Tier.UIV, MarkerMaterials.Tier.UXV, MarkerMaterials.Tier.OpV, MarkerMaterials.Tier.MAX]

Material[] cableMaterials = [Materials.RedAlloy, Materials.Tin, Materials.Copper, Materials.Gold, Materials.Aluminium, Materials.Platinum,
                             Materials.NiobiumTitanium, Materials.Naquadah, Materials.NaquadahAlloy, GCYLMaterials.AbyssalAlloy, GCYLMaterials.TitanSteel,
                             GCYLMaterials.BlackTitanium, GCYLMaterials.NaquadriaticTaranium, Materials.Neutronium, GCYLMaterials.CosmicNeutronium]

Material[] cableMaterials2 = [Materials.Lead, Materials.Copper, Materials.Cupronickel, Materials.Kanthal, Materials.Nichrome, Materials.RTMAlloy,
                              Materials.HSSG, Materials.Naquadah, Materials.NaquadahAlloy, Materials.Europium, GCYLMaterials.Pikyonium,
                              GCYLMaterials.Cinobite, GCYLMaterials.NaquadriaticTaranium, Materials.Neutronium, GCYLMaterials.CosmicNeutronium]

Material[] rotorMaterials = [Materials.Lead, Materials.Tin, Materials.Bronze, Materials.Steel, Materials.StainlessSteel, Materials.TungstenSteel,
                             Materials.RhodiumPlatedPalladium, Materials.NaquadahAlloy, Materials.Darmstadtium, GCYLMaterials.HastelloyX78,
                             GCYLMaterials.HastelloyK243, GCYLMaterials.ProtoAdamantium, GCYLMaterials.Vibranium, Materials.Neutronium,
                             GCYLMaterials.CosmicNeutronium]

Material[] magnetMaterials = [Materials.Lead, Materials.Tin, Materials.Copper, Materials.Silver, Materials.Steel, Materials.Graphene,
                              Materials.NiobiumNitride, Materials.VanadiumGallium, Materials.YttriumBariumCuprate, Materials.YttriumBariumCuprate,
                              Materials.YttriumBariumCuprate, Materials.YttriumBariumCuprate, Materials.YttriumBariumCuprate,Materials.YttriumBariumCuprate,
                              Materials.YttriumBariumCuprate]

Material[] sawMaterials = [null, Materials.CobaltBrass, Materials.VanadiumSteel, Materials.RedSteel, Materials.Ultimet, Materials.TungstenCarbide,
                           GCYLMaterials.Enderium, Materials.HSSE, Materials.NaquadahAlloy, Materials.Duranium, GCYLMaterials.Draconium,
                           GCYLMaterials.AwakenDraconium, Materials.Neutronium, GCYLMaterials.Chaos, GCYLMaterials.ChaosAlloy]

MetaItem.MetaValueItem[] motors = [null, MetaItems.ELECTRIC_MOTOR_LV, MetaItems.ELECTRIC_MOTOR_MV, MetaItems.ELECTRIC_MOTOR_HV,
                                   MetaItems.ELECTRIC_MOTOR_EV, MetaItems.ELECTRIC_MOTOR_IV, MetaItems.ELECTRIC_MOTOR_LuV,
                                   MetaItems.ELECTRIC_MOTOR_ZPM, MetaItems.ELECTRIC_MOTOR_UV, MetaItems.ELECTRIC_MOTOR_UHV,
                                   MetaItems.ELECTRIC_MOTOR_UEV, MetaItems.ELECTRIC_MOTOR_UIV, MetaItems.ELECTRIC_MOTOR_UXV,
                                   MetaItems.ELECTRIC_MOTOR_OpV, GCYLCoreItems.ELECTRIC_MOTOR_MAX]

MetaItem.MetaValueItem[] pistons = [null, MetaItems.ELECTRIC_PISTON_LV, MetaItems.ELECTRIC_PISTON_MV, MetaItems.ELECTRIC_PISTON_HV,
                                    MetaItems.ELECTRIC_PISTON_EV, MetaItems.ELECTRIC_PISTON_IV, MetaItems.ELECTRIC_PISTON_LUV,
                                    MetaItems.ELECTRIC_PISTON_ZPM, MetaItems.ELECTRIC_PISTON_UV, MetaItems.ELECTRIC_PISTON_UHV,
                                    MetaItems.ELECTRIC_PISTON_UEV, MetaItems.ELECTRIC_PISTON_UIV, MetaItems.ELECTRIC_PISTON_UXV,
                                    MetaItems.ELECTRIC_PISTON_OpV, GCYLCoreItems.ELECTRIC_PISTON_MAX]

MetaItem.MetaValueItem[] conveyors = [null, MetaItems.ELECTRIC_PISTON_LV, MetaItems.ELECTRIC_PISTON_MV, MetaItems.ELECTRIC_PISTON_HV,
                                      MetaItems.ELECTRIC_PISTON_EV, MetaItems.ELECTRIC_PISTON_IV, MetaItems.ELECTRIC_PISTON_LUV,
                                      MetaItems.ELECTRIC_PISTON_ZPM, MetaItems.ELECTRIC_PISTON_UV, MetaItems.ELECTRIC_PISTON_UHV,
                                      MetaItems.ELECTRIC_PISTON_UEV, MetaItems.ELECTRIC_PISTON_UIV, MetaItems.ELECTRIC_PISTON_UXV,
                                      MetaItems.ELECTRIC_PISTON_OpV, GCYLCoreItems.CONVEYOR_MODULE_MAX]

MetaItem.MetaValueItem[] robotArms = [null, MetaItems.ROBOT_ARM_LV, MetaItems.ROBOT_ARM_MV, MetaItems.ROBOT_ARM_HV, MetaItems.ROBOT_ARM_EV,
                                      MetaItems.ROBOT_ARM_IV, MetaItems.ROBOT_ARM_LuV, MetaItems.ROBOT_ARM_ZPM, MetaItems.ROBOT_ARM_UV,
                                      MetaItems.ROBOT_ARM_UHV, MetaItems.ROBOT_ARM_UEV, MetaItems.ROBOT_ARM_UIV, MetaItems.ROBOT_ARM_UXV,
                                      MetaItems.ROBOT_ARM_OpV, GCYLCoreItems.ROBOT_ARM_MAX]

MetaItem.MetaValueItem[] pumps = [null, MetaItems.ELECTRIC_PUMP_LV, MetaItems.ELECTRIC_PUMP_MV, MetaItems.ELECTRIC_PUMP_HV, MetaItems.ELECTRIC_PUMP_EV,
                                  MetaItems.ELECTRIC_PUMP_IV, MetaItems.ELECTRIC_PUMP_LuV, MetaItems.ELECTRIC_PUMP_ZPM, MetaItems.ELECTRIC_PUMP_UV,
                                  MetaItems.ELECTRIC_PUMP_UHV, MetaItems.ELECTRIC_PUMP_UEV, MetaItems.ELECTRIC_PUMP_UIV, MetaItems.ELECTRIC_PUMP_UXV,
                                  MetaItems.ELECTRIC_PUMP_OpV, GCYLCoreItems.ELECTRIC_PUMP_MAX]

MetaItem.MetaValueItem[] emitters = [null, MetaItems.EMITTER_LV, MetaItems.EMITTER_MV, MetaItems.EMITTER_HV, MetaItems.EMITTER_EV, MetaItems.EMITTER_IV,
                                     MetaItems.EMITTER_LuV, MetaItems.EMITTER_ZPM, MetaItems.EMITTER_UV, MetaItems.EMITTER_UHV, MetaItems.EMITTER_UEV,
                                     MetaItems.EMITTER_UIV, MetaItems.EMITTER_UXV, MetaItems.EMITTER_OpV, GCYLCoreItems.EMITTER_MAX]

MetaItem.MetaValueItem[] sensors = [null, MetaItems.SENSOR_LV, MetaItems.SENSOR_MV, MetaItems.SENSOR_HV, MetaItems.SENSOR_EV, MetaItems.SENSOR_IV,
                                    MetaItems.SENSOR_LuV, MetaItems.SENSOR_ZPM, MetaItems.SENSOR_UV, MetaItems.SENSOR_UHV, MetaItems.SENSOR_UEV,
                                    MetaItems.SENSOR_UIV, MetaItems.SENSOR_UXV, MetaItems.SENSOR_OpV, GCYLCoreItems.SENSOR_MAX]

// electric furnaces
for (int i = GTValues.LV; i < MetaTileEntities.ELECTRIC_FURNACE.length; i++) {
    crafting.shapedBuilder()
            .row('cWc')
            .row('WHW')
            .row('CWC')
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('W', OreDictUnifier.get(OrePrefix.wireGtDouble, cableMaterials2[i]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .output(MetaTileEntities.ELECTRIC_FURNACE[i].getStackForm())
            .replace()
            .register()
}
// macerators
for (int i = GTValues.LV; i < MetaTileEntities.MACERATOR.length; i++) {
    crafting.shapedBuilder()
            .row('PMD')
            .row('CCH')
            .row('ccC')
            .key('P', pistons[i].getStackForm())
            .key('M', motors[i].getStackForm())
            .key('D', i < 3 ? OreDictUnifier.get(OrePrefix.gem, Materials.Diamond) :
                    i < 5 ? MetaItems.COMPONENT_GRINDER_DIAMOND.getStackForm() : MetaItems.COMPONENT_GRINDER_TUNGSTEN.getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .output(MetaTileEntities.MACERATOR[i].getStackForm())
            .replace()
            .register()
}
// alloy smelters
for (int i = GTValues.LV; i < MetaTileEntities.ALLOY_SMELTER.length; i++) {
    crafting.shapedBuilder()
            .row('cWc')
            .row('WHW')
            .row('CWC')
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('W', OreDictUnifier.get(OrePrefix.wireGtQuadruple, cableMaterials2[i]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .output(MetaTileEntities.ALLOY_SMELTER[i].getStackForm())
            .replace()
            .register()
}
// arc furnaces
for (int i = GTValues.LV; i < MetaTileEntities.ARC_FURNACE.length; i++) {
    crafting.shapedBuilder()
            .row('CGC')
            .row('cHc')
            .row('PPP')
            .key('C', OreDictUnifier.get(OrePrefix.cableGtQuadruple, cableMaterials[i]))
            .key('G', OreDictUnifier.get(OrePrefix.dust, Materials.Graphite))
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('P', ore(new UnificationEntry(OrePrefix.plate, materials[i]).toString()))
            .output(MetaTileEntities.ARC_FURNACE[i].getStackForm())
            .replace()
            .register()
}
// assembling machines
for (int i = GTValues.LV; i < MetaTileEntities.ASSEMBLER.length; i++) {
    crafting.shapedBuilder()
            .row('RcR')
            .row('MHM')
            .row('CcC')
            .key('R', robotArms[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('M', conveyors[i].getStackForm())
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .output(MetaTileEntities.ASSEMBLER[i].getStackForm())
            .replace()
            .register()
}
// autoclaves
for (int i = GTValues.LV; i < MetaTileEntities.AUTOCLAVE.length; i++) {
    crafting.shapedBuilder()
            .row('PGP')
            .row('PHP')
            .row('cpc')
            .key('P', ore(new UnificationEntry(OrePrefix.plate, materials[i]).toString()))
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('p', pumps[i].getStackForm())
            .output(MetaTileEntities.AUTOCLAVE[i].getStackForm())
            .replace()
            .register()
}
// bending machines
for (int i = GTValues.LV; i < MetaTileEntities.BENDER.length; i++) {
    crafting.shapedBuilder()
            .row('PCP')
            .row('cHc')
            .row('MPM')
            .key('P', pistons[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('M', motors[i].getStackForm())
            .key('P', ore(new UnificationEntry(OrePrefix.plate, materials[i]).toString()))
            .output(MetaTileEntities.BENDER[i].getStackForm())
            .replace()
            .register()
}
// breweries
for (int i = GTValues.LV; i < MetaTileEntities.BREWERY.length; i++) {
    crafting.shapedBuilder()
            .row('GPG')
            .row('CHC')
            .row('cSc')
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .key('P', pumps[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('S', OreDictUnifier.get(OrePrefix.spring, cableMaterials2[i]))
            .output(MetaTileEntities.BREWERY[i].getStackForm())
            .replace()
            .register()
}
// canning machines
for (int i = GTValues.LV; i < MetaTileEntities.CANNER.length; i++) {
    crafting.shapedBuilder()
            .row('CPC')
            .row('cHc')
            .row('GGG')
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('P', pumps[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .output(MetaTileEntities.CANNER[i].getStackForm())
            .replace()
            .register()
}
// centrifuges
for (int i = GTValues.LV; i < MetaTileEntities.CENTRIFUGE.length; i++) {
    crafting.shapedBuilder()
            .row('cMc')
            .row('CHC')
            .row('cMc')
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('M', motors[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .output(MetaTileEntities.CENTRIFUGE[i].getStackForm())
            .replace()
            .register()
}
// chemical bath
for (int i = GTValues.LV; i < MetaTileEntities.CHEMICAL_BATH.length; i++) {
    crafting.shapedBuilder()
            .row('MGC')
            .row('PGM')
            .row('cHc')
            .key('M', conveyors[i].getStackForm())
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('P', pumps[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .output(MetaTileEntities.CHEMICAL_BATH[i].getStackForm())
            .replace()
            .register()
}
// chemical reactors
for (int i = GTValues.LV; i < MetaTileEntities.CHEMICAL_REACTOR.length; i++) {
    crafting.shapedBuilder()
            .row('GRG')
            .row('CMC')
            .row('cHc')
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .key('R', OreDictUnifier.get(OrePrefix.rotor, rotorMaterials[i]))
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('M', motors[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .output(MetaTileEntities.CHEMICAL_REACTOR[i].getStackForm())
            .replace()
            .register()
}
// compressors
for (int i = GTValues.LV; i < MetaTileEntities.COMPRESSOR.length; i++) {
    crafting.shapedBuilder()
            .row(' c ')
            .row('PHP')
            .row('CcC')
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('P', pistons[i].getStackForm())
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .output(MetaTileEntities.COMPRESSOR[i].getStackForm())
            .replace()
            .register()
}
// cutting machines
for (int i = GTValues.LV; i < MetaTileEntities.CUTTER.length; i++) {
    crafting.shapedBuilder()
            .row('CcG')
            .row('OHS')
            .row('cCM')
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .key('O', conveyors[i].getStackForm())
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('S', OreDictUnifier.get(OrePrefix.toolHeadBuzzSaw, sawMaterials[i]))
            .key('M', motors[i].getStackForm())
            .output(MetaTileEntities.CUTTER[i].getStackForm())
            .replace()
            .register()
}
// distilleries
for (int i = GTValues.LV; i < MetaTileEntities.DISTILLERY.length; i++) {
    crafting.shapedBuilder()
            .row('GSG')
            .row('cHc')
            .row('CPC')
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .key('S', OreDictUnifier.get(OrePrefix.spring, cableMaterials2[i]))
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('P', pumps[i].getStackForm())
            .output(MetaTileEntities.DISTILLERY[i].getStackForm())
            .replace()
            .register()
}
// electrolyzers
for (int i = GTValues.LV; i < MetaTileEntities.ELECTROLYZER.length; i++) {
    crafting.shapedBuilder()
            .row('WGW')
            .row('WHW')
            .row('cCc')
            .key('W', OreDictUnifier.get(OrePrefix.wireGtSingle, i < 2 ? Materials.Gold :
                    i < 3 ? Materials.Silver :
                            i < 4 ? Materials.Electrum :
                                    i < 5 ? Materials.Platinum : Materials.Osmium))
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .output(MetaTileEntities.ELECTROLYZER[i].getStackForm())
            .replace()
            .register()
}
// electromagnetic separator
for (int i = GTValues.LV; i < MetaTileEntities.ELECTROMAGNETIC_SEPARATOR.length; i++) {
    crafting.shapedBuilder()
            .row('TCW')
            .row('CHR')
            .row('cCW')
            .key('T', conveyors[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('W', OreDictUnifier.get((i < 4 ? OrePrefix.wireGtDouble :
                    i < 7 ? OrePrefix.wireGtQuadruple :
                            i < 10 ? OrePrefix.wireGtOctal : OrePrefix.wireGtHex), magnetMaterials[i]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('R', OreDictUnifier.get(OrePrefix.stick, i < 2 ? Materials.Iron :
                    i < 4 ? Materials.Steel :
                            i < 5 ? Materials.Neodymium : Materials.VanadiumGallium))
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .output(MetaTileEntities.ELECTROMAGNETIC_SEPARATOR[i].getStackForm())
            .replace()
            .register()
}
// extractors
for (int i = GTValues.LV; i < MetaTileEntities.EXTRACTOR.length; i++) {
    crafting.shapedBuilder()
            .row('GcG')
            .row('THP')
            .row('CcC')
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('T', pistons[i].getStackForm())
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('P', pumps[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .output(MetaTileEntities.EXTRACTOR[i].getStackForm())
            .replace()
            .register()
}
// extruders
for (int i = GTValues.LV; i < MetaTileEntities.EXTRUDER.length; i++) {
    crafting.shapedBuilder()
            .row('WWc')
            .row('THP')
            .row('WWc')
            .key('W', OreDictUnifier.get(OrePrefix.wireGtQuadruple, cableMaterials2[i]))
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('T', pistons[i].getStackForm())
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('P', OreDictUnifier.get(OrePrefix.pipeNormalFluid, materials[i]))
            .output(MetaTileEntities.EXTRUDER[i].getStackForm())
            .replace()
            .register()
}
// fermenters
for (int i = GTValues.LV; i < MetaTileEntities.FERMENTER.length; i++) {
    crafting.shapedBuilder()
            .row('CPC')
            .row('GHG')
            .row('CcC')
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('P', pumps[i].getStackForm())
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .output(MetaTileEntities.FERMENTER[i].getStackForm())
            .replace()
            .register()
}
// fluid heaters
for (int i = GTValues.LV; i < MetaTileEntities.FLUID_HEATER.length; i++) {
    crafting.shapedBuilder()
            .row('WGW')
            .row('PHP')
            .row('CcC')
            .key('W', OreDictUnifier.get(OrePrefix.wireGtQuadruple, cableMaterials2[i]))
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .key('P', pumps[i].getStackForm())
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .output(MetaTileEntities.FLUID_HEATER[i].getStackForm())
            .replace()
            .register()
}
// fluid solidifiers
for (int i = GTValues.LV; i < MetaTileEntities.FLUID_SOLIDIFIER.length; i++) {
    crafting.shapedBuilder()
            .row('PGP')
            .row('CHC')
            .row('cEc')
            .key('P', pumps[i].getStackForm())
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('E', ore('chestWood'))
            .output(MetaTileEntities.FLUID_SOLIDIFIER[i].getStackForm())
            .replace()
            .register()
}
// forge hammers
for (int i = GTValues.LV; i < MetaTileEntities.FORGE_HAMMER.length; i++) {
    crafting.shapedBuilder()
            .row('CPC')
            .row('cHc')
            .row('CAC')
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('P', pistons[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('A', ore('craftingAnvil'))
            .output(MetaTileEntities.FORGE_HAMMER[i].getStackForm())
            .replace()
            .register()
}
// forming press
for (int i = GTValues.LV; i < MetaTileEntities.FORMING_PRESS.length; i++) {
    crafting.shapedBuilder()
            .row('CPC')
            .row('cHc')
            .row('CPC')
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('P', pistons[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .output(MetaTileEntities.FORMING_PRESS[i].getStackForm())
            .replace()
            .register()
}
// lathe
for (int i = GTValues.LV; i < MetaTileEntities.LATHE.length; i++) {
    crafting.shapedBuilder()
            .row('CcC')
            .row('MHD')
            .row('cCP')
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('M', motors[i].getStackForm())
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('D',  i < 3 ? OreDictUnifier.get(OrePrefix.gem, Materials.Diamond) :
                    i < 5 ? MetaItems.COMPONENT_GRINDER_DIAMOND.getStackForm() : MetaItems.COMPONENT_GRINDER_TUNGSTEN.getStackForm())
            .key('P', pistons[i].getStackForm())
            .output(MetaTileEntities.LATHE[i].getStackForm())
            .replace()
            .register()
}
// scanners
for (int i = GTValues.LV; i < MetaTileEntities.SCANNER.length; i++) {
    crafting.shapedBuilder()
            .row('cEc')
            .row('CHC')
            .row('cSc')
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('E', emitters[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('S', sensors[i].getStackForm())
            .output(MetaTileEntities.SCANNER[i].getStackForm())
            .replace()
            .register()
}
// mixers
for (int i = GTValues.LV; i < MetaTileEntities.MIXER.length; i++) {
    crafting.shapedBuilder()
            .row('GRG')
            .row('GMG')
            .row('cHc')
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .key('R', OreDictUnifier.get(OrePrefix.rotor, rotorMaterials[i]))
            .key('M', motors[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .output(MetaTileEntities.MIXER[i].getStackForm())
            .replace()
            .register()
}
// ore washing plants
for (int i = GTValues.LV; i < MetaTileEntities.ORE_WASHER.length; i++) {
    crafting.shapedBuilder()
            .row('RGR')
            .row('cMc')
            .row('CHC')
            .key('R', OreDictUnifier.get(OrePrefix.rotor, rotorMaterials[i]))
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('M', motors[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .output(MetaTileEntities.ORE_WASHER[i].getStackForm())
            .replace()
            .register()
}
// packagers
for (int i = GTValues.LV; i < MetaTileEntities.PACKER.length; i++) {
    crafting.shapedBuilder()
            .row('EcE')
            .row('RHT')
            .row('CcC')
            .key('E', ore('chestWood'))
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('R', robotArms[i].getStackForm())
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('T', conveyors[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .output(MetaTileEntities.PACKER[i].getStackForm())
            .replace()
            .register()
}
// gas collectors
for (int i = GTValues.LV; i < MetaTileEntities.GAS_COLLECTOR.length; i++) {
    crafting.shapedBuilder()
            .row('BFB')
            .row('PHP')
            .row('BcB')
            .key('B', ore('barsIron'))
            .key('F', MetaItems.FLUID_FILTER.getStackForm())
            .key('P', pumps[i].getStackForm())
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .output(MetaTileEntities.GAS_COLLECTOR[i].getStackForm())
            .replace()
            .register()
}
// polarizers
for (int i = GTValues.LV; i < MetaTileEntities.POLARIZER.length; i++) {
    crafting.shapedBuilder()
            .row('WRW')
            .row('CHC')
            .row('WRW')
            .key('W', OreDictUnifier.get((i < 4 ? OrePrefix.wireGtDouble :
                    i < 7 ? OrePrefix.wireGtQuadruple :
                            i < 10 ? OrePrefix.wireGtOctal : OrePrefix.wireGtHex), magnetMaterials[i]))
            .key('R', OreDictUnifier.get(OrePrefix.stick, i < 2 ? Materials.Iron :
                    i < 4 ? Materials.Steel :
                            i < 5 ? Materials.Neodymium : Materials.VanadiumGallium))
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .output(MetaTileEntities.POLARIZER[i].getStackForm())
            .replace()
            .register()
}
// precision laser engravers
for (int i = GTValues.LV; i < MetaTileEntities.LASER_ENGRAVER.length; i++) {
    crafting.shapedBuilder()
            .row('PEP')
            .row('cHc')
            .row('CcC')
            .key('P', pistons[i].getStackForm())
            .key('E', emitters[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .output(MetaTileEntities.LASER_ENGRAVER[i].getStackForm())
            .replace()
            .register()
}
// sifting machines
for (int i = GTValues.LV; i < MetaTileEntities.SIFTER.length; i++) {
    crafting.shapedBuilder()
            .row('CFC')
            .row('PHP')
            .row('cFc')
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('F', MetaItems.ITEM_FILTER.getStackForm())
            .key('P', pistons[i].getStackForm())
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .output(MetaTileEntities.SIFTER[i].getStackForm())
            .replace()
            .register()
}
// thermal centrifuges
for (int i = GTValues.LV; i < MetaTileEntities.THERMAL_CENTRIFUGE.length; i++) {
    crafting.shapedBuilder()
            .row('cMc')
            .row('WHW')
            .row('CMC')
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('M', motors[i].getStackForm())
            .key('W', OreDictUnifier.get(OrePrefix.wireGtQuadruple, cableMaterials2[i]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .output(MetaTileEntities.THERMAL_CENTRIFUGE[i].getStackForm())
            .replace()
            .register()
}
// wiremills
for (int i = GTValues.LV; i < MetaTileEntities.WIREMILL.length; i++) {
    crafting.shapedBuilder()
            .row('MCM')
            .row('cHc')
            .row('MCM')
            .key('M', motors[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i]).toString()))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .output(MetaTileEntities.WIREMILL[i].getStackForm())
            .replace()
            .register()
}
// circuit assemblers
for (int i = GTValues.LV; i < MetaTileEntities.CIRCUIT_ASSEMBLER.length; i++) {
    crafting.shapedBuilder()
            .row('RcE')
            .row('THT')
            .row('CcC')
            .key('R', robotArms[i].getStackForm())
            .key('c', ore(new UnificationEntry(OrePrefix.circuit, circuitTier[i + 1]).toString()))
            .key('E', emitters[i].getStackForm())
            .key('T', conveyors[i].getStackForm())
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .output(MetaTileEntities.CIRCUIT_ASSEMBLER[i].getStackForm())
            .replace()
            .register()
}
// rock breakers
for (int i = GTValues.LV; i < MetaTileEntities.ROCK_BREAKER.length; i++) {
    crafting.shapedBuilder()
            .row('PMD')
            .row('CHC')
            .row('GGG')
            .key('P', pistons[i].getStackForm())
            .key('M', motors[i].getStackForm())
            .key('D', i < 3 ? OreDictUnifier.get(OrePrefix.gem, Materials.Diamond) :
                    i < 5 ? MetaItems.COMPONENT_GRINDER_DIAMOND.getStackForm() : MetaItems.COMPONENT_GRINDER_TUNGSTEN.getStackForm())
            .key('C', OreDictUnifier.get(OrePrefix.cableGtSingle, cableMaterials[i]))
            .key('H', MetaTileEntities.HULL[i].getStackForm())
            .key('G', i < 2 ? ore('blockGlass') : TJAMetaBlocks.TIERED_GLASS.getItemVariant(BlockTieredGlass.CasingType.values()[i - 2]))
            .output(MetaTileEntities.ROCK_BREAKER[i].getStackForm())
            .replace()
            .register()
}