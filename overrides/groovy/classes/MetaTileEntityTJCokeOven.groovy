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
import gregtech.api.recipes.ui.impl.CokeOvenUI
import gregtech.api.util.RelativeDirection
import gregtech.client.renderer.ICubeRenderer
import gregtech.client.renderer.texture.Textures
import gregtech.common.blocks.BlockMetalCasing
import gregtech.common.blocks.MetaBlocks
import gregtech.common.metatileentities.MetaTileEntities
import gregtech.core.sound.GTSoundEvents
import groovyjarjarantlr4.v4.runtime.misc.NotNull
import net.minecraft.util.EnumFacing
import net.minecraft.util.ResourceLocation
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly

class MetaTileEntityTJCokeOven extends TJRecipeMapSteamMultiblockController {

    public static final RecipeMap<PrimitiveRecipeBuilder> COKE_OVEN_RECIPES = new RecipeMapBuilder<>("coke_oven_2", new PrimitiveRecipeBuilder())
            .progressBar(GuiTextures.PROGRESS_BAR_ARROW)
            .itemInputs(1)
            .itemOutputs(1)
            .fluidOutputs(1)
            .ui((recipeMap) -> new CokeOvenUI<>(recipeMap))
            .sound(GTSoundEvents.FIRE)
            .build()

    MetaTileEntityTJCokeOven(ResourceLocation metaTileEntityId) {
        super(metaTileEntityId, COKE_OVEN_RECIPES)
        this.recipeMapWorkable = new TJSteamMultiblockRecipeLogic(this, true)
    }

    @Override
    MetaTileEntity createMetaTileEntity(IGregTechTileEntity iGregTechTileEntity) {
        return new MetaTileEntityTJCokeOven(this.metaTileEntityId)
    }

    @Override
    protected @NotNull BlockPattern createStructurePattern() {
        return FactoryBlockPattern.start()
                .aisle("XXX", "XXX", "XXX")
                .aisle("XXX", "X#X", "XXX")
                .aisle("XXX", "XSX", "XXX")
                .where('S' as char, this.selfPredicate())
                .where('X' as char, states(MetaBlocks.METAL_CASING.getState(BlockMetalCasing.MetalCasingType.COKE_BRICKS)).setMinGlobalLimited(9)
                        .or(abilities(MultiblockAbility.IMPORT_ITEMS, MultiblockAbility.EXPORT_ITEMS, MultiblockAbility.EXPORT_FLUIDS)))
                .where('#' as char, air())
                .build()
    }

    @Override
    List<MultiblockShapeInfo> getMatchingShapes() {
        return Collections.singletonList(MultiblockShapeInfo.builder(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
                .aisle("XXX", "XXX", "XXX")
                .aisle("XXX", "X#X", "XXX")
                .aisle("XoX", "ISO", "XXX")
                .where('S' as char, this, EnumFacing.SOUTH)
                .where('X' as char, MetaBlocks.METAL_CASING.getState(BlockMetalCasing.MetalCasingType.COKE_BRICKS))
                .where('I' as char, MetaTileEntities.ITEM_IMPORT_BUS[GTValues.ULV], EnumFacing.SOUTH)
                .where('O' as char, MetaTileEntities.ITEM_EXPORT_BUS[GTValues.ULV], EnumFacing.SOUTH)
                .where('o' as char, MetaTileEntities.FLUID_EXPORT_HATCH[GTValues.ULV], EnumFacing.SOUTH)
                .build())
    }

    @Override
    @SideOnly(Side.CLIENT)
    ICubeRenderer getBaseTexture(IMultiblockPart iMultiblockPart) {
        return Textures.COKE_BRICKS
    }

    @NotNull
    @Override
    @SideOnly(Side.CLIENT)
    protected ICubeRenderer getFrontOverlay() {
        return Textures.COKE_OVEN_OVERLAY
    }
}