package postInit.multiblock_recipes

import classes.MetaTileEntityLargeVialProcessor
import classes.TJMetaTileEntities
import com.fulltrix.gcyl.materials.GCYLNuclearMaterials
import gregtech.api.GTValues
import gregtech.api.recipes.RecipeMaps
import gregtech.api.unification.material.MarkerMaterials
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import gregtech.common.items.MetaItems
import gregtech.common.metatileentities.MetaTileEntities

def largeVialRecipes = MetaTileEntityLargeVialProcessor.LARGE_VIAL_PROCESSOR_RECIPES
def solidifiedExperience = item('actuallyadditions:item_solidified_experience') * 64
def emptyVials = item('enderio:item_soul_vial') * 16

// large vial processor
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .input(TJMetaTileEntities.VIAL_PROCESSORS[0], 16)
        .input(OrePrefix.plate, GCYLNuclearMaterials.Curium247, 12)
        .input(OrePrefix.cableGtQuadruple, Materials.NiobiumTitanium, 8)
        .input(OrePrefix.circuit, MarkerMaterials.Tier.ZPM, 2)
        .input(MetaItems.FIELD_GENERATOR_LuV, 2)
        .input(MetaItems.CONVEYOR_MODULE_LuV, 2)
        .input(MetaItems.ELECTRIC_PISTON_LUV, 2)
        .input(MetaItems.SENSOR_LuV, 2)
        .input(MetaTileEntities.HULL[GTValues.LuV])
        .inputs(item('technological_journey:soulcasing') * 4, item('enderio:item_capacitor_stellar') * 2)
        .output(TJMetaTileEntities.LARGE_VIAL_PROCESSOR)
        .fluidInputs(Materials.SolderingAlloy.getFluid(576))
        .fluidInputs(Materials.HSSG.getFluid(2304))
        //.fluidInputs(Materials.Soularium.getFluid(2304)) add soularium fluid
        .EUt(30000).duration(800)
        .buildAndRegister()
// EU/t and duration already defined in recipe map builder
// enderman head, ender pearl
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:enderman']) * 16)
        .outputs(emptyVials, item('enderio:block_enderman_skull') * 64, item('enderio:block_enderman_skull') * 64,
                item('enderio:block_enderman_skull') * 64, item('minecraft:ender_pearl') * 64, item('minecraft:ender_pearl') * 64,
                item('minecraft:ender_pearl') * 64, solidifiedExperience, solidifiedExperience)
        .buildAndRegister()
// zombie heat, rotten flesh, potato, carrot, melon
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:zombie']) * 16)
        .outputs(emptyVials, item('minecraft:skull', 2) * 64, item('minecraft:skull', 2) * 64, item('minecraft:skull', 2) * 32,
                item('minecraft:rotten_flesh') * 64, item('minecraft:rotten_flesh') * 64, item('minecraft:rotten_flesh') * 32, item('minecraft:skull', 2) * 24,
                item('minecraft:potato') * 4, item('minecraft:carrot') * 4, item('minecraft:melon') * 4, solidifiedExperience, solidifiedExperience)
        .buildAndRegister()
// bone, skeleton skull
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:skeleton']) * 16)
        .outputs(emptyVials, item('minecraft:bone') * 64, item('minecraft:bone') * 64, item('minecraft:skull') * 24, solidifiedExperience,
                solidifiedExperience)
        .buildAndRegister()
// blaze rod, blaze powder
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:blaze']) * 16)
        .outputs(emptyVials, item('minecraft:blaze_rod') * 64, item('minecraft:blaze_rod') * 64, item('minecraft:blaze_rod') * 32,
                item('minecraft:blaze_powder') * 64, solidifiedExperience, solidifiedExperience)
        .buildAndRegister()
// ghast tear, salt dust
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:ghast']) * 16)
        .output(OrePrefix.dust, Materials.Salt, 48)
        .outputs(emptyVials, item('minecraft:ghast_tear') * 64, item('minecraft:ghast_tear') * 48, solidifiedExperience,
                solidifiedExperience)
        .buildAndRegister()
