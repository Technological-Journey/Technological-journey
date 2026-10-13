package postInit.lines

import classes.TJMaterials
import gregtech.api.recipes.RecipeMaps
import gregtech.api.recipes.ingredients.GTRecipeItemInput
import gregtech.api.unification.OreDictUnifier
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix

// TJ replaces ender portal with one from Random Things

// end stone
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .input(new GTRecipeItemInput(item('snad:snad') * 8, item('snad:snad', 1) * 8))
        .input(OrePrefix.block, Materials.Obsidian, 2)
        .fluidInputs(Materials.Lava.getFluid(10000))
        .outputs(item('minecraft:end_stone'))
        .EUt(2040).duration(600)
        .buildAndRegister()
RecipeMaps.CHEMICAL_RECIPES.recipeBuilder()
        .input(new GTRecipeItemInput(item('snad:snad') * 64, item('snad:snad', 1) * 64))
        .input(OrePrefix.block, Materials.Obsidian, 2)
        .fluidInputs(TJMaterials.PahoehoeLava.getFluid(1000))
        .outputs(item('minecraft:end_stone') * 2)
        .EUt(30252).duration(300)
        .buildAndRegister()
// end rod
crafting.shapedBuilder()
        .row(' B ')
        .row(' E ')
        .row('ETE')
        .key('B', OreDictUnifier.get(OrePrefix.stick, Materials.Blaze))
        .key('E', ore('endstone'))
        .key('T', OreDictUnifier.get(OrePrefix.ingot, Materials.Titanium))
        .output(item('minecraft:end_rod'))
        .register()
// evil tear
crafting.shapedBuilder()
        .row('PSP')
        .row('SHS')
        .row('PSP')
        .key('P', item('randomthings:stableenderpearl'))
        .key('S', OreDictUnifier.get(OrePrefix.foil, Materials.StainlessSteel))
        .key('H', ore('itemSkull'))
        .output(item('randomthings:ingredient', 1))
        .register()