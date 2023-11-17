#ignoreBracketErrors

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import scripts.commonNames;
import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Inscriber;
import mods.threng.Etcher as Etcher;
import mods.threng.Aggregator;
import crafttweaker.mods.IMod;
import mods.jei.JEI.removeAndHide as h;
import mods.gtadditions.recipe.Utils;

Inscriber.removeRecipe(<appliedenergistics2:material:20>); 
Inscriber.removeRecipe(<appliedenergistics2:material:24>); 
Inscriber.removeRecipe(<appliedenergistics2:material:23>); 
Inscriber.removeRecipe(<appliedenergistics2:material:22>);
Inscriber.removeRecipe(<appliedenergistics2:material:18>);
Inscriber.removeRecipe(<appliedenergistics2:material:17>);
Inscriber.removeRecipe(<appliedenergistics2:material:16>);
Inscriber.removeRecipe(<threng:material:2>);
Inscriber.removeRecipe(<appliedenergistics2:material:59>);

/*
//Engineering Processor			
Inscriber.addRecipe(<appliedenergistics2:material:24>, <gregtech:meta_item_2:32487>, false, <appliedenergistics2:material:17>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:24>, <gregtech:meta_item_2:32488>, false, <appliedenergistics2:material:17>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:24>, <gtadditions:ga_meta_item:32203>, false, <appliedenergistics2:material:17>,<appliedenergistics2:material:20>);			
//Calculation Processor
Inscriber.addRecipe(<appliedenergistics2:material:23>, <gregtech:meta_item_2:32487>, false, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:23>, <gregtech:meta_item_2:32488>, false, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:23>, <gtadditions:ga_meta_item:32203>, false, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);	
//Logic Processor
Inscriber.addRecipe(<appliedenergistics2:material:22>, <gregtech:meta_item_2:32487>, false, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:22>, <gregtech:meta_item_2:32488>, false, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:22>, <gtadditions:ga_meta_item:32203>, false, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);	
*/

autoclave.recipeBuilder()
    .inputs([<gregtech:meta_item_1:8202>])
    .fluidInputs(<liquid:water> *250)
    .outputs([<appliedenergistics2:material>])
    .duration(160)
    .EUt(28)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<gregtech:meta_item_1:8203>])
    .fluidInputs(<liquid:water> *2000)
    .outputs([<appliedenergistics2:material>])
    .duration(160)
    .EUt(118)
    .buildAndRegister();

assembler.recipeBuilder()
.inputs([<appliedenergistics2:part:16>,<gregtech:meta_item_1:19152> * 4 ])
.outputs([<appliedenergistics2:part:36> * 4])
.duration(160)
.EUt(28)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<appliedenergistics2:part:16>, <gregtech:meta_item_1:19141> * 2])
.outputs([<appliedenergistics2:part:36> * 4])
.duration(160)
.EUt(28)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<appliedenergistics2:part:16>, <gregtech:meta_item_1:19411>])
.outputs([<appliedenergistics2:part:36> * 4])
.duration(160)
.EUt(28)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<appliedenergistics2:part:16>, <gregtech:meta_item_1:19840>])
.outputs([<appliedenergistics2:part:36> * 6])
.duration(160)
.EUt(28)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<appliedenergistics2:part:16>, <gregtech:meta_item_1:19730>])
.outputs([<appliedenergistics2:part:36> * 8])
.duration(160)
.EUt(28)
.buildAndRegister();

wiremill.recipeBuilder()
.inputs([<appliedenergistics2:material:11>])
.outputs([<appliedenergistics2:part:140> * 6])
.duration(160)
.EUt(28)
.buildAndRegister();

wiremill.recipeBuilder()
.inputs([<minecraft:quartz>])
.outputs([<appliedenergistics2:part:140> * 1])
.duration(160)
.EUt(28)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<appliedenergistics2:sky_stone_block>])
.outputs([<appliedenergistics2:material:45>])
.duration(160)
.EUt(28)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<appliedenergistics2:material:7>])
.outputs([<appliedenergistics2:material:8>])
.duration(160)
.EUt(28)
.buildAndRegister();

