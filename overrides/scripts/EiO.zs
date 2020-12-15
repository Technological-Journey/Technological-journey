import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import scripts.commonNames;
//EIO metals to gregtech 
import mods.gregtech.recipe.CokeOvenRecipeBuilder;
import mods.gregtech.recipe.RecipeMaps;

//end Alloy
alloy.recipeBuilder()
    .inputs([<ore:endstone>,<ore:ingotDarkSteel> ])
    .outputs([<enderio:item_alloy_ingot:8>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    //Energetic Alloy
    alloy.recipeBuilder()
    .inputs([<ore:dustGlowstone>,<ore:ingotGold> * 2])
    .outputs([<enderio:item_alloy_ingot:1> * 2])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    //electric steel
    alloy.recipeBuilder()
    .inputs([<ore:ingotIron>,<gregtech:meta_item_1:2061>])
    .outputs([<enderio:item_alloy_ingot>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    //Vibrant alloy
     alloy.recipeBuilder()
    .inputs([<enderio:item_alloy_ingot:1> * 2,<ore:enderpearl>])
    .outputs([<enderio:item_alloy_ingot:2> * 2 ])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    // dark steel
    alloy.recipeBuilder()
    .inputs([<ore:ingotIron>,<ore:stoneObsidian>])
    .outputs([<enderio:item_alloy_ingot:6>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    //soularium
     alloy.recipeBuilder()
    .inputs([<minecraft:soul_sand>,<ore:ingotGold>])
    .outputs([<enderio:item_alloy_ingot:7>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    //pulsating iron ingot
     alloy.recipeBuilder()
    .inputs([<ore:ingotIron>,<gregtech:meta_item_1:2822>])
    .outputs([<enderio:item_alloy_ingot:5>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    alloy.recipeBuilder()
    .inputs([<ore:ingotIron>,<gregtech:meta_item_1:10822>])
    .outputs([<enderio:item_alloy_ingot:5>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    //conductive iron
 alloy.recipeBuilder()
    .inputs([<ore:dustRedstone>,<ore:ingotIron>])
    .outputs([<enderio:item_alloy_ingot:4>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    //red alloy
     alloy.recipeBuilder()
    .inputs([<ore:dustRedstone>,<ore:itemSilicon>])
    .outputs([<enderio:item_alloy_ingot:3>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    //.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
    alloy.recipeBuilder()
    .inputs([<minecraft:quartz> * 4])
    .outputs([<enderio:block_fused_quartz>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    //organic black dye
    alloy.recipeBuilder()
    .inputs([<minecraft:coal>, <minecraft:tallgrass:1> * 2])
    .outputs([<enderio:item_material:50> *2])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
    //organic brown dye
     alloy.recipeBuilder()
    .inputs([<minecraft:coal:1>, <ore:treeSapling> * 4])
    .outputs([<enderio:item_material:49> *2])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
alloy.recipeBuilder()
    .inputs([<minecraft:quartz> * 4])
    .outputs([<enderio:block_fused_quartz>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();

mixer.recipeBuilder()
	.inputs([<ore:gravel> * 4, <ore:sand> * 4])
    .fluidInputs(<liquid:water> * 1000)
    .outputs([<ore:itemBinderComposite>.firstItem * 16])
    .duration(80).EUt(512).buildAndRegister();

//soul powder
macerator.recipeBuilder()
.inputs([<enderio:item_alloy_ingot:7>])
.outputs([<enderio:item_material:74>])
.duration(160)
.EUt(32)
.buildAndRegister();

alloy.recipeBuilder()
    .inputs([<enderio:item_alloy_ingot:6> *2,<minecraft:nether_star> ])
    .outputs([<enderio:item_alloy_endergy_ingot:3> *2])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
<enderio:item_power_conduit>.displayName = "Stainless Steel Energy Conduit";
<enderio:item_power_conduit:1>.displayName = "Titanium Energy Conduit";
<enderio:item_endergy_conduit:11>.displayName = "Superconducting Energy Conduit";
<enderio:item_power_conduit:2>.displayName = "Tungstensteel Energy Conduit";

for recipe in RecipeMaps.getCokeOvenRecipes(){
    recipe.remove();
    }
CokeOvenRecipeBuilder.start()
    .input(<ore:logWood> * 1)
    .output(<minecraft:coal:1>)
    .fluidOutput(<liquid:creosote> * 250)
    .duration(660)
    .buildAndRegister();

    CokeOvenRecipeBuilder.start()
    .input(<minecraft:coal:1>)
    .output(<gregtech:meta_item_1:8357>)
    .fluidOutput(<liquid:creosote> * 500)
    .duration(1350)
    .buildAndRegister();

    CokeOvenRecipeBuilder.start()
    .input(<minecraft:coal>)
    .output(<gregtech:meta_item_1:8357>)
    .fluidOutput(<liquid:creosote> * 4500)
    .duration(1350)
    .buildAndRegister();