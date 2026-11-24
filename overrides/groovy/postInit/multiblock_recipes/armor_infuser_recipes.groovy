package postInit.multiblock_recipes

import classes.MetaTileEntityArmorInfuser
import classes.TJMetaTileEntities
import com.fulltrix.gcyl.materials.GCYLMaterials
import com.fulltrix.gcyl.materials.GCYLNuclearMaterials
import gregtech.api.GTValues
import gregtech.api.recipes.RecipeMaps
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import gregtech.common.items.MetaItems
import gregtech.common.metatileentities.MetaTileEntities

def armorInfuserRecipes = MetaTileEntityArmorInfuser.ARMOR_INFUSER_RECIPES

// armor infuser
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .input(OrePrefix.screw, GCYLMaterials.Staballoy, 18)
        .input(OrePrefix.plate, Materials.Rutherfordium, 10)
        .input(OrePrefix.cableGtSingle, Materials.NaquadahAlloy, 10)
        .input(OrePrefix.plate, GCYLMaterials.Draconium, 5)
        .input(MetaItems.ROBOT_ARM_LuV, 2)
        .input(MetaTileEntities.FUSION_REACTOR[0])
        .output(TJMetaTileEntities.ARMOR_INFUSER)
        .fluidInputs(Materials.Dubnium.getFluid(1296))
        .fluidInputs(GCYLNuclearMaterials.Californium252.getFluid(2592)) // placeholder for missing californium fluid
        .EUt(GTValues.VA[GTValues.UEV]).duration(600)
        .buildAndRegister()
