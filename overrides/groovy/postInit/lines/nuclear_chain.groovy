package postInit.lines

import classes.TJMaterials
import com.fulltrix.gcyl.api.recipes.GCYLRecipeMaps
import com.fulltrix.gcyl.materials.GCYLNuclearMaterials
import gregtech.api.recipes.RecipeMaps
import gregtech.api.recipes.ingredients.GTRecipeItemInput
import gregtech.api.unification.OreDictUnifier
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import supercritical.api.recipes.SCRecipeMaps
import supercritical.api.unification.material.SCMaterials
import supercritical.api.unification.ore.SCOrePrefix
import supercritical.common.blocks.BlockFissionCasing
import supercritical.common.blocks.SCMetaBlocks
import supercritical.common.item.SCMetaItems

// zircaloy ingot
crafting.shapelessBuilder()
        .input([OreDictUnifier.get(OrePrefix.ingot, Materials.Zircaloy4)])
        .output(OreDictUnifier.get(OrePrefix.ingot, SCMaterials.Zircaloy))
        .register()

// reactor vessel
mods.gregtech.assembler.removeByInput(48, [metaitem('supercritical:plateDoubleInconel'), metaitem('plateSteel') * 5, metaitem('frameSteel')], null)
RecipeMaps.ASSEMBLER_RECIPES.recipeBuilder()
        .input(OrePrefix.plateDouble, SCMaterials.Inconel)
        .input(OrePrefix.plate, GCYLNuclearMaterials.ReactorSteel, 5)
        .input(OrePrefix.frameGt, Materials.Steel)
        .outputs(SCMetaBlocks.FISSION_CASING.getItemVariant(BlockFissionCasing.FissionCasingType.REACTOR_VESSEL, 2))
        .EUt(48).duration(280)
        .buildAndRegister()

// HEXAFLUORIDE PROCESSING STAGE 1
// neptunium hexafluoride
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, Materials.Neptunium)
        .fluidInputs(Materials.HydrofluoricAcid.getFluid(4000), Materials.Fluorine.getFluid(2000))
        .fluidOutputs(TJMaterials.NeptuniumHexafluoride.getFluid(1000), Materials.Water.getFluid(2000))
        .EUt(30).duration(200)
        .buildAndRegister()
// neptunium hexafluorides
SCRecipeMaps.GAS_CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.NeptuniumHexafluoride.getFluid(20000))
        .fluidOutputs(TJMaterials.Neptunium235Hexafluoride.getFluid(4000), TJMaterials.Neptunium237Hexafluoride.getFluid(10000),
                TJMaterials.Neptunium239Hexafluoride.getFluid(6000))
        .EUt(960).duration(402)
        .buildAndRegister()
// neptunium 235 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Neptunium235Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.Neptunium235)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// neptunium 237 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Neptunium237Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, SCMaterials.Neptunium237)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// neptunium 239 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Neptunium239Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, SCMaterials.Neptunium239)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()

// plutonium hexafluoride
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, Materials.Plutonium)
        .fluidInputs(Materials.HydrofluoricAcid.getFluid(4000), Materials.Fluorine.getFluid(2000))
        .fluidOutputs(TJMaterials.PlutoniumHexafluoride.getFluid(1000), Materials.Water.getFluid(2000))
        .EUt(30).duration(200)
        .buildAndRegister()
// plutonium hexafluorides
SCRecipeMaps.GAS_CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.PlutoniumHexafluoride.getFluid(20000))
        .fluidOutputs(TJMaterials.Plutonium244Hexafluoride.getFluid(19780), TJMaterials.Plutonium241Hexafluoride.getFluid(200),
                TJMaterials.Plutonium240Hexafluoride.getFluid(20))
        .EUt(960).duration(420)
        .buildAndRegister()
// plutonium 244 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Plutonium244Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, SCMaterials.Plutonium244)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// plutonium 241 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Plutonium241Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, Materials.Plutonium241)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// plutonium 240 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Plutonium240Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, SCMaterials.Plutonium240)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()

