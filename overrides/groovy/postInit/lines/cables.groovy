package postInit.lines

import com.fulltrix.gcyl.item.GCYLCoreItems
import com.fulltrix.gcyl.materials.GCYLMaterials
import gregtech.api.GTValues
import gregtech.api.recipes.RecipeMaps
import gregtech.api.recipes.builders.SimpleRecipeBuilder
import gregtech.api.unification.OreDictUnifier
import gregtech.api.unification.material.Material
import gregtech.api.unification.material.Materials
import gregtech.api.unification.material.properties.WireProperties
import gregtech.api.unification.ore.OrePrefix
import gregtech.api.util.GTUtility
import gregtech.common.blocks.MetaBlocks
import gregtech.common.pipelike.cable.BlockCable
import net.minecraft.block.Block
import net.minecraft.item.ItemStack

def getCableQuantity = { OrePrefix orePrefix ->
    if (orePrefix === OrePrefix.cableGtDouble)
        return 2
    if (orePrefix === OrePrefix.cableGtQuadruple)
        return 4
    if (orePrefix === OrePrefix.cableGtOctal)
        return 8
    if (orePrefix === OrePrefix.cableGtHex)
        return 16
    return 1
}

def getWireOreDict = { OrePrefix orePrefix ->
    if (orePrefix === OrePrefix.cableGtDouble)
        return OrePrefix.wireGtDouble
    if (orePrefix === OrePrefix.cableGtQuadruple)
        return OrePrefix.wireGtQuadruple
    if (orePrefix === OrePrefix.cableGtOctal)
        return OrePrefix.wireGtOctal
    if (orePrefix === OrePrefix.cableGtHex)
        return OrePrefix.wireGtHex
    return OrePrefix.wireGtSingle
}

int[] maxPolyTier = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

Material[] polymers = [Materials.Rubber,
                       Materials.Rubber,
                       Materials.Polycaprolactam,
                       Materials.Polyethylene,
                       Materials.PolyvinylChloride,
                       Materials.PolyphenyleneSulfide,
                       Materials.PolyphenyleneSulfide,
                       Materials.Polybenzimidazole,
                       Materials.Polybenzimidazole,
                       GCYLMaterials.Polyetheretherketone,
                       GCYLMaterials.Polyetheretherketone,
                       GCYLMaterials.Zylon,
                       GCYLMaterials.Zylon,
                       GCYLMaterials.FullerenePolymerMatrix,
                       GCYLMaterials.FullerenePolymerMatrix]

// try to remove existing cable recipes
RecipeMaps.ASSEMBLER_RECIPES.getRecipeList().forEach(recipe -> {
    ItemStack cableOutput = recipe.getOutputs().get(0)
    Block block = Block.getBlockFromItem(cableOutput.getItem())
    if (block instanceof BlockCable) {
        WireProperties wireProperties = ((BlockCable) block).createItemProperties(cableOutput)
        if (wireProperties != null) {
            RecipeMaps.ASSEMBLER_RECIPES.removeRecipe(recipe)
        }
    }
})

// register new recipes for all cables
for (BlockCable[] blockCables : MetaBlocks.CABLES.values()) {
    for (i in 5..<blockCables.length) {
        BlockCable cable = blockCables[i]
        for (Material material : cable.getEnabledMaterials()) {
            ItemStack cableOutput = cable.getItem(material)
            WireProperties wireProperties = cable.createItemProperties(cableOutput)
            if (wireProperties != null) {
                OrePrefix orePrefix = OreDictUnifier.getPrefix(cableOutput)
                OrePrefix wireOrePrefix = getWireOreDict(orePrefix)
                int tier = wireProperties.getVoltage() == Integer.MIN_VALUE ? 14 : GTUtility.getTierByVoltage(wireProperties.getVoltage())
                for (int j = 0; j < polymers.length; j++) {
                    if (tier < maxPolyTier[j]) {
                        if (tier < GTValues.MV) {
                            List<?> ingredients = [OreDictUnifier.get(wireOrePrefix, material), ore('string')]
                            int amount = getCableQuantity(orePrefix)
                            for (k in 0..<amount) {
                                ingredients.add(OreDictUnifier.get(OrePrefix.plate, Materials.Rubber))
                            }
                            if (amount == 8) {
                                ingredients = [ingredients.get(0), ingredients.get(1), OreDictUnifier.get(OrePrefix.plateDense, Materials.Rubber)]
                            } else if (amount == 16) {
                                ItemStack denseRubber = OreDictUnifier.get(OrePrefix.plateDense, Materials.Rubber)
                                ingredients = [ingredients.get(0), ingredients.get(1), denseRubber, denseRubber]
                            }
                            crafting.shapelessBuilder()
                                    .input(ingredients)
                                    .output(cableOutput)
                                    .replace()
                                    .register()
                        }
                        boolean duplicate = j < polymers.length - 1 && polymers[j] === polymers[j + 1]
                        if (duplicate) {
                            tier++
                            j++
                        }
                        double multiplier = getCableQuantity(orePrefix) / Math.pow(2, j - tier) * 4
                        SimpleRecipeBuilder recipe1 = RecipeMaps.ASSEMBLER_RECIPES.recipeBuilder()
                                .circuitMeta(24)
                                .input(wireOrePrefix, material)
                                .input(OrePrefix.foil, polymers[j], Math.max(1, multiplier as int))
                                .outputs(cableOutput)
                                .EUt(8).duration(150)
                        SimpleRecipeBuilder recipe2 = RecipeMaps.ASSEMBLER_RECIPES.recipeBuilder()
                                .circuitMeta(24)
                                .input(wireOrePrefix, material)
                                .fluidInputs(polymers[j].getFluid(Math.max(1, 36 * multiplier as int)))
                                .outputs(cableOutput)
                                .EUt(8).duration(150)
                        if (tier > GTValues.UXV) {
                            recipe1.input(GCYLCoreItems.INSULATION_WIRE_ASSEMBLY, Math.max(1, multiplier / 2 as int))
                            recipe2.input(GCYLCoreItems.INSULATION_WIRE_ASSEMBLY, Math.max(1, multiplier / 2 as int))
                        }
                        recipe1.buildAndRegister()
                        recipe2.buildAndRegister()
                    }
                }
            }
        }
    }
}