// draconic pickaxe
armorInfuserRecipes.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 2, item('draconicevolution:draconic_energy_core') * 2, item('draconicevolution:wyvern_pick'))
        .outputs(item('draconicevolution:draconic_pick'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(3000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(3000))
        .EUt(GTValues.V[GTValues.UEV]).duration(150)
        .buildAndRegister()
// draconic shovel
armorInfuserRecipes.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 2, item('draconicevolution:draconic_energy_core') * 2, item('draconicevolution:wyvern_shovel'))
        .outputs(item('draconicevolution:draconic_shovel'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(3000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(3000))
        .EUt(GTValues.V[GTValues.UEV]).duration(150)
        .buildAndRegister()
// draconic axe
armorInfuserRecipes.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 2, item('draconicevolution:draconic_energy_core') * 2, item('draconicevolution:wyvern_axe'))
        .outputs(item('draconicevolution:draconic_axe'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(3000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(3000))
        .EUt(GTValues.V[GTValues.UEV]).duration(150)
        .buildAndRegister()
// draconic hoe
armorInfuserRecipes.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 2, item('draconicevolution:draconic_energy_core') * 2, item('minecraft:diamond_hoe'))
        .outputs(item('draconicevolution:draconic_hoe'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(3000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(3000))
        .EUt(GTValues.V[GTValues.UEV]).duration(150)
        .buildAndRegister()
// draconic flux capacitor
armorInfuserRecipes.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 4, item('draconicevolution:draconic_energy_core') * 4, item('draconicevolution:draconium_capacitor'))
        .outputs(item('draconicevolution:draconium_capacitor', 1))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(3000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(3000))
        .EUt(GTValues.V[GTValues.UEV]).duration(150)
        .buildAndRegister()
// draconic staff of power
armorInfuserRecipes.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 2, item('draconicevolution:draconic_energy_core') * 2, item('draconicevolution:draconic_shovel'),
                item('draconicevolution:draconic_sword'), item('draconicevolution:draconic_pick'))
        .outputs(item('draconicevolution:draconic_staff_of_power'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(3000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(3000))
        .EUt(GTValues.V[GTValues.UEV]).duration(150)
        .buildAndRegister()
// chaotic staff of power
armorInfuserRecipes.recipeBuilder()
        .inputs(item('technological_journey:refinedchaoscrystal') * 4, item('draconicevolution:chaotic_core') * 2,
                item('draconicadditions:chaotic_energy_core') * 2, item('draconicevolution:draconic_staff_of_power'))
        .outputs(item('draconicadditions:chaotic_staff_of_power'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(4000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(4000))
        .EUt(GTValues.V[GTValues.UIV]).duration(150)
        .buildAndRegister()
// chaotic bow
armorInfuserRecipes.recipeBuilder()
        .inputs(item('technological_journey:refinedchaoscrystal') * 4, item('draconicevolution:chaotic_core') * 2,
                item('draconicadditions:chaotic_energy_core') * 2, item('draconicevolution:draconic_bow'))
        .outputs(item('draconicadditions:chaotic_bow'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(4000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(4000))
        .EUt(GTValues.V[GTValues.UIV]).duration(150)
        .buildAndRegister()
// draconic sword
armorInfuserRecipes.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 2, item('draconicevolution:draconic_energy_core') * 2, item('draconicevolution:wyvern_sword'))
        .outputs(item('draconicevolution:draconic_sword'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(3000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(3000))
        .EUt(GTValues.V[GTValues.UEV]).duration(150)
        .buildAndRegister()
// draconic bow
armorInfuserRecipes.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 2, item('draconicevolution:draconic_energy_core') * 2, item('draconicevolution:wyvern_bow'))
        .outputs(item('draconicevolution:draconic_bow'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(3000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(3000))
        .EUt(GTValues.V[GTValues.UEV]).duration(150)
        .buildAndRegister()
// draconic helm
armorInfuserRecipes.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 2, item('draconicevolution:draconic_energy_core') * 2, item('draconicevolution:wyvern_helm'))
        .outputs(item('draconicevolution:draconic_legs'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(3000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(3000))
        .EUt(GTValues.V[GTValues.UEV]).duration(150)
        .buildAndRegister()
// draconic chestplate
armorInfuserRecipes.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 2, item('draconicevolution:draconic_energy_core') * 2, item('draconicevolution:wyvern_chest'))
        .outputs(item('draconicevolution:draconic_chest'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(3000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(3000))
        .EUt(GTValues.V[GTValues.UEV]).duration(150)
        .buildAndRegister()
// draconic leggings
armorInfuserRecipes.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 2, item('draconicevolution:draconic_energy_core') * 2, item('draconicevolution:wyvern_legs'))
        .outputs(item('draconicevolution:draconic_legs'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(3000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(3000))
        .EUt(GTValues.V[GTValues.UEV]).duration(150)
        .buildAndRegister()
// draconic boots
armorInfuserRecipes.recipeBuilder()
        .inputs(item('draconicevolution:awakened_core') * 2, item('draconicevolution:draconic_energy_core') * 2, item('draconicevolution:wyvern_boots'))
        .outputs(item('draconicevolution:draconic_boots'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(3000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(3000))
        .EUt(GTValues.V[GTValues.UEV]).duration(150)
        .buildAndRegister()
// chaotic helmet
armorInfuserRecipes.recipeBuilder()
        .inputs(item('technological_journey:refinedchaoscrystal') * 4, item('draconicevolution:chaotic_core') * 2,
                item('draconicadditions:chaotic_energy_core') * 2, item('draconicevolution:draconic_helm'))
        .outputs(item('draconicadditions:chaotic_helm'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(4000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(4000))
        .EUt(GTValues.V[GTValues.UIV]).duration(150)
        .buildAndRegister()
// chaotic chestplate
armorInfuserRecipes.recipeBuilder()
        .inputs(item('technological_journey:refinedchaoscrystal') * 4, item('draconicevolution:chaotic_core') * 2,
                item('draconicadditions:chaotic_energy_core') * 2, item('draconicevolution:draconic_chest'))
        .outputs(item('draconicadditions:chaotic_chest'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(4000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(4000))
        .EUt(GTValues.V[GTValues.UIV]).duration(150)
        .buildAndRegister()
// chaotic leggings
armorInfuserRecipes.recipeBuilder()
        .inputs(item('technological_journey:refinedchaoscrystal') * 4, item('draconicevolution:chaotic_core') * 2,
                item('draconicadditions:chaotic_energy_core') * 2, item('draconicevolution:draconic_legs'))
        .outputs(item('draconicadditions:chaotic_legs'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(4000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(4000))
        .EUt(GTValues.V[GTValues.UIV]).duration(150)
        .buildAndRegister()
// chaotic boots
armorInfuserRecipes.recipeBuilder()
        .inputs(item('technological_journey:refinedchaoscrystal') * 4, item('draconicevolution:chaotic_core') * 2,
                item('draconicadditions:chaotic_energy_core') * 2, item('draconicevolution:draconic_boots'))
        .outputs(item('draconicadditions:chaotic_boots'))
        .fluidInputs(GCYLMaterials.SupercooledCryotheum.getFluid(4000))
        .fluidOutputs(GCYLMaterials.Cryotheum.getFluid(4000))
        .EUt(GTValues.V[GTValues.UIV]).duration(150)
        .buildAndRegister()