// americium hexafluoride
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, Materials.Americium)
        .fluidInputs(Materials.HydrofluoricAcid.getFluid(4000), Materials.Fluorine.getFluid(2000))
        .fluidOutputs(TJMaterials.AmericiumHexafluoride.getFluid(1000), Materials.Water.getFluid(2000))
        .EUt(30).duration(200)
        .buildAndRegister()
// americium hexafluorides
SCRecipeMaps.GAS_CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.AmericiumHexafluoride.getFluid(20000))
        .fluidOutputs(TJMaterials.Americium241Hexafluoride.getFluid(4000), TJMaterials.Americium243Hexafluoride.getFluid(10000),
                TJMaterials.Americium245Hexafluoride.getFluid(6000))
        .EUt(960).duration(472)
        .buildAndRegister()
// americium 241 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Americium241Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, GCYLNuclearMaterials.Americium241)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// americium 243 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Americium243Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, GCYLNuclearMaterials.Americium243)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// americium 245 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Americium245Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.Americium245)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()

// curium hexafluoride
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, Materials.Curium)
        .fluidInputs(Materials.HydrofluoricAcid.getFluid(4000), Materials.Fluorine.getFluid(2000))
        .fluidOutputs(TJMaterials.CuriumHexafluoride.getFluid(1000), Materials.Water.getFluid(2000))
        .EUt(30).duration(200)
        .buildAndRegister()
// curium hexafluorides
SCRecipeMaps.GAS_CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.CuriumHexafluoride.getFluid(20000))
        .fluidOutputs(TJMaterials.Curium250Hexafluoride.getFluid(19780), TJMaterials.Curium247Hexafluoride.getFluid(200),
                TJMaterials.Curium246Hexafluoride.getFluid(20))
        .EUt(960).duration(508)
        .buildAndRegister()
// curium 246 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Curium246Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.Curium246)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// curium 247 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Curium247Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, GCYLNuclearMaterials.Curium247)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// curium 250 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Curium250Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, GCYLNuclearMaterials.Curium250)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()

// berkelium hexafluoride
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, Materials.Berkelium)
        .fluidInputs(Materials.HydrofluoricAcid.getFluid(4000), Materials.Fluorine.getFluid(2000))
        .fluidOutputs(TJMaterials.BerkeliumHexafluoride.getFluid(1000), Materials.Water.getFluid(2000))
        .EUt(30).duration(200)
        .buildAndRegister()
// berkelium hexafluorides
SCRecipeMaps.GAS_CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.BerkeliumHexafluoride.getFluid(20000))
        .fluidOutputs(TJMaterials.Berkelium247Hexafluoride.getFluid(4000), TJMaterials.Berkelium249Hexafluoride.getFluid(10000),
                TJMaterials.Berkelium251Hexafluoride.getFluid(6000))
        .EUt(960).duration(526)
        .buildAndRegister()
// berkelium 249 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Berkelium249Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.Berkelium249)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// berkelium 247 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Berkelium247Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.Berkelium247)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// berkelium 251 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Berkelium251Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.Berkelium251)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()

// californium hexafluoride
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, Materials.Californium)
        .fluidInputs(Materials.HydrofluoricAcid.getFluid(4000), Materials.Fluorine.getFluid(2000))
        .fluidOutputs(TJMaterials.CaliforniumHexafluoride.getFluid(1000), Materials.Water.getFluid(2000))
        .EUt(30).duration(200)
        .buildAndRegister()
// californium hexafluorides
SCRecipeMaps.GAS_CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.CaliforniumHexafluoride.getFluid(20000))
        .fluidOutputs(TJMaterials.Californium252Hexafluoride.getFluid(19780), TJMaterials.Californium256Hexafluoride.getFluid(20),
                TJMaterials.Californium253Hexafluoride.getFluid(200))
        .EUt(960).duration(560)
        .buildAndRegister()
// californium 256 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Californium256Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.Californium256)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// californium 252 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Californium252Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, GCYLNuclearMaterials.Californium252)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// californium 253 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Californium253Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, GCYLNuclearMaterials.Californium253)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()