Etcher.removeRecipe(<appliedenergistics2:material:22>);
Etcher.addRecipe(<appliedenergistics2:material:22>, <minecraft:redstone>,<ore:ingotGold>,<gregtech:meta_item_1:10061>);
Etcher.removeRecipe(<appliedenergistics2:material:24>);
Etcher.addRecipe(<appliedenergistics2:material:24>, <minecraft:redstone>,<ore:gemDiamond>,<gregtech:meta_item_1:10061>);
Etcher.removeRecipe(<appliedenergistics2:material:23>);
Etcher.addRecipe(<appliedenergistics2:material:23>, <minecraft:redstone>,<appliedenergistics2:material:10>,<gregtech:meta_item_1:10061>);
Etcher.removeRecipe(<threng:material:6>);
Etcher.addRecipe(<threng:material:6>, <minecraft:redstone>,<threng:material:5>,<gregtech:meta_item_1:10061>);
Etcher.removeRecipe(<threng:material:14>);
Etcher.addRecipe(<threng:material:14>, <minecraft:redstone>,<threng:material:13>,<gregtech:meta_item_1:10061>);

mixer.recipeBuilder()
.inputs([<appliedenergistics2:material>,<minecraft:redstone>])
.outputs([<appliedenergistics2:material:1>])
.duration(30)
.EUt(28)
.buildAndRegister();

largeMix.recipeBuilder()
.inputs([<appliedenergistics2:material>,<minecraft:redstone>])
.outputs([<appliedenergistics2:material:1>])
.duration(30)
.EUt(28)
.buildAndRegister();
// crystals fix

//fluix
autoclave.recipeBuilder()
.inputs(<appliedenergistics2:crystal_seed:1200>)
.fluidInputs([<liquid:water> * 1000])
.outputs(<appliedenergistics2:material:12>)
.duration(120)
.EUt(28)
.buildAndRegister();
//nether
autoclave.recipeBuilder()
.inputs(<appliedenergistics2:crystal_seed:600>)
.fluidInputs([<liquid:water> * 1000])
.outputs(<appliedenergistics2:material:11>)
.duration(120)
.EUt(28)
.buildAndRegister();
//certus quartz
autoclave.recipeBuilder()
.inputs(<appliedenergistics2:crystal_seed>)
.fluidInputs([<liquid:water> * 1000])
.outputs(<appliedenergistics2:material:10>)
.duration(120)
.EUt(28)
.buildAndRegister();

    recipes.remove(<threng:material:1>);
    recipes.addShaped(<threng:material:1>,[[<appliedenergistics2:material:8>,<appliedenergistics2:material:8>,<gregtech:meta_item_1:2106>],[<gregtech:meta_item_1:2106>,<gregtech:meta_item_1:10061>,null],[null,null,null]]);
    Aggregator.removeRecipe(<threng:material:1>);
    Aggregator.addRecipe(<threng:material:1>, <gregtech:meta_item_1:2106>,<appliedenergistics2:material:8>,<gregtech:meta_item_1:2061>);
    recipes.remove(<threng:material:9>);
    recipes.addShaped(<threng:material:9>,[[null,null,null],[<threng:material:8>,<gregtech:meta_item_1:2106>,<threng:material:8>],[null,null,null]]);

assembler.recipeBuilder()
.inputs([<minecraft:gold_ingot>])
.notConsumable(<appliedenergistics2:material:15>)
.outputs([<appliedenergistics2:material:18>])
.duration(300)
.EUt(30)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<minecraft:diamond>])
.notConsumable(<appliedenergistics2:material:14>)
.outputs([<appliedenergistics2:material:17>])
.duration(300)
.EUt(30)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<appliedenergistics2:material>])
.notConsumable(<appliedenergistics2:material:13>)
.outputs([<appliedenergistics2:material:16>])
.duration(300)
.EUt(30)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:10061>])
.notConsumable(<appliedenergistics2:material:19>)
.outputs([<appliedenergistics2:material:20>])
.duration(300)
.EUt(30)
.buildAndRegister();
// processers
assembler.recipeBuilder()
.inputs([<ore:circuitBasic>,<appliedenergistics2:material:18>,<appliedenergistics2:material:20>])
.fluidInputs(<liquid:plastic> * 144)
.outputs([<appliedenergistics2:material:22>])
.duration(160)
.EUt(28)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<ore:circuitBasic>,<appliedenergistics2:material:17>,<appliedenergistics2:material:20>])
.fluidInputs(<liquid:plastic> * 144)
.outputs([<appliedenergistics2:material:24>])
.duration(160)
.EUt(28)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<ore:circuitBasic>,<appliedenergistics2:material:16>,<appliedenergistics2:material:20>])
.fluidInputs(<liquid:plastic> * 144)
.outputs([<appliedenergistics2:material:23>])
.duration(160)
.EUt(28)
.buildAndRegister();



