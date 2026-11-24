import com.fulltrix.gcyl.blocks.GCYLMetaBlocks
import com.fulltrix.gcyl.blocks.fusion.GCYLFusionCoils
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
import gregtech.client.renderer.texture.Textures
import gregtech.common.blocks.BlockFusionCasing
import gregtech.common.blocks.MetaBlocks
import gregtech.common.metatileentities.MetaTileEntities
import gregtech.core.sound.GTSoundEvents
import groovyjarjarantlr4.v4.runtime.misc.NotNull
import net.minecraft.util.EnumFacing
import net.minecraft.util.ResourceLocation
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly

class MetaTileEntityArmorInfuser extends RecipeMapMultiblockController {

    public static final RecipeMap<SimpleRecipeBuilder> ARMOR_INFUSER_RECIPES = new RecipeMapBuilder<>("armor_infuser", new SimpleRecipeBuilder())
            .itemInputs(12)
            .itemOutputs(1)
            .fluidInputs(1)
            .fluidOutputs(1)
            .progressBar(GuiTextures.PROGRESS_BAR_FUSION)
            .sound(GTSoundEvents.ARC)
            .build()

    MetaTileEntityArmorInfuser(ResourceLocation metaTileEntityId) {
        super(metaTileEntityId, ARMOR_INFUSER_RECIPES)
    }

    @Override
    MetaTileEntity createMetaTileEntity(IGregTechTileEntity iGregTechTileEntity) {
        return new MetaTileEntityArmorInfuser(this.metaTileEntityId)
    }

    @Override
    protected BlockPattern createStructurePattern() {
        return FactoryBlockPattern.start()
                .aisle("XXXXX", "     ", "     ", "ccccc", "     ", "     ", "ccccc", "     ", "     ", "XXXXX")
                .aisle("XXXXX", "  F  ", "  F  ", "c F c", "  F  ", "  F  ", "c F c", "  F  ", "  F  ", "XXXXX")
                .aisle("XXXXX", " FCF ", " FCF ", "cFCFc", " FCF ", " FCF ", "cFCFc", " FCF ", " FCF ", "XXXXX")
                .aisle("XXXXX", "  F  ", "  F  ", "c F c", "  F  ", "  F  ", "c F c", "  F  ", "  F  ", "XXXXX")
                .aisle("XXSXX", "     ", "     ", "ccccc", "     ", "     ", "ccccc", "     ", "     ", "XXXXX")
                .where('S' as char, this.selfPredicate())
                .where('X' as char, states(blockstate('technological_journey:draconiccasing')).setMinGlobalLimited(9)
                        .or(autoAbilities(true, true, true, true, true, true, false)))
                .where('F' as char, states(MetaBlocks.FUSION_CASING.getState(BlockFusionCasing.CasingType.FUSION_CASING_MK2)))
                .where('C' as char, states(MetaBlocks.FUSION_CASING.getState(BlockFusionCasing.CasingType.FUSION_COIL)))
                .where('c' as char, states(GCYLMetaBlocks.FUSION_COILS.getState(GCYLFusionCoils.CasingType.ADV_FUSION_COIL_1)))
                .build()
    }

    @Override
    List<MultiblockShapeInfo> getMatchingShapes() {
        return Collections.singletonList(MultiblockShapeInfo.builder(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
                .aisle("XXEMX", "     ", "     ", "ccccc", "     ", "     ", "ccccc", "     ", "     ", "XXXXX")
                .aisle("XXXXX", "  F  ", "  F  ", "c F c", "  F  ", "  F  ", "c F c", "  F  ", "  F  ", "XXXXX")
                .aisle("XXXXX", " FCF ", " FCF ", "cFCFc", " FCF ", " FCF ", "cFCFc", " FCF ", " FCF ", "XXXXX")
                .aisle("XXXXX", "  F  ", "  F  ", "c F c", "  F  ", "  F  ", "c F c", "  F  ", "  F  ", "XXXXX")
                .aisle("IiSOo", "     ", "     ", "ccccc", "     ", "     ", "ccccc", "     ", "     ", "XXXXX")
                .where('S' as char, this, EnumFacing.SOUTH)
                .where('X' as char, blockstate('technological_journey:draconiccasing'))
                .where('F' as char, MetaBlocks.FUSION_CASING.getState(BlockFusionCasing.CasingType.FUSION_CASING_MK2))
                .where('C' as char, MetaBlocks.FUSION_CASING.getState(BlockFusionCasing.CasingType.FUSION_COIL))
                .where('c' as char, GCYLMetaBlocks.FUSION_COILS.getState(GCYLFusionCoils.CasingType.ADV_FUSION_COIL_1))
                .where('I' as char, MetaTileEntities.ITEM_IMPORT_BUS[GTValues.LuV], EnumFacing.SOUTH)
                .where('O' as char, MetaTileEntities.ITEM_EXPORT_BUS[GTValues.LuV], EnumFacing.SOUTH)
                .where('i' as char, MetaTileEntities.FLUID_IMPORT_HATCH[GTValues.LuV], EnumFacing.SOUTH)
                .where('o' as char, MetaTileEntities.FLUID_EXPORT_HATCH[GTValues.LuV], EnumFacing.SOUTH)
                .where('E' as char, MetaTileEntities.ENERGY_INPUT_HATCH[GTValues.UEV], EnumFacing.NORTH)
                .where('M' as char, MetaTileEntities.MAINTENANCE_HATCH, EnumFacing.NORTH)
                .build())
    }

    @Override
    @SideOnly(Side.CLIENT)
    ICubeRenderer getBaseTexture(IMultiblockPart iMultiblockPart) {
        return TJTextures.DRACONIC_CASING
    }

    @NotNull
    @Override
    @SideOnly(Side.CLIENT)
    protected ICubeRenderer getFrontOverlay() {
        return Textures.FUSION_REACTOR_OVERLAY
    }
}