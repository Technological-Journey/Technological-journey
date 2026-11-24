import classes.TJMaterials
import com.fulltrix.gcyl.materials.GCYLMaterials
import gregtech.api.GTValues
import gregtech.api.recipes.RecipeMaps
import gregtech.api.unification.material.Materials
import gregtech.api.unification.ore.OrePrefix
import gregtech.common.items.MetaItems

// chaotic fusion crafting injector
RecipeMaps.ASSEMBLY_LINE_RECIPES.recipeBuilder()
        .input(OrePrefix.plateDouble, GCYLMaterials.Draconium, 10)
        .input(OrePrefix.plate, TJMaterials.StarMetalAlloy, 10)
        .input(MetaItems.NEUTRON_REFLECTOR)
        .input(MetaItems.EMITTER_UV)
        .fluidInputs(Materials.SolderingAlloy.getFluid(50))
        .outputs(item('draconicevolution:crafting_injector', 3))
        .EUt(GTValues.V[GTValues.UV]).duration(200)
        .buildAndRegister()