assembler.recipeBuilder()
.inputs([<appliedenergistics2:material:13>,<appliedenergistics2:material:14>,<appliedenergistics2:material:15>,<appliedenergistics2:material:19>,<appliedenergistics2:quartz_glass>* 2,<threng:material:4>,<appliedenergistics2:material:43>,<gregtech:machine:505>])
.outputs([<threng:machine:2>])
.duration(160)
.EUt(8192)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<appliedenergistics2:quartz_glass> * 4,<gregtech:meta_item_1:32610> * 4,<gregtech:machine:501>])
.outputs([<appliedenergistics2:fluid_interface> * 2])
.duration(150)
.EUt(28)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<appliedenergistics2:quartz_glass> * 4,<gregtech:meta_item_1:32640> * 4,<gregtech:machine:501>])
.outputs([<appliedenergistics2:interface> *2])
.duration(150)
.EUt(28)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<threng:material:13>,<ore:circuitBasic>,<appliedenergistics2:material:20>])
.fluidInputs(<liquid:plastic> * 144)
.outputs([<threng:material:14>])
.duration(160)
.EUt(28)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<threng:material:5>,<ore:circuitBasic>,<appliedenergistics2:material:20>])
.fluidInputs(<liquid:plastic> * 144)
.outputs([<threng:material:6>])
.duration(160)
.EUt(28)
.buildAndRegister();
//recipes.addShaped(<threng:machine>, [[<minecraft:hopper>, <minecraft:hopper>, <minecraft:hopper>],[<minecraft:redstone>, <gregtech:machine:503>, <minecraft:redstone>], [<appliedenergistics2:material:22>, <ae2stuff:grower>, <appliedenergistics2:material:22>]]);
assembler.recipeBuilder()
.inputs([<minecraft:hopper> * 3,<gregtech:machine:503>, <appliedenergistics2:material:22> * 2, <ae2stuff:grower>])
.outputs([<threng:machine>])
.duration(160)
.EUt(500)
.buildAndRegister();
//recipes.addShaped(<threng:machine:3>, [[<threng:material>, <appliedenergistics2:material:24>, <threng:material>],[<appliedenergistics2:crafting_accelerator>, <gregtech:machine:504>, <appliedenergistics2:crafting_accelerator>], [<threng:material>, <appliedenergistics2:material:24>, <threng:material>]]);
assembler.recipeBuilder()
.inputs([<appliedenergistics2:crafting_accelerator> *2, <gregtech:machine:504>,<threng:material> * 4])
.outputs([<threng:machine:3>])
.duration(160)
.EUt(2040)
.buildAndRegister();
recipes.addShaped(<threng:material:2>, [[<gregtech:meta_item_1:2106>, <gregtech:meta_item_1:2106>, <gregtech:meta_item_1:2106>],[<gregtech:meta_item_1:2106>, <minecraft:iron_ingot>, <appliedenergistics2:material:8>], [<appliedenergistics2:material:8>, <appliedenergistics2:material:8>, <appliedenergistics2:material:8>]]);
//recipes.addShaped(<threng:machine:1>, [[<threng:material>, <appliedenergistics2:material:22>, <threng:material>],[<threng:material:4>,<gregtech:machine:503>, <threng:material:4>], [<threng:material>, <appliedenergistics2:material:22>, <threng:material>]]);
assembler.recipeBuilder()
.inputs([<threng:material:4>,<gregtech:machine:504>,<threng:material> * 5, <appliedenergistics2:material:22> * 2])
.outputs([<threng:machine:1>])
.duration(160)
.EUt(2040)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<threng:material:4>,<gregtech:machine:504>,<threng:material> * 4, <appliedenergistics2:part:280>])
.outputs([<threng:machine:4>])
.duration(160)
.EUt(2040)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<gregtech:machine:503>,<threng:material> * 4,<appliedenergistics2:dense_energy_cell>,<appliedenergistics2:charger>])
.outputs([<threng:machine:5>])
.duration(160)
.EUt(2040)
.buildAndRegister();
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [[<gregtech:meta_item_1:12184>, <appliedenergistics2:quartz_glass>, <gregtech:meta_item_1:12184>],[<appliedenergistics2:quartz_glass>, <gregtech:machine:501>, <appliedenergistics2:quartz_glass>], [<gregtech:meta_item_1:12184>, <appliedenergistics2:quartz_glass>, <gregtech:meta_item_1:12184>]]);

