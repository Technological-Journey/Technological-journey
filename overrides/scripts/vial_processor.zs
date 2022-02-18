import mods.devtech.machines.RegisterMachine;
import mods.devtech.OverlayFace;
import mods.devtech.OverlayRenderer;
import scripts.commonNames;
import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;
import mods.devtech.IRecipeMap;
import mods.devtech.machines.Overlays;
import mods.devtech.GUITextures;
import mods.devtech.OverlaySlot;
import mods.devtech.MoveType;

var vial_processor = IRecipeMap.recipeMapBuilder("vial_processor",0,1,0,3,0,0,0,0)
    .setOverlaySlots(OverlaySlot.newOverlaySlot(false, false,false,GUITextures.get("hammer_overlay")))
    .setProgressBar(GUITextures.get("progress_bar_bending"), MoveType.VERTICAL)
    .build();

RegisterMachine.CreateSimpleMachine(1400, "vial_processor",vial_processor, Overlays.get("extractor"), 1);

vial_processor.recipeBuilder()
.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:enderman"}))
.outputs(<enderio:block_enderman_skull> * 10,<minecraft:ender_pearl> * 10,<enderio:item_soul_vial>)
.EUt(16)
.duration(3)
.buildAndRegister();

vial_processor.recipeBuilder()
.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:blaze"}))
.outputs(<minecraft:blaze_rod> * 10 ,<enderio:item_soul_vial>)
.EUt(16)
.duration(3)
.buildAndRegister();

vial_processor.recipeBuilder()
.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:zombie"}))
.outputs(<minecraft:skull:2> * 9 , <enderio:item_soul_vial>)
.EUt(16)
.duration(3)
.buildAndRegister();

vial_processor.recipeBuilder()
.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:skeleton"}))
.outputs(<minecraft:bone> * 8, <enderio:item_soul_vial>)
.EUt(16)
.duration(3)
.buildAndRegister();

vial_processor.recipeBuilder()
.inputs(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:pig"}))
.outputs(<minecraft:porkchop> * 64, <enderio:item_soul_vial>)
.EUt(16)
.duration(3)
.buildAndRegister();



recipes.addShaped(<gregtech:machine:1400>, [[<enderio:item_soul_vial:1>, <minecraft:diamond_sword>, <enderio:item_soul_vial:1>],[<minecraft:diamond_sword>, <gregtech:machine:501>, <minecraft:diamond_sword>], [<gtadditions:ga_meta_item:1184>, <gtadditions:ga_meta_item:1184>, <gtadditions:ga_meta_item:1184>]]);
