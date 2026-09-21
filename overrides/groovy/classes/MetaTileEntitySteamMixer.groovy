import com.cleanroommc.modularui.api.drawable.IKey
import com.cleanroommc.modularui.api.widget.IWidget
import com.cleanroommc.modularui.drawable.GuiTextures
import com.cleanroommc.modularui.screen.ModularPanel
import com.cleanroommc.modularui.screen.UISettings
import com.cleanroommc.modularui.value.sync.BooleanSyncValue
import com.cleanroommc.modularui.value.sync.DoubleSyncValue
import com.cleanroommc.modularui.value.sync.PanelSyncManager
import com.cleanroommc.modularui.widget.Widget
import com.cleanroommc.modularui.widgets.ProgressWidget
import com.cleanroommc.modularui.widgets.TextWidget
import com.cleanroommc.modularui.widgets.layout.Flow
import com.cleanroommc.modularui.widgets.layout.Grid
import com.cleanroommc.modularui.widgets.slot.FluidSlot
import com.cleanroommc.modularui.widgets.slot.ItemSlot
import com.cleanroommc.modularui.widgets.slot.ModularSlot
import com.cleanroommc.modularui.widgets.slot.SlotGroup
import gregtech.api.capability.impl.FluidTankList
import gregtech.api.capability.impl.GhostCircuitItemStackHandler
import gregtech.api.capability.impl.ItemHandlerList
import gregtech.api.capability.impl.NotifiableItemStackHandler
import gregtech.api.capability.impl.RecipeLogicSteam
import gregtech.api.metatileentity.MetaTileEntity
import gregtech.api.metatileentity.SteamMetaTileEntity
import gregtech.api.metatileentity.interfaces.IGregTechTileEntity
import gregtech.api.mui.GTGuiTextures
import gregtech.api.mui.GTGuiTheme
import gregtech.api.mui.MetaTileEntityGuiData
import gregtech.api.mui.widget.GhostCircuitSlotWidget
import gregtech.api.mui.widget.RecipeProgressWidget
import gregtech.api.recipes.RecipeMaps
import gregtech.client.particle.VanillaParticleEffects
import gregtech.client.renderer.texture.Textures
import net.minecraft.nbt.NBTTagCompound
import net.minecraft.util.EnumParticleTypes
import net.minecraft.util.ResourceLocation
import net.minecraftforge.fluids.FluidTank
import net.minecraftforge.fml.relauncher.Side
import net.minecraftforge.fml.relauncher.SideOnly
import net.minecraftforge.items.IItemHandlerModifiable


class MetaTileEntitySteamMixer extends SteamMetaTileEntity {

    private final GhostCircuitItemStackHandler circuitSlot = new GhostCircuitItemStackHandler(this)
    private final IItemHandlerModifiable combinedInventory

    MetaTileEntitySteamMixer(ResourceLocation metaTileEntityId, boolean isHighPressure) {
        super(metaTileEntityId, RecipeMaps.MIXER_RECIPES, Textures.MIXER_OVERLAY, isHighPressure)
        this.combinedInventory = new ItemHandlerList(Arrays.asList(this.circuitSlot, this.importItems))
        this.workableHandler = new RecipeLogicSteam(this, this.workableHandler.recipeMap, isHighPressure, this.steamFluidTank, 1.0) {
            @Override
            protected IItemHandlerModifiable getInputInventory() {
                return combinedInventory
            }
        }
    }

    @Override
    MetaTileEntity createMetaTileEntity(IGregTechTileEntity iGregTechTileEntity) {
        return new MetaTileEntitySteamMixer(this.metaTileEntityId, this.isHighPressure)
    }

    @Override
    protected IItemHandlerModifiable createImportItemHandler() {
        return new NotifiableItemStackHandler(this, 6, this, false)
    }

    @Override
    protected IItemHandlerModifiable createExportItemHandler() {
        return new NotifiableItemStackHandler(this, 2, this, true)
    }

