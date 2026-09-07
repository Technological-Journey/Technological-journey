import gregicality.multiblocks.api.render.GCYMTextures
import gregicality.multiblocks.common.block.GCYMMetaBlocks
import gregicality.multiblocks.common.block.blocks.BlockLargeMultiblockCasing
import gregtech.api.GTValues
import gregtech.api.gui.GuiTextures
import gregtech.api.metatileentity.MetaTileEntity
import gregtech.api.metatileentity.interfaces.IGregTechTileEntity
import gregtech.api.metatileentity.multiblock.IMultiblockPart
import gregtech.api.metatileentity.multiblock.MultiblockAbility
import gregtech.api.pattern.BlockPattern
import gregtech.api.pattern.FactoryBlockPattern
import gregtech.api.pattern.MultiblockShapeInfo
import gregtech.api.recipes.RecipeMap
import gregtech.api.recipes.RecipeMapBuilder
import gregtech.api.recipes.builders.PrimitiveRecipeBuilder
import gregtech.api.util.RelativeDirection
import gregtech.client.renderer.ICubeRenderer
import gregtech.client.renderer.texture.Textures
import gregtech.common.metatileentities.MetaTileEntities
import gregtech.core.sound.GTSoundEvents
import groovyjarjarantlr4.v4.runtime.misc.NotNull
import net.minecraft.util.EnumFacing
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly

class MetaTileEntityHeatExchanger extends TJRecipeMapSteamMultiblockController {

    public static final RecipeMap<PrimitiveRecipeBuilder> HEAT_EXCHANGER_RECIPES = new RecipeMapBuilder<>("tj_heat_exchanger",
            new PrimitiveRecipeBuilder())
            .progressBar(GuiTextures.PROGRESS_BAR_ARROW)
            .fluidInputs(2)
            .fluidOutputs(2)
            .sound(GTSoundEvents.BATH)
            .build()

    MetaTileEntityHeatExchanger(ResourceLocation metaTileEntityId) {
        super(metaTileEntityId, HEAT_EXCHANGER_RECIPES)
        this.recipeMapWorkable = new TJSteamMultiblockRecipeLogic(this, true)
    }

    @Override
    MetaTileEntity createMetaTileEntity(IGregTechTileEntity iGregTechTileEntity) {
        return new MetaTileEntityHeatExchanger(this.metaTileEntityId)
    }

    @Override
    protected @NotNull BlockPattern createStructurePattern() {
        return FactoryBlockPattern.start()
                .aisle("XXX", "XXX", "XXX")
                .aisle("XXX", "X#X", "XXX")
                .aisle("XXX", "XSX", "XXX")
                .where('S' as char, this.selfPredicate())
                .where('X' as char, states(GCYMMetaBlocks.LARGE_MULTIBLOCK_CASING.getState(BlockLargeMultiblockCasing.CasingType.HIGH_TEMPERATURE_CASING))
                        .setMinGlobalLimited(9)
                        .or(abilities(MultiblockAbility.IMPORT_FLUIDS, MultiblockAbility.EXPORT_FLUIDS)))
                .where('#' as char, air())
                .build()
    }

    @Override
    List<MultiblockShapeInfo> getMatchingShapes() {
        Collections.singletonList(MultiblockShapeInfo.builder(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
                .aisle("XXX", "XXX", "XXX")
                .aisle("XXX", "X#X", "XXX")
                .aisle("IXO", "ISO", "XXX")
                .where('S' as char, this, EnumFacing.SOUTH)
                .where('X' as char, GCYMMetaBlocks.LARGE_MULTIBLOCK_CASING.getState(BlockLargeMultiblockCasing.CasingType.HIGH_TEMPERATURE_CASING))
                .where('I' as char, MetaTileEntities.FLUID_IMPORT_HATCH[GTValues.IV], EnumFacing.SOUTH)
                .where('O' as char, MetaTileEntities.FLUID_EXPORT_HATCH[GTValues.IV], EnumFacing.SOUTH)
                .build())
    }

    @Override
    @SideOnly(Side.CLIENT)
    ICubeRenderer getBaseTexture(IMultiblockPart iMultiblockPart) {
        return GCYMTextures.BLAST_CASING
    }

    @NotNull
    @Override
    @SideOnly(Side.CLIENT)
    protected ICubeRenderer getFrontOverlay() {
        return Textures.ORE_WASHER_OVERLAY
    }
}