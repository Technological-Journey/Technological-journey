package postInit.lines

import classes.TJMaterials
import com.fulltrix.gcyl.api.recipes.GCYLRecipeMaps
import com.fulltrix.gcyl.materials.GCYLNuclearMaterials
import gregtech.api.recipes.RecipeMaps
import gregtech.api.recipes.ingredients.GTRecipeItemInput
import gregtech.api.unification.OreDictUnifier
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import supercritical.api.unification.material.SCMaterials
import supercritical.api.unification.ore.SCOrePrefix
import supercritical.common.item.SCMetaItems

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