// einsteinium hexafluoride
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, Materials.Einsteinium)
        .fluidInputs(Materials.HydrofluoricAcid.getFluid(4000), Materials.Fluorine.getFluid(2000))
        .fluidOutputs(TJMaterials.EinsteiniumHexafluoride.getFluid(1000), Materials.Water.getFluid(2000))
        .EUt(30).duration(200)
        .buildAndRegister()
// einsteinium hexafluorides
SCRecipeMaps.GAS_CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.EinsteiniumHexafluoride.getFluid(20000))
        .fluidOutputs(TJMaterials.Einsteinium255Hexafluoride.getFluid(10000), TJMaterials.Einsteinium253Hexafluoride.getFluid(4000),
                TJMaterials.Einsteinium257Hexafluoride.getFluid(6000))
        .EUt(960).duration(596)
        .buildAndRegister()
// einsteinium 257 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Einsteinium257Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.Einsteinium257)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// einsteinium 253 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Einsteinium253Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, GCYLNuclearMaterials.Einsteinium253)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// einsteinium 255 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Einsteinium255Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.Einsteinium255)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()

// fermium hexafluoride
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, Materials.Fermium)
        .fluidInputs(Materials.HydrofluoricAcid.getFluid(4000), Materials.Fluorine.getFluid(2000))
        .fluidOutputs(TJMaterials.FermiumHexafluoride.getFluid(1000), Materials.Water.getFluid(2000))
        .EUt(30).duration(200)
        .buildAndRegister()
// fermium hexafluorides
SCRecipeMaps.GAS_CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.FermiumHexafluoride.getFluid(20000))
        .fluidOutputs(TJMaterials.Fermium258Hexafluoride.getFluid(19870), TJMaterials.Fermium259Hexafluoride.getFluid(200),
                TJMaterials.Fermium262Hexafluoride.getFluid(20))
        .EUt(960).duration(646)
        .buildAndRegister()
// fermium 259 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Fermium259Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, GCYLNuclearMaterials.Fermium259)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// fermium 258 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Fermium258Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, GCYLNuclearMaterials.Fermium258)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// fermium 262 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Fermium262Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.Fermium262)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()

// mendelevium hexafluoride
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, Materials.Mendelevium)
        .fluidInputs(Materials.HydrofluoricAcid.getFluid(4000), Materials.Fluorine.getFluid(2000))
        .fluidOutputs(TJMaterials.MendeleviumHexafluoride.getFluid(1000), Materials.Water.getFluid(2000))
        .EUt(30).duration(200)
        .buildAndRegister()
// mendelevium hexafluorides
SCRecipeMaps.GAS_CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.MendeleviumHexafluoride.getFluid(20000))
        .fluidOutputs(TJMaterials.Mendelevium263Hexafluoride.getFluid(6000), TJMaterials.Mendelevium259Hexafluoride.getFluid(4000),
                TJMaterials.Mendelevium261Hexafluoride.getFluid(10000))
        .EUt(960).duration(700)
        .buildAndRegister()
// mendelevium 259 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Mendelevium259Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.Mendelevium259)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// mendelevium 261 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Mendelevium261Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, GCYLNuclearMaterials.Mendelevium261)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()
// mendelevium 263 dust
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .fluidInputs(TJMaterials.Mendelevium263Hexafluoride.getFluid(1000))
        .output(OrePrefix.dust, TJMaterials.Mendelevium263)
        .fluidOutputs(Materials.Fluorine.getFluid(6000))
        .EUt(120).duration(160)
        .buildAndRegister()

// ROD ASSEMBLY STAGE 2
// Already autogen