assembler.recipeBuilder()
.inputs([<appliedenergistics2:quartz_glass> *4,<gregtech:meta_item_1:12184> * 2,<ore:circuitBasic>])
.fluidInputs(<liquid:plastic> * 144)
.outputs([<appliedenergistics2:material:52> * 8])
.duration(160)
.EUt(28)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<appliedenergistics2:quartz_glass> *8,<gregtech:meta_item_1:12184> * 4,<gtadditions:ga_meta_item:32207>])
.fluidInputs(<liquid:plastic> * 288)
.outputs([<appliedenergistics2:material:52> * 16])
.duration(160)
.EUt(118)
.buildAndRegister();

mixer.recipeBuilder()
.inputs([<appliedenergistics2:material:1>,<minecraft:redstone>,<gregtech:meta_item_1:2201>])
.outputs([<appliedenergistics2:material:7> * 2])
.duration(130)
.EUt(28)
.buildAndRegister();

largeMix.recipeBuilder()
.inputs([<appliedenergistics2:material:1>,<minecraft:redstone>,<gregtech:meta_item_1:2201>])
.outputs([<appliedenergistics2:material:7> * 2])
.duration(130)
.EUt(28)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<appliedenergistics2:material>])
.outputs([<gregtech:meta_item_1:2202>])
.duration(130)
.EUt(28)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<appliedenergistics2:material:10>])
.notConsumable(<appliedenergistics2:material:13>)
.outputs([<appliedenergistics2:material:16>])
.duration(300)
.EUt(118)
.buildAndRegister();
//me drive parts]

//1k
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12184> * 4,<ore:circuitBasic>, <ore:crystalCertusQuartz> * 4])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<appliedenergistics2:material:35>])
.duration(300)
.EUt(28)
.buildAndRegister();
//4k
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12001> * 4,<ore:circuitGood>, <ore:crystalCertusQuartz> * 4,<appliedenergistics2:material:35> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<appliedenergistics2:material:36>])
.duration(300)
.EUt(118)
.buildAndRegister();
//16
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12183> * 4,<ore:circuitAdvanced>, <ore:crystalCertusQuartz> * 4,<appliedenergistics2:material:36> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<appliedenergistics2:material:37>])
.duration(300)
.EUt(500)
.buildAndRegister();
//64
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12072> * 4,<ore:circuitExtreme>, <ore:crystalCertusQuartz> * 4,<appliedenergistics2:material:37> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<appliedenergistics2:material:38>])
.duration(300)
.EUt(1048)
.buildAndRegister();
//256
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12235> * 4, <ore:crystalCertusQuartz> * 4,<ore:circuitElite>, <appliedenergistics2:material:38> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<extracells:storage.component>])
.duration(300)
.EUt(4192)
.buildAndRegister();

//1k
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12184> * 4,<ore:circuitBasic>, <appliedenergistics2:material:10> * 4])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<appliedenergistics2:material:35>])
.duration(300)
.EUt(28)
.buildAndRegister();
//4k
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12001> * 4,<ore:circuitGood>, <appliedenergistics2:material:10> * 4,<appliedenergistics2:material:35> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<appliedenergistics2:material:36>])
.duration(300)
.EUt(118)
.buildAndRegister();
//16
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12183> * 4,<ore:circuitAdvanced>, <appliedenergistics2:material:10> * 4,<appliedenergistics2:material:36> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<appliedenergistics2:material:37>])
.duration(300)
.EUt(500)
.buildAndRegister();
//64
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12072> * 4,<ore:circuitExtreme>, <appliedenergistics2:material:10> * 4,<appliedenergistics2:material:37> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<appliedenergistics2:material:38>])
.duration(300)
.EUt(1048)
.buildAndRegister();
//256
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12235> * 4, <appliedenergistics2:material:10> * 4,<ore:circuitElite>, <appliedenergistics2:material:38> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<extracells:storage.component>])
.duration(300)
.EUt(4192)
.buildAndRegister();