    @Override
    FluidTankList createImportFluidHandler() {
        super.createImportFluidHandler() // initialize steam tank
        return new FluidTankList(false, this.steamFluidTank, new FluidTank(64000), new FluidTank(64000))
    }

    @Override
    protected FluidTankList createExportFluidHandler() {
        return new FluidTankList(false, new FluidTank(64000))
    }

    @Override
    ModularPanel buildUI(MetaTileEntityGuiData guiData, PanelSyncManager panelSyncManager, UISettings settings) {
        BooleanSyncValue enoughEnergyValue = new BooleanSyncValue(() -> this.workableHandler.isActive() && this.workableHandler.isHasNotEnoughEnergy())
        panelSyncManager.syncValue("enough_steam", enoughEnergyValue)
        panelSyncManager.syncValue("progress", new DoubleSyncValue(() -> this.workableHandler.getProgressPercent()))
        panelSyncManager.registerSlotGroup(new SlotGroup("input_slots", 3, 1, true))

        return ModularPanel.defaultPanel("steam_mixer.gui", 176, 166)
                .child(new TextWidget(IKey.lang(this.getMetaFullName()))
                        .pos(6, 6) as IWidget)
                .child(new GhostCircuitSlotWidget()
                        .pos(13, 61)
                        .background(GuiTextures.SLOT_ITEM, GTGuiTextures.INT_CIRCUIT_OVERLAY)
                        .slot(this.circuitSlot, 0))
                .child(new Grid()
                        .pos(13, 25)
                        .size(54, 36)
                        .gridOfSizeWidth(this.importItems.getSlots(), 3, (x, y, i) -> new ItemSlot()
                                .background(GuiTextures.SLOT_ITEM, GTGuiTextures.DUST_OVERLAY)
                                .slot(new ModularSlot(this.importItems, i)
                                        .slotGroup("input_slots"))))
                .child(Flow.row()
                        .pos(31, 61)
                        .size(36, 18)
                        .children(this.importFluids.size() - 1, i -> new FluidSlot()
                                .syncHandler(this.importFluids.getTankAt(i + 1).delegate))) // don't include steam tank
                .child(Flow.row()
                        .pos(107, 34)
                        .size(36, 18)
                        .children(this.exportItems.getSlots(), i -> new ItemSlot()
                                .background(GuiTextures.SLOT_ITEM, GTGuiTextures.DUST_OVERLAY)
                                .slot(new ModularSlot(this.exportItems, i)
                                        .canPut(false))))
                .child(new FluidSlot()
                        .pos(107, 52)
                        .syncHandler(this.exportFluids.getTankAt(0).delegate))
                .child(new Widget<>()
                        .pos(79, 51)
                        .background(this.isHighPressure ? GTGuiTextures.INDICATOR_NO_STEAM_STEEL : GTGuiTextures.INDICATOR_NO_STEAM_BRONZE)
                        .setEnabledIf(enabled -> enoughEnergyValue.getBoolValue()))
                .child(new RecipeProgressWidget()
                        .recipeMap(this.recipeMap)
                        .pos(79, 33)
                        .size(20)
                        .direction(ProgressWidget.Direction.CIRCULAR_CW)
                        .texture(GTGuiTextures.PROGRESS_BAR_MIXER, 20)
                        .syncHandler("progress"))
                .themeOverride(this.getUITheme().id)
                .bindPlayerInventory()
    }

    @Override
    NBTTagCompound writeToNBT(NBTTagCompound data) {
        super.writeToNBT(data)
        this.circuitSlot.write(data)
        return data
    }

    @Override
    void readFromNBT(NBTTagCompound data) {
        super.readFromNBT(data)
        this.circuitSlot.read(data)
    }

    @Override
    GTGuiTheme getUITheme() {
        return this.isHighPressure ? GTGuiTheme.STEEL : GTGuiTheme.BRONZE
    }

    @Override
    @SideOnly(Side.CLIENT)
    void randomDisplayTick() {
        if (this.isActive()) {
            VanillaParticleEffects.defaultFrontEffect(this, EnumParticleTypes.CLOUD)
        }
    }
}