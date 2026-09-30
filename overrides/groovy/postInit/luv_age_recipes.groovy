import classes.TJMaterials
import com.fulltrix.gcyl.materials.GCYLMaterials
import gregtech.api.recipes.RecipeMaps
import gregtech.api.unification.OreDictUnifier
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import gregtech.common.items.MetaItems

// celestial manipulator
crafting.shapedBuilder()
        .row('RCR')
        .row('PFP')
        .row('PGP')
        .key('R', OreDictUnifier.get(OrePrefix.block, Materials.Redstone))
        .key('C', item('minecraft:clock'))
        .key('P', OreDictUnifier.get(OrePrefix.plate, TJMaterials.StarMetalAlloy))
        .key('F', MetaItems.FIELD_GENERATOR_LuV.getStackForm())
        .key('G', OreDictUnifier.get(OrePrefix.gear, Materials.NeodymiumMagnetic))
        .output(item('draconicevolution:celestial_manipulator'))
        .replace()
        .register()
// stardust
RecipeMaps.CHEMICAL_BATH_RECIPES.recipeBuilder()
        .input(OrePrefix.dust, GCYLMaterials.BrightSteel, 2)
        .fluidInputs(fluid('astralsorcery.liquidstarlight') * 1000)
        .outputs(item('astralsorcery:itemcraftingcomponent', 2) * 2)
        .EUt(131072).duration(100)
        .buildAndRegister()