// start of new one
//256
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12235> * 4, <gregtech:meta_item_2:25111> * 4, <gtadditions:ga_meta_item:32018> * 4,<ore:circuitElite>])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<extracells:storage.component>])
.duration(300)
.EUt(4192)
.buildAndRegister();

//1024
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12859> * 4,<ore:circuitMaster>,<gregtech:meta_item_2:25111> * 4, <gtadditions:ga_meta_item:32018> * 4,<extracells:storage.component> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<extracells:storage.component:1>])
.duration(300)
.EUt(16768)
//4096
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12207> * 4,<ore:circuitUltimate>, <gregtech:meta_item_2:25111> * 4, <gtadditions:ga_meta_item:32018> * 4,<extracells:storage.component:1> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<extracells:storage.component:2>])
.duration(300)
.EUt(67072)
.buildAndRegister();
//16384
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12311> * 4,<ore:circuitSuperconductor>, <gregtech:meta_item_2:25111> * 4, <gtadditions:ga_meta_item:32015> * 4,<extracells:storage.component:2> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
.outputs([<extracells:storage.component:3>])
.duration(300)
.EUt(268288)
.buildAndRegister();

//fluid drive parts
//1k
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12184> * 4,<ore:circuitBasic>, <ore:dyeBlue> * 4])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
.outputs([<appliedenergistics2:material:54>])
.duration(300)
.EUt(28)
.buildAndRegister();
//4k
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12001> * 4,<ore:circuitGood>, <ore:dyeBlue> * 4,<appliedenergistics2:material:54> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
.outputs([<appliedenergistics2:material:55>])
.duration(300)
.EUt(118)
.buildAndRegister();
//16
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12183> * 4,<ore:circuitAdvanced>,<ore:dyeBlue> * 4,<appliedenergistics2:material:55> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
.outputs([<appliedenergistics2:material:56>])
.duration(300)
.EUt(500)
.buildAndRegister();
//64
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12072> * 4,<ore:circuitExtreme>, <ore:dyeBlue> * 4,<appliedenergistics2:material:56> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
.outputs([<appliedenergistics2:material:57>])
.duration(300)
.EUt(1048)
.buildAndRegister();
//256
assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12235> * 4,<ore:circuitElite>, <ore:dyeBlue> * 4,<appliedenergistics2:material:57> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
.outputs([<extracells:storage.component:8>])
.duration(300)
.EUt(4192)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:12235> * 4, <gregtech:meta_item_2:25111> * 4, <gtadditions:ga_meta_item:32018> * 4, <ore:dyeBlue> * 3])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2}))
.outputs([<extracells:storage.component:8>])
.duration(300)
.EUt(4192)
.buildAndRegister();

blast_furnace.recipeBuilder()
    .inputs([<minecraft:stone>])
    .outputs(<appliedenergistics2:sky_stone_block>)
    .property("temperature", 900) //this is a minimal temperature at which the item will be smelted
    .duration(40)
    .EUt(30)
    .buildAndRegister();

if (<appliedenergistics2:controller> as bool) {
recipes.remove(<appliedenergistics2:quantum_ring>);
recipes.remove(<appliedenergistics2:controller>);
assembler.recipeBuilder()
.inputs([<gregtech:machine:501>,<ore:crystalPureFluix> * 4,<ore:circuitBasic>])
.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 0}))
.outputs([<appliedenergistics2:controller>])
.duration(300)
.EUt(28)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<enderio:item_material:4> * 5,<enderio:item_me_conduit> * 4])
.outputs([<enderio:item_me_conduit:1> * 4])
.duration(150)
.EUt(500)
.buildAndRegister();
}
else{
h(<enderio:item_me_conduit:1>);
}




