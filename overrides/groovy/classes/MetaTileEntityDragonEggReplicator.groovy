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
import gregtech.common.metatileentities.MetaTileEntities
import gregtech.core.sound.GTSoundEvents
import net.minecraft.util.EnumFacing
import net.minecraft.util.ResourceLocation
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly

class MetaTileEntityDragonEggReplicator extends RecipeMapMultiblockController {

    public static final RecipeMap<SimpleRecipeBuilder> DRAGON_EGG_REPLICATOR_RECIPES = new RecipeMapBuilder<>("dragon_egg_replicator",
            new SimpleRecipeBuilder())
            .itemInputs(2)
            .itemOutputs(3)
            .fluidInputs(1)
            .fluidOutputs(1)
            .progressBar(GuiTextures.PROGRESS_BAR_ARROW_MULTIPLE)
            .sound(GTSoundEvents.BATH)
            .build()

    MetaTileEntityDragonEggReplicator(ResourceLocation metaTileEntityId) {
        super(metaTileEntityId, DRAGON_EGG_REPLICATOR_RECIPES)
    }

    @Override
    MetaTileEntity createMetaTileEntity(IGregTechTileEntity iGregTechTileEntity) {
        return new MetaTileEntityDragonEggReplicator(this.metaTileEntityId)
    }

    @Override
    protected BlockPattern createStructurePattern() {
        return FactoryBlockPattern.start()
                .aisle("XXX", "XXX", "XXX")
                .aisle("XXX", "X#X", "XXX")
                .aisle("XXX", "XSX", "XXX")
                .where('S' as char, this.selfPredicate())
                .where('X' as char, states(blockstate('technological_journey:awakenedcasing')).setMinGlobalLimited(9)
                        .or(autoAbilities(true, true, true, true, true, true, false)))
                .where('#' as char, air())
                .build()
    }

    @Override
    List<MultiblockShapeInfo> getMatchingShapes() {
        return Collections.singletonList(MultiblockShapeInfo.builder(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
                .aisle("XXX", "XEX", "XXX")
                .aisle("XXX", "X#X", "XXX")
                .aisle("iMo", "ISO", "XXX")
                .where('S' as char, this, EnumFacing.SOUTH)
                .where('X' as char, blockstate('technological_journey:awakenedcasing'))
                .where('I' as char, MetaTileEntities.ITEM_IMPORT_BUS[GTValues.ZPM], EnumFacing.SOUTH)
                .where('O' as char, MetaTileEntities.ITEM_EXPORT_BUS[GTValues.ZPM], EnumFacing.SOUTH)
                .where('i' as char, MetaTileEntities.FLUID_IMPORT_HATCH[GTValues.ZPM], EnumFacing.SOUTH)
                .where('o' as char, MetaTileEntities.FLUID_EXPORT_HATCH[GTValues.ZPM], EnumFacing.SOUTH)
                .where('E' as char, MetaTileEntities.ENERGY_INPUT_HATCH[GTValues.ZPM], EnumFacing.NORTH)
                .where('M' as char, MetaTileEntities.MAINTENANCE_HATCH, EnumFacing.SOUTH)
                .build())
    }

    @Override
    @SideOnly(Side.CLIENT)
    ICubeRenderer getBaseTexture(IMultiblockPart iMultiblockPart) {
        return TJTextures.AWAKENED_CASING
    }
}