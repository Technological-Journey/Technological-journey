package postInit.multiblock_recipes

import classes.MetaTileEntityVialProcessor
import classes.TJMetaTileEntities
import com.fulltrix.gcyl.materials.GCYLMaterials
import gregtech.api.unification.OreDictUnifier
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import gregtech.common.metatileentities.MetaTileEntities

def vialProcessorRecipes = MetaTileEntityVialProcessor.VIAL_PROCESSOR_RECIPES
def plates = [Materials.Steel, Materials.Aluminium, Materials.StainlessSteel, Materials.Titanium, Materials.TungstenSteel, Materials.RhodiumPlatedPalladium,
              Materials.Duranium, Materials.Tritanium, Materials.Seaborgium, Materials.Bohrium, GCYLMaterials.Quantum, GCYLMaterials.BlackTitanium,
              GCYLMaterials.HeavyQuarkDegenerateMatter, Materials.Neutronium]

for (i in 0..<TJMetaTileEntities.VIAL_PROCESSORS.length) {
    // vial processor
    crafting.shapedBuilder()
            .row('VSV')
            .row('SHS')
            .row('PPP')
            .key('V', item('enderio:item_soul_vial'))
            .key('S', item('minecraft:diamond_sword'))
            .key('H', MetaTileEntities.HULL[i + 1].getStackForm())
            .key('P', OreDictUnifier.get(OrePrefix.plateDouble, plates.get(i)))
            .output(TJMetaTileEntities.VIAL_PROCESSORS[i].getStackForm())
            .register()
}
// EU/t and duration already defined in recipe map builder
// enderman head, ender pearl
vialProcessorRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial', 1).withNbt(['entityId': 'minecraft:enderman']))
        .outputs(item('enderio:block_enderman_skull') * 10, item('minecraft:ender_pearl') * 10, item('enderio:item_soul_vial'),
                item('actuallyadditions:item_solidified_experience') * 6)
        .buildAndRegister()
// blaze rod
vialProcessorRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial', 1).withNbt(['entityId': 'minecraft:blaze']))
        .outputs(item('minecraft:blaze_rod') * 10, item('enderio:item_soul_vial'), item('actuallyadditions:item_solidified_experience') * 4)
        .buildAndRegister()
// zombie head, rotten flesh
vialProcessorRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial', 1).withNbt(['entityId': 'minecraft:zombie']))
        .outputs(item('minecraft:skull', 2) * 9, item('enderio:item_soul_vial'), item('minecraft:rotten_flesh') * 9,
                item('actuallyadditions:item_solidified_experience') * 2)
        .buildAndRegister()
// bone
vialProcessorRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial', 1).withNbt(['entityId': 'minecraft:skeleton']))
        .outputs(item('minecraft:bone') * 8, item('enderio:item_soul_vial'), item('actuallyadditions:item_solidified_experience') * 2)
        .buildAndRegister()
// raw porkchop
vialProcessorRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial', 1).withNbt(['entityId': 'minecraft:pig']))
        .outputs(item('minecraft:porkchop') * 64, item('enderio:item_soul_vial'), item('actuallyadditions:item_solidified_experience'))
        .buildAndRegister()
// egg, feather
vialProcessorRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial', 1).withNbt(['entityId': 'minecraft:chicken']))
        .outputs(item('minecraft:egg') * 64, item('minecraft:feather') * 26, item('enderio:item_soul_vial'),
                item('actuallyadditions:item_solidified_experience'))
        .buildAndRegister()