recipes.addShaped(<appliedenergistics2:chest>, [[<actuallyadditions:block_giant_chest>, <gregtech:machine:710>, <actuallyadditions:block_giant_chest>],[<gregtech:machine:710>, <appliedenergistics2:material:24>, <gregtech:machine:711>], [<actuallyadditions:block_giant_chest>, <gregtech:machine:711>, <actuallyadditions:block_giant_chest>]]);
recipes.addShaped(<appliedenergistics2:drive>, [[<gregtech:machine:501>, <appliedenergistics2:material:24>, <gregtech:machine:501>],[<appliedenergistics2:part:16>,<gregtech:meta_item_1:32680>, <appliedenergistics2:part:16>], [<gregtech:machine:501>, <appliedenergistics2:material:24>, <gregtech:machine:501>]]);
recipes.remove(<appliedenergistics2:chest>);
recipes.remove(<appliedenergistics2:drive>);
recipes.remove(<appliedenergistics2:material:57>);
recipes.remove(<appliedenergistics2:material:56>);
recipes.remove(<appliedenergistics2:material:55>);
recipes.remove(<appliedenergistics2:material:54>);
recipes.remove(<appliedenergistics2:material:38>);
recipes.remove(<appliedenergistics2:material:37>);
recipes.remove(<appliedenergistics2:material:36>);
recipes.remove(<appliedenergistics2:material:35>);
recipes.remove(<appliedenergistics2:molecular_assembler>);
recipes.remove(<extracells:storage.component>);
recipes.remove(<extracells:storage.component:1>);
recipes.remove(<extracells:storage.component:2>);
recipes.remove(<extracells:storage.component:8>);
recipes.remove(<extracells:storage.component:9>);
recipes.remove(<extracells:storage.component:10>);
recipes.remove(<extracells:storage.component:3>);
recipes.addShaped(<appliedenergistics2:molecular_assembler>, [[<minecraft:crafting_table>, <ore:circuitBasic>, <minecraft:crafting_table>],[<appliedenergistics2:material:43>, <gregtech:machine:501>, <appliedenergistics2:material:44>], [<minecraft:crafting_table>, <ore:circuitBasic>, <minecraft:crafting_table>]]);
h(<extracells:part.base:10>);
h(<extracells:part.base:11>);
h(<extracells:part.base:9>);
h(<extracells:part.base>);
h(<extracells:part.base:1>);
h(<extracells:part.base:8>);
h(<extracells:part.base:3>);
h(<extracells:part.base:4>);
h(<extracells:part.base:6>);
h(<extracells:part.base:7>);
h(<extracells:part.base:5>);
h(<extracells:part.base:2>);
h(<extracells:ecbaseblock>);
h(<extracells:fluidfiller>);
h(<extracells:hardmedrive>);
h(<extracells:vibrantchamberfluid>);
h(<extracells:terminal.universal.wireless>);
h(<extracells:terminal.fluid.wireless>);
h(<extracells:storage.component:4>);
h(<extracells:storage.component:5>);
h(<extracells:storage.component:6>);
h(<extracells:storage.component:7>);
h(<extracells:storage.fluid>);
h(<extracells:storage.fluid:1>);
h(<extracells:storage.fluid:2>);
h(<extracells:storage.fluid:3>);
// Written by MadMan310
val ae2 as IMod = loadedMods["appliedenergistics2"];
val ae2Items as IItemStack[] = ae2.items;
for item in ae2Items {
    if(item.displayName has "Cable Facade") {
        if(item.displayName has "MAX Power Cell") {
            item.addTooltip(format.darkAqua("All facades are still craftable, they are just hidden from JEI to avoid clutter"));
        }
        else {
            mods.jei.JEI.hide(item);
        }
    }
}

val ae3 as IMod = loadedMods["extracells"];
val ae3Items as IItemStack[] = ae3.items;
for item in ae3Items {
    if(item.displayName has "ME Fluid Pattern") {
            h(item);
    }
}

assembler.recipeBuilder()
.inputs([<gregtech:machine:503>,<appliedenergistics2:quartz_glass> * 2,<gregtech:meta_item_1:32612> *2 ])
.outputs([<appliedenergistics2:fluid_interface> * 4])
.duration(150)
.EUt(500)
.buildAndRegister();
assembler.recipeBuilder()
.inputs([<gregtech:machine:503>,<appliedenergistics2:quartz_glass> * 2,<gregtech:meta_item_1:32642> *2])
.outputs([<appliedenergistics2:interface> * 4])
.duration(150)
.EUt(500)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:32614>,<appliedenergistics2:quartz_glass>,<gregtech:machine:505>])
.outputs([<appliedenergistics2:fluid_interface> * 8])
.duration(150)
.EUt(8192)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:32644>,<appliedenergistics2:quartz_glass> ,<gregtech:machine:505>])
.outputs([<appliedenergistics2:interface> * 8])
.duration(150)
.EUt(8192)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:32616>,<appliedenergistics2:quartz_glass> * 1,<gregtech:machine:507> * 1])
.outputs([<appliedenergistics2:fluid_interface> * 16])
.duration(150)
.EUt(131072)
.buildAndRegister();