// string, cobweb, spider eye
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:spider']) * 16)
        .outputs(emptyVials, item('minecraft:string') * 64, item('minecraft:string') * 64, item('minecraft:string') * 32,
                item('minecraft:web') * 12, item('minecraft:spider_eye') * 16, solidifiedExperience, solidifiedExperience)
        .buildAndRegister()
// slimeball, slime block
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:slime']) * 16)
        .outputs(emptyVials, item('minecraft:slime_ball') * 64, item('minecraft:slime_ball') * 64, item('minecraft:slime') * 4,
                solidifiedExperience, solidifiedExperience)
        .buildAndRegister()
// gunpowder, sulfur dust, saltpeter dust, coal dust, creeper head
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:creeper']) * 16)
        .output(OrePrefix.dust, Materials.Gunpowder, 64)
        .output(OrePrefix.dust, Materials.Gunpowder, 48)
        .output(OrePrefix.dust, Materials.Sulfur, 32)
        .output(OrePrefix.dust, Materials.Saltpeter, 16)
        .output(OrePrefix.dust, Materials.Coal, 16)
        .outputs(emptyVials, item('minecraft:skull', 4) * 24, solidifiedExperience, solidifiedExperience)
        .buildAndRegister()
// magma cream, blaze powder
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:magma_cube']) * 16)
        .outputs(emptyVials, item('minecraft:magma_cream') * 64, item('minecraft:magma_cream') * 16, item('minecraft:blaze_powder') * 32, solidifiedExperience,
                solidifiedExperience)
        .buildAndRegister()
// redstone, glowstone dust, gunpowder, sugar, glass bottle, water bottle, stick
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:witch']) * 16)
        .output(OrePrefix.dust, Materials.Redstone, 64)
        .output(OrePrefix.dust, Materials.Redstone, 16)
        .output(OrePrefix.dust, Materials.Glowstone, 48)
        .output(OrePrefix.dust, Materials.Sugar, 64)
        .output(OrePrefix.dust, Materials.Sugar, 32)
        .output(OrePrefix.stick, Materials.Wood, 32)
        .outputs(emptyVials, item('minecraft:glass_bottle') * 12, item('minecraft:potion').withNbt(['Potion': 'minecraft:water']) * 4, solidifiedExperience,
                solidifiedExperience)
        .buildAndRegister()
// bone, wither skeleton skull, coal dust
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:wither_skeleton']) * 16)
        .output(OrePrefix.dust, Materials.Coal, 32)
        .outputs(emptyVials, item('minecraft:bone') * 48, item('minecraft:skull', 1) * 12, solidifiedExperience, solidifiedExperience)
        .buildAndRegister()
// snowball, snow, ice, pumpkin
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:snowman']) * 16)
        .outputs(emptyVials, item('minecraft:snowball') * 16, item('minecraft:snowball') * 16, item('minecraft:snowball') * 16, item('minecraft:snowball') * 16,
                item('minecraft:snow') * 4, item('minecraft:ice') * 8, item('minecraft:pumpkin') * 4, solidifiedExperience, solidifiedExperience)
        .buildAndRegister()
// white wool, string, raw mutton
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:sheep']) * 16)
        .outputs(emptyVials, item('minecraft:wool') * 64, item('minecraft:wool') * 64, item('minecraft:string') * 32, item('minecraft:mutton') * 64,
                item('minecraft:mutton') * 64, solidifiedExperience, solidifiedExperience)
        .buildAndRegister()
// raw porkchop
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:pig']) * 16)
        .outputs(emptyVials, item('minecraft:porkchop') * 512, item('minecraft:porkchop') * 512, solidifiedExperience, solidifiedExperience)
        .buildAndRegister()
// egg, feather
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:chicken']) * 16)
        .outputs(emptyVials, item('minecraft:egg') * 960, item('minecraft:feather') * 400, solidifiedExperience, solidifiedExperience)
        .buildAndRegister()
// leather, raw beef
largeVialRecipes.recipeBuilder()
        .inputs(item('enderio:item_soul_vial').withNbt(['entityId': 'minecraft:cow']) * 16)
        .outputs(emptyVials, item('minecraft:leather') * 64, item('minecraft:leather') * 64, item('minecraft:beef') * 512, solidifiedExperience,
                solidifiedExperience)
        .fluidOutputs(Materials.Milk.getFluid(16000))
        .buildAndRegister()