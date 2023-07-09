import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import scripts.commonNames;
//EIO metals to gregtech 


//end Alloy
alloy.recipeBuilder()
    .inputs([<minecraft:ender_eye>,<enderio:item_alloy_ingot>])
    .outputs([<enderio:item_alloy_ingot:8>])
    .duration(160)
    .EUt(1024)
    .buildAndRegister();
    //Energetic Alloy
    alloy.recipeBuilder()
    .inputs([<ore:dustGlowstone>,<ore:ingotGold> * 2])
    .outputs([<enderio:item_alloy_ingot:1> * 2])
    .duration(160)
    .EUt(30)
    .buildAndRegister();
    //electric steel
    alloy.recipeBuilder()
    .inputs([<ore:ingotIron>,<gregtech:meta_item_1:2061>])
    .outputs([<enderio:item_alloy_ingot>])
    .duration(160)
    .EUt(30)
    .buildAndRegister();
    //Vibrant alloy
     alloy.recipeBuilder()
    .inputs([<enderio:item_alloy_ingot:1> * 2,<ore:enderpearl>])
    .outputs([<enderio:item_alloy_ingot:2> * 2 ])
    .duration(160)
    .EUt(30)
    .buildAndRegister();
    // dark steel
    alloy.recipeBuilder()
    .inputs([<gregtech:meta_item_1:10184>,<ore:stoneObsidian>])
    .outputs([<enderio:item_alloy_ingot:6>])
    .duration(160)
    .EUt(30)
    .buildAndRegister();
    //soularium
     alloy.recipeBuilder()
    .inputs([<minecraft:soul_sand>,<ore:ingotGold>])
    .outputs([<enderio:item_alloy_ingot:7>])
    .duration(160)
    .EUt(30)
    .buildAndRegister();
    //pulsating iron ingot
     alloy.recipeBuilder()
    .inputs([<ore:ingotIron>,<gregtech:meta_item_1:2822>])
    .outputs([<enderio:item_alloy_ingot:5>])
    .duration(160)
    .EUt(30)
    .buildAndRegister();
    alloy.recipeBuilder()
    .inputs([<ore:ingotIron>,<gregtech:meta_item_1:10822>])
    .outputs([<enderio:item_alloy_ingot:5>])
    .duration(160)
    .EUt(30)
    .buildAndRegister();
    //conductive iron
 alloy.recipeBuilder()
    .inputs([<ore:dustRedstone>,<ore:ingotIron>])
    .outputs([<enderio:item_alloy_ingot:4>])
    .duration(160)
    .EUt(30)
    .buildAndRegister();
    //red alloy
     alloy.recipeBuilder()
    .inputs([<ore:dustRedstone>,<ore:itemSilicon>])
    .outputs([<enderio:item_alloy_ingot:3>])
    .duration(160)
    .EUt(30)
    .buildAndRegister();
    //.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
   //organic black dye
    alloy.recipeBuilder()
    .inputs([<minecraft:coal>, <minecraft:tallgrass:1> * 2])
    .outputs([<enderio:item_material:50> *2])
    .duration(160)
    .EUt(30)
    .buildAndRegister();
    //organic brown dye
     alloy.recipeBuilder()
    .inputs([<minecraft:coal:1>, <ore:treeSapling> * 4])
    .outputs([<enderio:item_material:49> *2])
    .duration(160)
    .EUt(30)
    .buildAndRegister();
    
alloy.recipeBuilder()
    .inputs([<minecraft:quartz> * 4])
    .outputs([<enderio:block_fused_quartz>])
    .duration(160)
    .EUt(30)
    .buildAndRegister();

mixer.recipeBuilder()
	.inputs([<ore:gravel> * 4, <ore:sand> * 4])
    .fluidInputs(<liquid:water> * 1000)
    .outputs([<ore:itemBinderComposite>.firstItem * 16])
    .duration(80).EUt(500).buildAndRegister();

//soul powder
macerator.recipeBuilder()
.inputs([<enderio:item_alloy_ingot:7>])
.outputs([<enderio:item_material:74>])
.duration(160)
.EUt(30)
.buildAndRegister();