assembler.recipeBuilder()
.inputs([<gregtech:meta_item_1:32646>,<appliedenergistics2:quartz_glass> * 1,<gregtech:machine:507> * 1])
.outputs([<appliedenergistics2:interface> * 16])
.duration(150)
.EUt(131072)
.buildAndRegister();
recipes.addShapeless(<appliedenergistics2:interface>, [<appliedenergistics2:part:440>]);
recipes.addShapeless(<appliedenergistics2:fluid_interface>, [<appliedenergistics2:part:441>]);

recipes.remove(<extracells:part.base:12>);
recipes.addShapeless(<extracells:part.base:12>, [<gregtech:meta_item_1:32102>,<appliedenergistics2:part:260>]);

//Fix certus

autoclave.findRecipe(24,[<metaitem:dustCertusQuartz>],[<fluid:water> * 200]).remove();
autoclave.findRecipe(24,[<metaitem:dustCertusQuartz>],[<fluid:distilled_water> * 200]).remove();

autoclave.recipeBuilder()
.inputs(<ore:dustCertusQuartz>)
.fluidInputs(<liquid:water> * 250)
.outputs(<gregtech:meta_item_1:8202>)
.EUt(28)
.duration(80)
.buildAndRegister();

furnace.remove(<appliedenergistics2:material:5>);

//Fix security station
recipes.remove(<appliedenergistics2:security_station>);
recipes.addShaped(<appliedenergistics2:security_station>, [[<gregtech:meta_item_1:12033>, <appliedenergistics2:chest>, <gregtech:meta_item_1:12033>],[<appliedenergistics2:part:16>, <appliedenergistics2:material:35>, <appliedenergistics2:part:16>], [<gregtech:meta_item_1:12033>, <appliedenergistics2:material:24>, <gregtech:meta_item_1:12033>]]);
recipes.addShaped(<appliedenergistics2:quantum_ring>, [[<minecraft:iron_ingot>, <appliedenergistics2:material:22>, <minecraft:iron_ingot>],[<appliedenergistics2:material:24>, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:35>], [<minecraft:iron_ingot>, <appliedenergistics2:material:22>, <minecraft:iron_ingot>]]);
recipes.remove(<appliedenergistics2:part:222>);
recipes.addShapeless(<appliedenergistics2:part:222>, [<gregtech:meta_item_1:32102>,<appliedenergistics2:part:220>]);


//alt for presses

engraver.recipeBuilder()
.inputs([<gregtech:meta_item_1:12001>])
.notConsumable(<ore:craftingLensWhite>)
.outputs(<appliedenergistics2:material:19>)
.duration(160)
.EUt(30)
.buildAndRegister();

engraver.recipeBuilder()
.inputs([<gregtech:meta_item_1:12001>])
.notConsumable(<ore:lensRuby>)
.outputs(<appliedenergistics2:material:15>)
.duration(160)
.EUt(30)
.buildAndRegister();

engraver.recipeBuilder()
.inputs([<gregtech:meta_item_1:12183>])
.notConsumable(<ore:craftingLensWhite>)
.outputs(<appliedenergistics2:material:13>)
.duration(160)
.EUt(30)
.buildAndRegister();

engraver.recipeBuilder()
.inputs([<gregtech:meta_item_1:12183>])
.notConsumable(<ore:lensRuby>)
.outputs(<appliedenergistics2:material:14>)
.duration(160)
.EUt(30)
.buildAndRegister();

recipes.addShaped(<appliedenergistics2:material:59>, [[<gregtech:meta_item_1:13524>, <appliedenergistics2:material:41>, <gregtech:meta_item_1:13524>],[<gregtech:meta_item_1:32694>, <gregtech:meta_item_1:32674>, <gregtech:meta_item_1:32684>], [<gregtech:meta_item_1:13524>, <gregtech:meta_item_1:12807>, <gregtech:meta_item_1:13524>]]);