// WASTE PROCESSING STAGE 3
// nuclear wastes
GCYLRecipeMaps.CHEMICAL_DEHYDRATOR_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.NuclearWaste)
        .chancedOutput(OrePrefix.gem, TJMaterials.LanthanideGroupAWaste, 1111, 111)
        .chancedOutput(OrePrefix.gem, TJMaterials.LanthanideGroupBWaste, 1111, 111)
        .chancedOutput(OrePrefix.gem, TJMaterials.AlkalineWaste, 1111, 111)
        .chancedOutput(OrePrefix.gem, TJMaterials.HeavyMetalWaste, 1111, 111)
        .chancedOutput(OrePrefix.gem, TJMaterials.MetalGroupAWaste, 1111, 111)
        .chancedOutput(OrePrefix.gem, TJMaterials.MetalGroupBWaste, 1111, 111)
        .chancedOutput(OrePrefix.gem, TJMaterials.MetalGroupCWaste, 1111, 111)
        .chancedOutput(OrePrefix.gem, TJMaterials.NonmetalWaste, 1111, 111)
        .chancedOutput(OrePrefix.gem, TJMaterials.MetaloidWaste, 1111, 111)
        .EUt(32).duration(300)
        .buildAndRegister()

// lanthanide group A waste
GCYLRecipeMaps.CHEMICAL_DEHYDRATOR_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.LanthanideGroupAWaste, 9)
        .chancedOutput(OrePrefix.dust, Materials.Dysprosium, 2, 8333, 500)
        .chancedOutput(OrePrefix.dust, Materials.Holmium, 2, 8333, 600)
        .chancedOutput(OrePrefix.dust, Materials.Erbium, 2, 8333, 700)
        .chancedOutput(OrePrefix.dust, Materials.Thulium, 2, 8333, 800)
        .chancedOutput(OrePrefix.dust, Materials.Ytterbium, 2, 8333, 900)
        .chancedOutput(OrePrefix.dust, Materials.Lutetium, 2, 8333, 1000)
        .EUt(32).duration(300)
        .buildAndRegister()

// lanthanide group B waste
GCYLRecipeMaps.CHEMICAL_DEHYDRATOR_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.LanthanideGroupBWaste, 9)
        .chancedOutput(OrePrefix.dust, Materials.Lanthanum, 2, 5555, 200)
        .chancedOutput(OrePrefix.dust, Materials.Cerium, 2, 5555, 300)
        .chancedOutput(OrePrefix.dust, Materials.Praseodymium, 2, 5555, 400)
        .chancedOutput(OrePrefix.dust, Materials.Neodymium, 2, 5555, 500)
        .chancedOutput(OrePrefix.dust, Materials.Promethium, 2, 5555, 600)
        .chancedOutput(OrePrefix.dust, Materials.Samarium, 2, 5555, 700)
        .chancedOutput(OrePrefix.dust, Materials.Europium, 2, 5555, 800)
        .chancedOutput(OrePrefix.dust, Materials.Gadolinium, 2, 5555, 900)
        .chancedOutput(OrePrefix.dust, Materials.Terbium, 2, 5555, 1000)
        .EUt(32).duration(300)
        .buildAndRegister()

// alkaline waste
GCYLRecipeMaps.CHEMICAL_DEHYDRATOR_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.AlkalineWaste, 9)
        .chancedOutput(OrePrefix.dust, Materials.Rubidium, 2, 6250, 500)
        .chancedOutput(OrePrefix.dust, Materials.Strontium, 2, 6250, 600)
        .chancedOutput(OrePrefix.dust, Materials.Caesium, 2, 6250, 700)
        .chancedOutput(OrePrefix.dust, Materials.Barium, 2, 6250, 800)
        .chancedOutput(OrePrefix.dust, Materials.Francium, 2, 6250, 900)
        .chancedOutput(OrePrefix.dust, Materials.Radium, 2, 6250, 1000)
        .EUt(32).duration(300)
        .buildAndRegister()