blast_alloy.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2524> * 5, <gregtech:meta_item_1:2002> * 4, <gregtech:meta_item_1:2331>])
    .fluidOutputs(<liquid:stellaralloy>*1440)
    .duration(420)
    .property("temperature", 8100)
    .EUt(2430)
    .buildAndRegister();

solidifier.recipeBuilder()
    .fluidInputs(<liquid:stellaralloy>*144)
    .notConsumable(<gregtech:meta_item_1:32306>)
    .outputs(<enderio:item_alloy_endergy_ingot:3>)
    .duration(20)
    .EUt(8)
    .buildAndRegister();

<enderio:item_power_conduit>.displayName = "Stainless Steel Energy Conduit";
<enderio:item_power_conduit:1>.displayName = "Titanium Energy Conduit";
<enderio:item_endergy_conduit:11>.displayName = "Superconducting Energy Conduit";
<enderio:item_power_conduit:2>.displayName = "Tungstensteel Energy Conduit";

recipes.remove(<enderio:block_soul_binder>);
recipes.addShaped(<enderio:block_soul_binder>, [[<enderio:item_alloy_ingot:7>, <minecraft:skull:2>, <enderio:item_alloy_ingot:7>],[<minecraft:skull:2>, <enderio:item_material:53>, <minecraft:skull:2>], [<enderio:item_alloy_ingot:7>, <minecraft:skull:2>, <enderio:item_alloy_ingot:7>]]);
recipes.addShapeless(<enderio:block_decoration1:15>, [<enderio:item_conduit_facade:2>]);
recipes.addShaped(<enderio:item_conduit_facade:2>, [[null, null, null],[null, <enderio:item_conduit_facade>, <appliedenergistics2:quartz_vibrant_glass>], [null, null, null]]);
recipes.addShaped(<enderio:item_conduit_facade:2>, [[<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>],[<enderio:item_material:4>, <appliedenergistics2:quartz_vibrant_glass>, <enderio:item_material:4>], [<enderio:item_material:4>, <enderio:item_material:4>, <enderio:item_material:4>]]);
recipes.remove(<enderio:block_decoration1:15>);
recipes.remove(<enderio:item_conduit_facade:2>);

assembler.recipeBuilder()
    .inputs([<gtadditions:ga_meta_item:1184>,<enderio:item_alloy_ingot:6>])
    .outputs([<enderio:item_dark_steel_upgrade>])
    .duration(100)
    .EUt(30)
    .buildAndRegister();

recipes.remove(<enderio:item_yeta_wrench>);
recipes.addShaped(<enderio:item_yeta_wrench>, [[null, <minecraft:iron_ingot>, null],[null, <gregtech:meta_item_1:10071>, null], [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]]);
    
recipes.remove(<enderio:block_tele_pad>);

assembler.recipeBuilder()
    .inputs([<gregtech:meta_item_1:32681>,<gregtech:meta_item_1:32691>,<enderio:block_cap_bank:3>,<gregtech:machine:502>* 3])
    .outputs([<enderio:block_tele_pad> * 9])
    .duration(180)
    .EUt(480)
    .buildAndRegister();

    macerator.recipeBuilder()
        .inputs([<enderio:item_material:14>])
        .outputs([<enderio:item_material:36>])
        .duration(160)
        .EUt(30)
        .buildAndRegister();

    macerator.recipeBuilder()
        .inputs([<enderio:item_material:16>])
        .outputs([<enderio:item_material:37>])
        .duration(160)
        .EUt(30)
        .buildAndRegister();

    macerator.recipeBuilder()
        .inputs([<enderio:item_material:19>])
        .outputs([<enderio:item_material:34>])
        .duration(160)
        .EUt(30)
        .buildAndRegister();


    arc.recipeBuilder()
        .inputs([<gregtech:meta_item_1:2357> * 64])
        .fluidInputs(<liquid:fire_water> * 100)
        .outputs([<enderio:item_material:20> * 64])
        .duration(120)
        .EUt(28)
        .buildAndRegister();


