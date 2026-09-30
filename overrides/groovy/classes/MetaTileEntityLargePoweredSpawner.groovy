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
import gregtech.common.blocks.BlockBoilerCasing
import gregtech.common.blocks.BlockMultiblockCasing
import gregtech.common.blocks.MetaBlocks
import gregtech.common.metatileentities.MetaTileEntities
import gregtech.core.sound.GTSoundEvents
import net.minecraft.util.EnumFacing
import net.minecraft.util.ResourceLocation
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly

class MetaTileEntityLargePoweredSpawner extends RecipeMapMultiblockController {

    public static final RecipeMap<SimpleRecipeBuilder> LARGE_POWERED_SPAWNER_RECIPES = new RecipeMapBuilder<>("large_powered_spawner",
            new SimpleRecipeBuilder())
            .itemInputs(2)
            .itemOutputs(1)
            .fluidInputs(1)
            .progressBar(GuiTextures.PROGRESS_BAR_CANNER)
            .sound(GTSoundEvents.COMPRESSOR)
            .build()

    MetaTileEntityLargePoweredSpawner(ResourceLocation metaTileEntityId) {
        super(metaTileEntityId, LARGE_POWERED_SPAWNER_RECIPES)
    }

    @Override
    MetaTileEntity createMetaTileEntity(IGregTechTileEntity iGregTechTileEntity) {
        return new MetaTileEntityLargePoweredSpawner(this.metaTileEntityId)
    }

    @Override
    protected BlockPattern createStructurePattern() {
        return FactoryBlockPattern.start()
                .aisle("XXXXX", "P   P", "P   P", "P   P", "XXXXX")
                .aisle("XCCCX", " TmT ", " TmT ", " TmT ", "XGGGX")
                .aisle("XCCCX", " mBm ", " mBm ", " mBm ", "XGGGX")
                .aisle("XCCCX", " TmT ", " TmT ", " TmT ", "XGGGX")
                .aisle("XXSXX", "P   P", "P   P", "P   P", "XXXXX")
                .where('S' as char, this.selfPredicate())
                .where('C' as char, states(blockstate('technological_journey:soulcasing')))
                .where('X' as char, states(blockstate('technological_journey:soulcasing'))
                        .or(autoAbilities(true, true, true, true, true, false, false)))
                .where('P' as char, states(MetaBlocks.FRAMES.get(Materials.Protactinium).getStateFromMeta(6)))
                .where('T' as char, states(MetaBlocks.BOILER_CASING.getState(BlockBoilerCasing.BoilerCasingType.TUNGSTENSTEEL_PIPE)))
                .where('m' as char, states(blockstate('enderio:block_decoration1')))
                .where('B' as char, states(blockstate('enderio:block_alloy', 8)))
                .where('G' as char, states(MetaBlocks.MULTIBLOCK_CASING.getState(BlockMultiblockCasing.MultiblockCasingType.GRATE_CASING)))
                .build()
    }

    @Override
    List<MultiblockShapeInfo> getMatchingShapes() {
        return Collections.singletonList(MultiblockShapeInfo.builder(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
                .aisle("XXEMX", "P   P", "P   P", "P   P", "XXXXX")
                .aisle("XCCCX", " TmT ", " TmT ", " TmT ", "XGGGX")
                .aisle("XCCCX", " mBm ", " mBm ", " mBm ", "XGGGX")
                .aisle("XCCCX", " TmT ", " TmT ", " TmT ", "XGGGX")
                .aisle("IiSOX", "P   P", "P   P", "P   P", "XXXXX")
                .where('S' as char, this, EnumFacing.SOUTH)
                .where('C' as char, blockstate('technological_journey:soulcasing'))
                .where('X' as char, blockstate('technological_journey:soulcasing'))
                .where('P' as char, MetaBlocks.FRAMES.get(Materials.Protactinium).getStateFromMeta(6))
                .where('T' as char, MetaBlocks.BOILER_CASING.getState(BlockBoilerCasing.BoilerCasingType.TUNGSTENSTEEL_PIPE))
                .where('m' as char, blockstate('enderio:block_decoration1'))
                .where('B' as char, blockstate('enderio:block_alloy', 8))
                .where('G' as char, MetaBlocks.MULTIBLOCK_CASING.getState(BlockMultiblockCasing.MultiblockCasingType.GRATE_CASING))
                .where('I' as char, MetaTileEntities.ITEM_IMPORT_BUS[GTValues.LuV], EnumFacing.SOUTH)
                .where('O' as char, MetaTileEntities.ITEM_EXPORT_BUS[GTValues.LuV], EnumFacing.SOUTH)
                .where('i' as char, MetaTileEntities.FLUID_IMPORT_HATCH[GTValues.LuV], EnumFacing.SOUTH)
                .where('E' as char, MetaTileEntities.ENERGY_INPUT_HATCH[GTValues.LuV], EnumFacing.NORTH)
                .where('M' as char, MetaTileEntities.MAINTENANCE_HATCH, EnumFacing.NORTH)
                .build())
    }

    @Override
    @SideOnly(Side.CLIENT)
    ICubeRenderer getBaseTexture(IMultiblockPart iMultiblockPart) {
        return TJTextures.SOUL_CASING
    }
}