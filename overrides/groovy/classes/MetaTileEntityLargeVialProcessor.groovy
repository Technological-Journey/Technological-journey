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
import gregtech.api.unification.material.Materials
import gregtech.api.util.RelativeDirection
import gregtech.client.renderer.ICubeRenderer
import gregtech.client.renderer.texture.Textures
import gregtech.common.blocks.BlockBoilerCasing
import gregtech.common.blocks.BlockMultiblockCasing
import gregtech.common.blocks.BlockTurbineCasing
import gregtech.common.blocks.MetaBlocks
import gregtech.common.metatileentities.MetaTileEntities
import gregtech.core.sound.GTSoundEvents
import groovyjarjarantlr4.v4.runtime.misc.NotNull
import net.minecraft.util.EnumFacing
import net.minecraft.util.ResourceLocation
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly

class MetaTileEntityLargeVialProcessor extends RecipeMapMultiblockController {

    public static final RecipeMap<SimpleRecipeBuilder> LARGE_VIAL_PROCESSOR_RECIPES = new RecipeMapBuilder<>("large_vial_processor",
            new SimpleRecipeBuilder().EUt(GTValues.VA[GTValues.LuV]).duration(20))
            .itemInputs(1)
            .itemOutputs(14)
            .fluidOutputs(1)
            .progressBar(GuiTextures.PROGRESS_BAR_EXTRACT)
            .sound(GTSoundEvents.COMPRESSOR)
            .build()

    MetaTileEntityLargeVialProcessor(ResourceLocation metaTileEntityId) {
        super(metaTileEntityId, LARGE_VIAL_PROCESSOR_RECIPES)
    }

    @Override
    MetaTileEntity createMetaTileEntity(IGregTechTileEntity iGregTechTileEntity) {
        return new MetaTileEntityLargeVialProcessor(this.metaTileEntityId)
    }

    @Override
    protected BlockPattern createStructurePattern() {
        return FactoryBlockPattern.start()
                .aisle("XXXXX", "P   P", "P   P", "P   P", "XXXXX")
                .aisle("XTTTX", " LGL ", " LGL ", " LGL ", "XTTTX")
                .aisle("XTeTX", " GeG ", " GeG ", " GeG ", "XTeTX")
                .aisle("XTTTX", " LGL ", " LGL ", " LGL ", "XTTTX")
                .aisle("XXSXX", "P   P", "P   P", "P   P", "XXXXX")
                .where('S' as char, this.selfPredicate())
                .where('X' as char, states(blockstate('technological_journey:soulcasing'))
                        .or(autoAbilities(true, true, true, true, false, true, false)))
                .where('T' as char, states(MetaBlocks.BOILER_CASING.getState(BlockBoilerCasing.BoilerCasingType.TUNGSTENSTEEL_PIPE)))
                .where('P' as char, states(MetaBlocks.FRAMES.get(Materials.Protactinium).getStateFromMeta(6)))
                .where('L' as char, states(MetaBlocks.TURBINE_CASING.getState(BlockTurbineCasing.TurbineCasingType.TUNGSTENSTEEL_GEARBOX)))
                .where('G' as char, states(MetaBlocks.MULTIBLOCK_CASING.getState(BlockMultiblockCasing.MultiblockCasingType.GRATE_CASING)))
                .where('e' as char, states(blockstate('enderio:block_alloy', 8)))
                .build()
    }

    @Override
    List<MultiblockShapeInfo> getMatchingShapes() {
        return Collections.singletonList(MultiblockShapeInfo.builder(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
                .aisle("XXEMX", "P   P", "P   P", "P   P", "XXXXX")
                .aisle("XTTTX", " LGL ", " LGL ", " LGL ", "XTTTX")
                .aisle("XTeTX", " GeG ", " GeG ", " GeG ", "XTeTX")
                .aisle("XTTTX", " LGL ", " LGL ", " LGL ", "XTTTX")
                .aisle("XISOo", "P   P", "P   P", "P   P", "XXXXX")
                .where('S' as char, this, EnumFacing.SOUTH)
                .where('X' as char, blockstate('technological_journey:soulcasing'))
                .where('T' as char, MetaBlocks.BOILER_CASING.getState(BlockBoilerCasing.BoilerCasingType.TUNGSTENSTEEL_PIPE))
                .where('P' as char, MetaBlocks.FRAMES.get(Materials.Protactinium).getStateFromMeta(6))
                .where('L' as char, MetaBlocks.TURBINE_CASING.getState(BlockTurbineCasing.TurbineCasingType.TUNGSTENSTEEL_GEARBOX))
                .where('G' as char, MetaBlocks.MULTIBLOCK_CASING.getState(BlockMultiblockCasing.MultiblockCasingType.GRATE_CASING))
                .where('e' as char, blockstate('enderio:block_alloy', 8))
                .where('I' as char, MetaTileEntities.ITEM_IMPORT_BUS[GTValues.LuV], EnumFacing.SOUTH)
                .where('O' as char, MetaTileEntities.ITEM_EXPORT_BUS[GTValues.LuV], EnumFacing.SOUTH)
                .where('o' as char, MetaTileEntities.FLUID_EXPORT_HATCH[GTValues.LuV], EnumFacing.SOUTH)
                .where('E' as char, MetaTileEntities.ENERGY_INPUT_HATCH[GTValues.LuV], EnumFacing.NORTH)
                .where('M' as char, MetaTileEntities.MAINTENANCE_HATCH, EnumFacing.NORTH)
                .build())
    }

    @Override
    @SideOnly(Side.CLIENT)
    ICubeRenderer getBaseTexture(IMultiblockPart iMultiblockPart) {
        return TJTextures.SOUL_CASING
    }

    @NotNull
    @Override
    @SideOnly(Side.CLIENT)
    protected ICubeRenderer getFrontOverlay() {
        return Textures.EXTRACTOR_OVERLAY
    }
}