// heavy metal waste
GCYLRecipeMaps.CHEMICAL_DEHYDRATOR_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.HeavyMetalWaste, 9)
        .chancedOutput(OrePrefix.dust, Materials.Zinc, 2, 5555, 200)
        .chancedOutput(OrePrefix.dust, Materials.Gallium, 2, 5555, 300)
        .chancedOutput(OrePrefix.dust, Materials.Cadmium, 2, 5555, 400)
        .chancedOutput(OrePrefix.dust, Materials.Indium, 2, 5555, 500)
        .chancedOutput(OrePrefix.dust, Materials.Tin, 2, 5555, 600)
        .chancedOutput(OrePrefix.dust, Materials.Thallium, 2, 5555, 700)
        .chancedOutput(OrePrefix.dust, Materials.Lead, 2, 5555, 800)
        .chancedOutput(OrePrefix.dust, Materials.Bismuth, 2, 5555, 900)
        .chancedOutput(OrePrefix.dust, Materials.Polonium, 2, 5555, 1000)
        .fluidOutputs(Materials.Mercury.getFluid(2250))
        .EUt(32).duration(300)
        .buildAndRegister()

// metal group A waste
GCYLRecipeMaps.CHEMICAL_DEHYDRATOR_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.MetalGroupAWaste, 9)
        .chancedOutput(OrePrefix.dust, Materials.Hafnium, 2, 6250, 300)
        .chancedOutput(OrePrefix.dust, Materials.Tantalum, 2, 6250, 400)
        .chancedOutput(OrePrefix.dust, Materials.Tungsten, 2, 6250, 500)
        .chancedOutput(OrePrefix.dust, Materials.Osmium, 2, 6250, 700)
        .chancedOutput(OrePrefix.dust, Materials.Iridium, 2, 6250, 800)
        .chancedOutput(OrePrefix.dust, Materials.Platinum, 2, 6250, 900)
        .chancedOutput(OrePrefix.dust, Materials.Gold, 2, 6250, 1000)
        .EUt(32).duration(300)
        .buildAndRegister()

// metal group B waste
GCYLRecipeMaps.CHEMICAL_DEHYDRATOR_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.MetalGroupBWaste, 9)
        .chancedOutput(OrePrefix.dust, Materials.Yttrium, 2, 5555, 200)
        .chancedOutput(OrePrefix.dust, Materials.Zirconium, 2, 5555, 300)
        .chancedOutput(OrePrefix.dust, Materials.Niobium, 2, 5555, 400)
        .chancedOutput(OrePrefix.dust, Materials.Molybdenum, 2, 5555, 500)
        .chancedOutput(OrePrefix.dust, Materials.Technetium, 2, 5555, 600)
        .chancedOutput(OrePrefix.dust, Materials.Ruthenium, 2, 5555, 700)
        .chancedOutput(OrePrefix.dust, Materials.Rhodium, 2, 5555, 800)
        .chancedOutput(OrePrefix.dust, Materials.Palladium, 2, 5555, 900)
        .chancedOutput(OrePrefix.dust, Materials.Silver, 2, 5555, 1000)
        .EUt(32).duration(300)
        .buildAndRegister()

// metal group C waste
GCYLRecipeMaps.CHEMICAL_DEHYDRATOR_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.MetalGroupCWaste, 9)
        .output(OrePrefix.dust, Materials.Iron, 2)
        .output(OrePrefix.dust, Materials.Cobalt, 2)
        .output(OrePrefix.dust, Materials.Nickel, 2)
        .output(OrePrefix.dust, Materials.Copper, 2)
        .EUt(32).duration(300)
        .buildAndRegister()

// nonmetal waste
RecipeMaps.CENTRIFUGE_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.NonmetalWaste, 9)
        .chancedOutput(OrePrefix.dust, Materials.Selenium, 2, 6250, 800)
        .chancedOutput(OrePrefix.dust, Materials.Iodine, 2, 6250, 1000)
        .fluidOutputs(Materials.Krypton.getFluid(2250), Materials.Xenon.getFluid(4500), Materials.Radon.getFluid(9000))
        .EUt(32).duration(300)
        .buildAndRegister()

