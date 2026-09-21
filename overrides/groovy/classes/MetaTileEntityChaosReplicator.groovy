import com.fulltrix.gcyl.materials.GCYLMaterials
import gregtech.api.GTValues
import gregtech.api.gui.GuiTextures
import gregtech.api.metatileentity.MetaTileEntity
import gregtech.api.metatileentity.interfaces.IGregTechTileEntity
import gregtech.api.metatileentity.multiblock.IMultiblockPart
import gregtech.api.metatileentity.multiblock.RecipeMapMultiblockController
import gregtech.api.pattern.BlockPattern
import gregtech.api.pattern.FactoryBlockPattern
import gregtech.api.pattern.MultiblockShapeInfo
import gregtech.api.recipes.RecipeMap
import gregtech.api.recipes.RecipeMapBuilder
import gregtech.api.recipes.builders.SimpleRecipeBuilder
import gregtech.api.util.RelativeDirection
import gregtech.client.renderer.ICubeRenderer
import gregtech.common.blocks.MetaBlocks
import gregtech.common.metatileentities.MetaTileEntities
import gregtech.core.sound.GTSoundEvents
import net.minecraft.util.EnumFacing
import net.minecraft.util.ResourceLocation
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly

class MetaTileEntityChaosReplicator extends RecipeMapMultiblockController {

    public static final RecipeMap<SimpleRecipeBuilder> CHAOS_REPLICATOR_RECIPES = new RecipeMapBuilder<>("chaos_replicator",
            new SimpleRecipeBuilder())
            .itemInputs(4)
            .itemOutputs(2)
            .fluidInputs(1)
            .progressBar(GuiTextures.PROGRESS_BAR_ARROW_MULTIPLE)
            .sound(GTSoundEvents.BATH)
            .build()

    MetaTileEntityChaosReplicator(ResourceLocation metaTileEntityId) {
        super(metaTileEntityId, CHAOS_REPLICATOR_RECIPES)
    }

    @Override
    MetaTileEntity createMetaTileEntity(IGregTechTileEntity iGregTechTileEntity) {
        return new MetaTileEntityChaosReplicator(this.metaTileEntityId)
    }

    @Override
    protected BlockPattern createStructurePattern() {
        return FactoryBlockPattern.start()
                .aisle("CCCCCCC", "CXXXXXC", "CGGCGGC", "CGGCGGC", "CGGCGGC", "CGGGGGC", "CGGGGGC", "CXXXXXC", "CCCCCCC")
                .aisle("CCCCCCC", "XoooooX", "GN###NG", "GN###NG", "GN#A#NG", "GN###NG", "GN###NG", "XoooooX", "CCCCCCC")
                .aisle("CCCCCCC", "XoooooX", "G#ooo#G", "G#####G", "G#####G", "G#####G", "G#ooo#G", "XoooooX", "CCCCCCC")
                .aisle("CCCCCCC", "XoooooX", "C#ooo#C", "C##o##C", "CA#e#AC", "G##o##G", "G#ooo#G", "XoooooX", "CCCCCCC")
                .aisle("CCCCCCC", "XoooooX", "G#ooo#G", "G#####G", "G#####G", "G#####G", "G#ooo#G", "XoooooX", "CCCCCCC")
                .aisle("CCCCCCC", "XoooooX", "GN###NG", "GN###NG", "GN#A#NG", "GN###NG", "GN###NG", "XoooooX", "CCCCCCC")
                .aisle("CCCCCCC", "CXXSXXC", "CGGCGGC", "CGGCGGC", "CGGCGGC", "CGGGGGC", "CGGGGGC", "CXXXXXC", "CCCCCCC")
                .where('S' as char, this.selfPredicate())
                .where('C' as char, states(blockstate('technological_journey:chaoticcasing')))
                .where('X' as char, states(blockstate('technological_journey:chaoticcasing'))
                        .or(autoAbilities(true, true, true, true, true, false, false)))
                .where('o' as char, states(blockstate('draconicevolution:infused_obsidian')))
                .where('G' as char, states(blockstate('enderio:block_fused_quartz')))
                .where('N' as char, states(MetaBlocks.FRAMES.get(GCYLMaterials.EnrichedNaquadahAlloy).getStateFromMeta(1)))
                .where('A' as char, states(blockstate('draconicevolution:draconic_block')))
                .where('e' as char, states(MetaBlocks.FRAMES.get(GCYLMaterials.Chaos).getStateFromMeta(15)))
                .where('#' as char, air())
                .build()
    }

    @Override
    List<MultiblockShapeInfo> getMatchingShapes() {
        return Collections.singletonList(MultiblockShapeInfo.builder(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
                .aisle("CCCCCCC", "CXXEXXC", "CGGCGGC", "CGGCGGC", "CGGCGGC", "CGGGGGC", "CGGGGGC", "CXXXXXC", "CCCCCCC")
                .aisle("CCCCCCC", "XoooooX", "GN###NG", "GN###NG", "GN#A#NG", "GN###NG", "GN###NG", "XoooooX", "CCCCCCC")
                .aisle("CCCCCCC", "XoooooX", "G#ooo#G", "G#####G", "G#####G", "G#####G", "G#ooo#G", "XoooooX", "CCCCCCC")
                .aisle("CCCCCCC", "XoooooX", "C#ooo#C", "C##o##C", "CA#e#AC", "G##o##G", "G#ooo#G", "XoooooX", "CCCCCCC")
                .aisle("CCCCCCC", "XoooooX", "G#ooo#G", "G#####G", "G#####G", "G#####G", "G#ooo#G", "XoooooX", "CCCCCCC")
                .aisle("CCCCCCC", "XoooooX", "GN###NG", "GN###NG", "GN#A#NG", "GN###NG", "GN###NG", "XoooooX", "CCCCCCC")
                .aisle("CCCCCCC", "CIiSOMC", "CGGCGGC", "CGGCGGC", "CGGCGGC", "CGGGGGC", "CGGGGGC", "CXXXXXC", "CCCCCCC")
                .where('S' as char, this, EnumFacing.SOUTH)
                .where('C' as char, blockstate('technological_journey:chaoticcasing'))
                .where('X' as char, blockstate('technological_journey:chaoticcasing'))
                .where('o' as char, blockstate('draconicevolution:infused_obsidian'))
                .where('G' as char, blockstate('enderio:block_fused_quartz'))
                .where('N' as char, MetaBlocks.FRAMES.get(GCYLMaterials.EnrichedNaquadahAlloy).getStateFromMeta(1))
                .where('A' as char, blockstate('draconicevolution:draconic_block'))
                .where('e' as char, MetaBlocks.FRAMES.get(GCYLMaterials.Chaos).getStateFromMeta(15))
                .where('I' as char, MetaTileEntities.ITEM_IMPORT_BUS[GTValues.UV], EnumFacing.SOUTH)
                .where('O' as char, MetaTileEntities.ITEM_EXPORT_BUS[GTValues.UV], EnumFacing.SOUTH)
                .where('i' as char, MetaTileEntities.FLUID_IMPORT_HATCH[GTValues.UV], EnumFacing.SOUTH)
                .where('E' as char, MetaTileEntities.ENERGY_INPUT_HATCH[GTValues.UV], EnumFacing.NORTH)
                .where('M' as char, MetaTileEntities.MAINTENANCE_HATCH, EnumFacing.SOUTH)
                .build())
    }

    @Override
    @SideOnly(Side.CLIENT)
    ICubeRenderer getBaseTexture(IMultiblockPart iMultiblockPart) {
        return TJTextures.CHAOS_CASING
    }
}