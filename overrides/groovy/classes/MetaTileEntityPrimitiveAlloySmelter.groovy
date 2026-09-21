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
import gregtech.common.blocks.BlockMetalCasing
import gregtech.common.blocks.BlockSteamCasing
import gregtech.common.blocks.MetaBlocks
import gregtech.common.metatileentities.MetaTileEntities
import gregtech.core.sound.GTSoundEvents
import groovyjarjarantlr4.v4.runtime.misc.NotNull
import net.minecraft.util.EnumFacing
import net.minecraft.util.ResourceLocation
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly

class MetaTileEntityPrimitiveAlloySmelter extends TJRecipeMapSteamMultiblockController {

    public static final RecipeMap<PrimitiveRecipeBuilder> PRIMITIVE_ALLOY_SMELTER_RECIPES = new RecipeMapBuilder<>("primitive_alloy_smelter",
            new PrimitiveRecipeBuilder())
            .itemSlotOverlay(GuiTextures.FURNACE_OVERLAY_1, false)
            .progressBar(GuiTextures.PROGRESS_BAR_ARROW)
            .sound(GTSoundEvents.FURNACE)
            .fluidInputs(1)
            .itemOutputs(1)
            .itemInputs(2)
            .build()

    MetaTileEntityPrimitiveAlloySmelter(ResourceLocation metaTileEntityId) {
        super(metaTileEntityId, PRIMITIVE_ALLOY_SMELTER_RECIPES)
        this.recipeMapWorkable = new TJSteamMultiblockRecipeLogic(this, true)
    }

    @Override
    MetaTileEntity createMetaTileEntity(IGregTechTileEntity iGregTechTileEntity) {
        return new MetaTileEntityPrimitiveAlloySmelter(this.metaTileEntityId)
    }

    @Override
    protected @NotNull BlockPattern createStructurePattern() {
        return FactoryBlockPattern.start()
                .aisle("XXX", "XXX", "BBB")
                .aisle("XXX", "X#X", "B#B")
                .aisle("XXX", "XSX", "BBB")
                .where('S' as char, this.selfPredicate())
                .where('X' as char, states(MetaBlocks.METAL_CASING.getState(BlockMetalCasing.MetalCasingType.PRIMITIVE_BRICKS)).setMinGlobalLimited(9)
                        .or(abilities(MultiblockAbility.IMPORT_ITEMS, MultiblockAbility.EXPORT_ITEMS, MultiblockAbility.IMPORT_FLUIDS)))
                .where('B' as char, states(MetaBlocks.STEAM_CASING.getState(BlockSteamCasing.SteamCasingType.BRONZE_HULL)))
                .where('#' as char, air())
                .build()
    }

    @Override
    List<MultiblockShapeInfo> getMatchingShapes() {
        return Collections.singletonList(MultiblockShapeInfo.builder(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
                .aisle("XXX", "XXX", "BBB")
                .aisle("XXX", "X#X", "B#B")
                .aisle("IiX", "ISO", "BBB")
                .where('S' as char, this, EnumFacing.SOUTH)
                .where('X' as char, MetaBlocks.METAL_CASING.getState(BlockMetalCasing.MetalCasingType.PRIMITIVE_BRICKS))
                .where('B' as char, MetaBlocks.STEAM_CASING.getState(BlockSteamCasing.SteamCasingType.BRONZE_HULL))
                .where('I' as char, MetaTileEntities.ITEM_IMPORT_BUS[GTValues.ULV], EnumFacing.SOUTH)
                .where('O' as char, MetaTileEntities.ITEM_EXPORT_BUS[GTValues.ULV], EnumFacing.SOUTH)
                .where('i' as char, MetaTileEntities.FLUID_IMPORT_HATCH[GTValues.ULV], EnumFacing.SOUTH)
                .build())
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
        return Textures.ALLOY_SMELTER_OVERLAY
    }
}