// metaloid waste
GCYLRecipeMaps.CHEMICAL_DEHYDRATOR_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.MetaloidWaste, 9)
        .chancedOutput(OrePrefix.dust, Materials.Germanium, 2, 6250, 500)
        .chancedOutput(OrePrefix.dust, Materials.Arsenic, 2, 6250, 600)
        .chancedOutput(OrePrefix.dust, Materials.Antimony, 2, 6250, 700)
        .chancedOutput(OrePrefix.dust, Materials.Tellurium, 2, 6250, 800)
        .chancedOutput(OrePrefix.dust, Materials.Astatine, 2, 6250, 900)
        .chancedOutput(OrePrefix.dust, Materials.Actinium, 2, 6250, 1000)
        .EUt(32).duration(300)
        .buildAndRegister()

// uranium waste
RecipeMaps.ELECTROLYZER_RECIPES.recipeBuilder()
        .notConsumable(SCMetaItems.ANODE_BASKET)
        .notConsumable(Materials.Salt.getFluid(1000))
        .input(new GTRecipeItemInput(OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, Materials.Uranium238),
                OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, Materials.Uranium235)))
        .output(OrePrefix.gem, TJMaterials.UraniumWaste)
        .EUt(1920).duration(800)
        .buildAndRegister()

// neptunium dust
RecipeMaps.THERMAL_CENTRIFUGE_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.UraniumWaste)
        .output(OrePrefix.dust, Materials.Neptunium)
        .chancedOutput(OrePrefix.gem, TJMaterials.NuclearWaste, 760, 0)
        .chancedOutput(OrePrefix.dust, Materials.Uranium238, 3000, 0)
        .EUt(60).duration(300)
        .buildAndRegister()

// neptunium waste
RecipeMaps.ELECTROLYZER_RECIPES.recipeBuilder()
        .notConsumable(SCMetaItems.ANODE_BASKET)
        .notConsumable(Materials.Salt.getFluid(1000))
        .input(new GTRecipeItemInput(OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, SCMaterials.Neptunium237),
                OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, SCMaterials.Neptunium239)))
        .output(OrePrefix.gem, TJMaterials.NeptuniumWaste)
        .EUt(1920).duration(800)
        .buildAndRegister()

// plutonium dust
RecipeMaps.THERMAL_CENTRIFUGE_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.NeptuniumWaste)
        .output(OrePrefix.dust, Materials.Plutonium)
        .chancedOutput(OrePrefix.gem, TJMaterials.NuclearWaste, 1000, 0)
        .chancedOutput(OrePrefix.dust, Materials.Neptunium, 3000, 0)
        .EUt(120).duration(300)
        .buildAndRegister()

// plutonium waste
RecipeMaps.ELECTROLYZER_RECIPES.recipeBuilder()
        .notConsumable(SCMetaItems.ANODE_BASKET)
        .notConsumable(Materials.Salt.getFluid(1000))
        .input(new GTRecipeItemInput(OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, Materials.Plutonium239),
                OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, Materials.Plutonium241)))
        .output(OrePrefix.gem, TJMaterials.PlutoniumWaste)
        .EUt(1920).duration(800)
        .buildAndRegister()

// americium dust
RecipeMaps.THERMAL_CENTRIFUGE_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.PlutoniumWaste)
        .output(OrePrefix.dust, Materials.Americium)
        .chancedOutput(OrePrefix.gem, TJMaterials.NuclearWaste, 1330, 0)
        .chancedOutput(OrePrefix.dust, Materials.Plutonium, 3000, 0)
        .EUt(240).duration(300)
        .buildAndRegister()

// americium waste
RecipeMaps.ELECTROLYZER_RECIPES.recipeBuilder()
        .notConsumable(SCMetaItems.ANODE_BASKET)
        .notConsumable(Materials.Salt.getFluid(1000))
        .input(new GTRecipeItemInput(OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, GCYLNuclearMaterials.Americium243),
                OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, TJMaterials.Americium245)))
        .output(OrePrefix.gem, TJMaterials.AmericiumWaste)
        .EUt(1920).duration(800)
        .buildAndRegister()

// curium dust
RecipeMaps.THERMAL_CENTRIFUGE_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.AmericiumWaste)
        .output(OrePrefix.dust, Materials.Curium)
        .chancedOutput(OrePrefix.gem, TJMaterials.NuclearWaste, 1780, 0)
        .chancedOutput(OrePrefix.dust, Materials.Americium, 3000, 0)
        .EUt(480).duration(300)
        .buildAndRegister()

