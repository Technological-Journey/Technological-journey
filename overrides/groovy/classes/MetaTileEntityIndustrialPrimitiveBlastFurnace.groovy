import gregtech.api.GTValues
import gregtech.api.metatileentity.MetaTileEntity
import gregtech.api.metatileentity.interfaces.IGregTechTileEntity
import gregtech.api.metatileentity.multiblock.IMultiblockPart
import gregtech.api.metatileentity.multiblock.MultiblockAbility
import gregtech.api.metatileentity.multiblock.ui.MultiblockUIBuilder
import gregtech.api.pattern.BlockPattern
import gregtech.api.pattern.FactoryBlockPattern
import gregtech.api.pattern.MultiblockShapeInfo
import gregtech.api.pattern.PatternMatchContext
import gregtech.api.pattern.TraceabilityPredicate
import gregtech.api.recipes.RecipeBuilder
import gregtech.api.recipes.RecipeMaps
import gregtech.api.util.GTUtility
import gregtech.api.util.KeyUtil
import gregtech.api.util.RelativeDirection
import gregtech.client.renderer.ICubeRenderer
import gregtech.client.renderer.texture.Textures
import gregtech.common.blocks.BlockMetalCasing
import gregtech.common.blocks.MetaBlocks
import gregtech.common.metatileentities.MetaTileEntities
import groovyjarjarantlr4.v4.runtime.misc.NotNull
import net.minecraft.init.Blocks
import net.minecraft.util.EnumFacing
import net.minecraft.util.text.TextFormatting
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly

class MetaTileEntityIndustrialPrimitiveBlastFurnace extends TJRecipeMapSteamMultiblockController {

    private int size
    private int efficiency

    MetaTileEntityIndustrialPrimitiveBlastFurnace(ResourceLocation metaTileEntityId) {
        super(metaTileEntityId, RecipeMaps.PRIMITIVE_BLAST_FURNACE_RECIPES)
        this.recipeMapWorkable = new TJSteamMultiblockRecipeLogic(this, true) {
            @Override
            int getParallelLimit() {
                return size
            }

            @Override
            void applyParallelBonus(RecipeBuilder builder) {
                builder.duration(builder.getDuration() / (efficiency / 100) as int)
            }
        }
    }

    @Override
    MetaTileEntity createMetaTileEntity(IGregTechTileEntity iGregTechTileEntity) {
        return new MetaTileEntityIndustrialPrimitiveBlastFurnace(this.metaTileEntityId)
    }

    @Override
    protected @NotNull BlockPattern createStructurePattern() {
        return FactoryBlockPattern.start()
                .aisle("XXX", "XXX", "XXX", "XXX")
                .aisle("XXX", "X#X", "X#X", "XXX").setRepeatable(1, 64)
                .aisle("XXX", "XSX", "XXX", "XXX")
                .where('S' as char, this.selfPredicate())
                .where('X' as char, states(MetaBlocks.METAL_CASING.getState(BlockMetalCasing.MetalCasingType.PRIMITIVE_BRICKS)).setMinGlobalLimited(18)
                        .or(abilities(MultiblockAbility.IMPORT_ITEMS, MultiblockAbility.EXPORT_ITEMS)))
                .where('#' as char, new TraceabilityPredicate((blockWorldState) -> {
                    if (blockWorldState.getBlockState().getBlock() === Blocks.AIR) {
                        blockWorldState.getMatchContext().getOrCreate("airBlocks", () -> new HashSet<>()).add(blockWorldState.getPos())
                        return true
                    } else return false
                })).build()
    }

    @Override
    List<MultiblockShapeInfo> getMatchingShapes() {
        List<MultiblockShapeInfo> shapeInfos = new ArrayList<>()
        for (i in 1..<64) {
            MultiblockShapeInfo.Builder builder = MultiblockShapeInfo.builder(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
                    .aisle("XXX", "XXX", "XXX", "XXX")
            for (j in 0..<i) {
                builder.aisle("XXX", "X#X", "X#X", "XXX")
            }
            shapeInfos.add(builder.aisle("XXX", "ISO", "XXX", "XXX")
                    .where('S' as char, this, EnumFacing.SOUTH)
                    .where('X' as char, MetaBlocks.METAL_CASING.getState(BlockMetalCasing.MetalCasingType.PRIMITIVE_BRICKS))
                    .where('I' as char, MetaTileEntities.ITEM_IMPORT_BUS[GTValues.LV], EnumFacing.SOUTH)
                    .where('O' as char, MetaTileEntities.ITEM_EXPORT_BUS[GTValues.LV], EnumFacing.SOUTH)
                    .build())
        }
        return shapeInfos;
    }

    @Override
    protected void formStructure(PatternMatchContext context) {
        super.formStructure(context)
        this.size = context.getOrDefault("airBlocks", Collections.emptySet()).size() / 2 as int
        this.efficiency = ((((-Math.atan(this.size / 4.0 / Math.PI - 64 / 4.0 / Math.PI / 2) + (Math.PI / 2)) / Math.PI + ((-Math.atan(64 / 4.0 / Math.PI / 2) + Math.PI / 2) / Math.PI)/2)) * 100.0) as int
    }

    @Override
    void invalidateStructure() {
        super.invalidateStructure()
        this.efficiency = 0
        this.size = 0
    }

    @Override
    protected void configureDisplayText(MultiblockUIBuilder builder) {
        builder.setWorkingStatus(this.recipeMapWorkable.isWorkingEnabled(), this.recipeMapWorkable.isActive())
                .addEnergyUsageLine(this.getEnergyContainer())
                .addEnergyTierLine(GTUtility.getTierByVoltage(this.recipeMapWorkable.getMaxVoltage()))
                .addParallelsLine(this.recipeMapWorkable.getParallelLimit())
                .addCustom((key, syncer) -> {
                    int efficiency = syncer.syncInt(this.efficiency)
                    if (syncer.syncBoolean(this.isStructureFormed())) {
                        key.add(KeyUtil.lang(TextFormatting.GOLD, "gregtech.multiblock.large_boiler.efficiency", efficiency))
                    }
                }).addWorkingStatusLine()
                .addProgressLine(this.recipeMapWorkable.getProgress(), this.recipeMapWorkable.getMaxProgress())
                .addRecipeOutputLine(this.recipeMapWorkable)
    }

    @Override
    @SideOnly(Side.CLIENT)
    ICubeRenderer getBaseTexture(IMultiblockPart iMultiblockPart) {
        return Textures.PRIMITIVE_BRICKS
    }

    @NotNull
    @Override
    @SideOnly(Side.CLIENT)
    protected ICubeRenderer getFrontOverlay() {
        return Textures.PRIMITIVE_BLAST_FURNACE_OVERLAY
    }
}