// curium waste
RecipeMaps.ELECTROLYZER_RECIPES.recipeBuilder()
        .notConsumable(SCMetaItems.ANODE_BASKET)
        .notConsumable(Materials.Salt.getFluid(1000))
        .input(new GTRecipeItemInput(OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, GCYLNuclearMaterials.Curium250)))
        .output(OrePrefix.gem, TJMaterials.CuriumWaste)
        .EUt(1920).duration(800)
        .buildAndRegister()

// berkelium dust
RecipeMaps.THERMAL_CENTRIFUGE_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.CuriumWaste)
        .output(OrePrefix.dust, Materials.Berkelium)
        .chancedOutput(OrePrefix.gem, TJMaterials.NuclearWaste, 2370, 0)
        .chancedOutput(OrePrefix.dust, Materials.Curium, 3000, 0)
        .EUt(960).duration(300)
        .buildAndRegister()

// berkelium waste
RecipeMaps.ELECTROLYZER_RECIPES.recipeBuilder()
        .notConsumable(SCMetaItems.ANODE_BASKET)
        .notConsumable(Materials.Salt.getFluid(1000))
        .input(new GTRecipeItemInput(OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, TJMaterials.Berkelium249),
                OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, TJMaterials.Berkelium251)))
        .output(OrePrefix.gem, TJMaterials.BerkeliumWaste)
        .EUt(1920).duration(800)
        .buildAndRegister()

// californium dust
RecipeMaps.THERMAL_CENTRIFUGE_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.BerkeliumWaste)
        .output(OrePrefix.dust, Materials.Californium)
        .chancedOutput(OrePrefix.gem, TJMaterials.NuclearWaste, 3160, 0)
        .chancedOutput(OrePrefix.dust, Materials.Berkelium, 3000, 0)
        .EUt(1920).duration(300)
        .buildAndRegister()

// californium waste
RecipeMaps.ELECTROLYZER_RECIPES.recipeBuilder()
        .notConsumable(SCMetaItems.ANODE_BASKET)
        .notConsumable(Materials.Salt.getFluid(1000))
        .input(new GTRecipeItemInput(OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, GCYLNuclearMaterials.Californium252),
                OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, GCYLNuclearMaterials.Californium253),
                OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, TJMaterials.Californium256)))
        .output(OrePrefix.gem, TJMaterials.CaliforniumWaste)
        .EUt(1920).duration(800)
        .buildAndRegister()

// einsteinium dust
RecipeMaps.THERMAL_CENTRIFUGE_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.CaliforniumWaste)
        .output(OrePrefix.dust, Materials.Einsteinium)
        .chancedOutput(OrePrefix.gem, TJMaterials.NuclearWaste, 4220, 0)
        .chancedOutput(OrePrefix.dust, Materials.Californium, 3000, 0)
        .EUt(3840).duration(300)
        .buildAndRegister()

// einsteinium waste
RecipeMaps.ELECTROLYZER_RECIPES.recipeBuilder()
        .notConsumable(SCMetaItems.ANODE_BASKET)
        .notConsumable(Materials.Salt.getFluid(1000))
        .input(new GTRecipeItemInput(OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, TJMaterials.Einsteinium255),
                OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, TJMaterials.Einsteinium257)))
        .output(OrePrefix.gem, TJMaterials.EinsteiniumWaste)
        .EUt(1920).duration(800)
        .buildAndRegister()

// fermium dust
RecipeMaps.THERMAL_CENTRIFUGE_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.EinsteiniumWaste)
        .output(OrePrefix.dust, Materials.Fermium)
        .chancedOutput(OrePrefix.gem, TJMaterials.NuclearWaste, 5630, 0)
        .chancedOutput(OrePrefix.dust, Materials.Einsteinium, 3000, 0)
        .EUt(7680).duration(300)
        .buildAndRegister()

// fermium waste
RecipeMaps.ELECTROLYZER_RECIPES.recipeBuilder()
        .notConsumable(SCMetaItems.ANODE_BASKET)
        .notConsumable(Materials.Salt.getFluid(1000))
        .input(new GTRecipeItemInput(OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, TJMaterials.Fermium262)))
        .output(OrePrefix.gem, TJMaterials.FermiumWaste)
        .EUt(1920).duration(800)
        .buildAndRegister()

// mendelevium dust
RecipeMaps.THERMAL_CENTRIFUGE_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.FermiumWaste)
        .output(OrePrefix.dust, Materials.Mendelevium)
        .chancedOutput(OrePrefix.gem, TJMaterials.NuclearWaste, 7500, 0)
        .chancedOutput(OrePrefix.dust, Materials.Fermium, 3000, 0)
        .EUt(15360).duration(300)
        .buildAndRegister()
RecipeMaps.THERMAL_CENTRIFUGE_RECIPES.recipeBuilder()
        .input(OrePrefix.gem, TJMaterials.MendeleviumWaste)
        .output(OrePrefix.dust, Materials.Mendelevium)
        .output(OrePrefix.gem, TJMaterials.NuclearWaste)
        .EUt(30720).duration(300)
        .buildAndRegister()

// mendelevium waste ???

// platinum rod
mods.gregtech.canner.removeByInput(480, [metaitem('fuelRodDepletedNaquadah')], null)
RecipeMaps.THERMAL_CENTRIFUGE_RECIPES.recipeBuilder()
        .input(SCOrePrefix.fuelRodDepleted, Materials.Naquadah)
        .output(SCMetaItems.FUEL_CLADDING)
        .output(SCOrePrefix.fuelPelletDepleted, Materials.Naquadah, 16)
        .output(OrePrefix.stick, Materials.Platinum, 32)
        .EUt(7680).duration(600)
        .buildAndRegister()

// naquadah rod
mods.gregtech.canner.removeByInput(480, [metaitem('fuelRodDepletedNaquadahEnriched')], null)
RecipeMaps.THERMAL_CENTRIFUGE_RECIPES.recipeBuilder()
        .input(SCOrePrefix.fuelRodDepleted, Materials.NaquadahEnriched)
        .output(SCOrePrefix.fuelRod, Materials.Naquadah)
        .output(SCOrePrefix.fuelPelletDepleted, Materials.NaquadahEnriched, 16)
        .EUt(7680).duration(600)
        .buildAndRegister()

// enriched naquadah rod
mods.gregtech.canner.removeByInput(480, [metaitem('fuelRodDepletedNaquadria')], null)
RecipeMaps.THERMAL_CENTRIFUGE_RECIPES.recipeBuilder()
        .input(SCOrePrefix.fuelRodDepleted, Materials.Naquadria)
        .output(SCOrePrefix.fuelRod, Materials.NaquadahEnriched)
        .output(SCOrePrefix.fuelPelletDepleted, Materials.Naquadria, 16)
        .EUt(7680).duration(600)
        .buildAndRegister()

// naquadah nuclear waste
RecipeMaps.ELECTROLYZER_RECIPES.recipeBuilder()
        .notConsumable(SCMetaItems.ANODE_BASKET)
        .notConsumable(Materials.Salt.getFluid(1000))
        .input(new GTRecipeItemInput(OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, Materials.Naquadah),
                OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, Materials.NaquadahEnriched),
                OreDictUnifier.get(SCOrePrefix.fuelPelletDepleted, Materials.Naquadria)))
        .output(OrePrefix.gem, TJMaterials.NuclearWaste, 16)
        .EUt(1920).duration(800)
        .buildAndRegister()

// Uranium Dust * 1
mods.gregtech.electrolyzer.removeByInput(120, null, [fluid('uranium_hexafluoride') * 1000])
// Low Enriched Uranium Hexafluoride * 100
mods.gregtech.centrifuge.removeByInput(480, null, [fluid('uranium_hexafluoride') * 1000])
