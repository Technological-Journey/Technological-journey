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

Inscriber.removeRecipe(<appliedenergistics2:material:20>); 
Inscriber.addRecipe(<appliedenergistics2:material:20>, <gregtech:meta_item_1:10061>, true, <appliedenergistics2:material:19>);	
	
//Engineering Processor	
Inscriber.removeRecipe(<appliedenergistics2:material:24>); 	
Inscriber.addRecipe(<appliedenergistics2:material:24>, <gregtech:meta_item_2:32487>, false, <appliedenergistics2:material:17>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:24>, <gregtech:meta_item_2:32488>, false, <appliedenergistics2:material:17>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:24>, <gtadditions:ga_meta_item:32203>, false, <appliedenergistics2:material:17>,<appliedenergistics2:material:20>);	
Inscriber.removeRecipe(<appliedenergistics2:material:17>); 		
Inscriber.addRecipe(<appliedenergistics2:material:17>, <minecraft:diamond>, true, <appliedenergistics2:material:14>);		

//Calculation Processor
Inscriber.removeRecipe(<appliedenergistics2:material:23>); 	
Inscriber.addRecipe(<appliedenergistics2:material:23>, <gregtech:meta_item_2:32487>, false, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:23>, <gregtech:meta_item_2:32488>, false, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:23>, <gtadditions:ga_meta_item:32203>, false, <appliedenergistics2:material:16>,<appliedenergistics2:material:20>);	
Inscriber.removeRecipe(<appliedenergistics2:material:16>); 		
Inscriber.addRecipe(<appliedenergistics2:material:16>, <appliedenergistics2:material>, true, <appliedenergistics2:material:13>);	
	
//Logic Processor
Inscriber.removeRecipe(<appliedenergistics2:material:22>); 	
Inscriber.addRecipe(<appliedenergistics2:material:22>, <gregtech:meta_item_2:32487>, false, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:22>, <gregtech:meta_item_2:32488>, false, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);	
Inscriber.addRecipe(<appliedenergistics2:material:22>, <gtadditions:ga_meta_item:32203>, false, <appliedenergistics2:material:18>,<appliedenergistics2:material:20>);	
Inscriber.removeRecipe(<appliedenergistics2:material:18>); 		
Inscriber.addRecipe(<appliedenergistics2:material:18>, <minecraft:gold_ingot>, true, <appliedenergistics2:material:15>);	


autoclave.recipeBuilder()
    .inputs([<gregtech:meta_item_1:8202>])
    .fluidInputs(<liquid:water> *250)
    .outputs([<appliedenergistics2:material>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();
autoclave.recipeBuilder()
    .inputs([<gregtech:meta_item_1:8203>])
    .fluidInputs(<liquid:water> *2000)
    .outputs([<appliedenergistics2:material>])
    .duration(160)
    .EUt(128)
    .buildAndRegister();

assembler.recipeBuilder()
.inputs([<appliedenergistics2:part:16>,<gregtech:meta_item_1:19152> * 4 ])
.outputs([<appliedenergistics2:part:36> * 4])
.duration(160)
.EUt(32)
.buildAndRegister();

wiremill.recipeBuilder()
.inputs([<appliedenergistics2:material:11>])
.outputs([<appliedenergistics2:part:140> * 3])
.duration(160)
.EUt(32)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<appliedenergistics2:sky_stone_block>])
.outputs([<appliedenergistics2:material:45>])
.duration(160)
.EUt(32)
.buildAndRegister();

macerator.recipeBuilder()
.inputs([<appliedenergistics2:material:7>])
.outputs([<appliedenergistics2:material:8>])
.duration(160)
.EUt(32)
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
.inputs([<appliedenergistics2:material>,<minecraft:redstone> * 4])
.outputs([<appliedenergistics2:material:1>])
.duration(30)
.EUt(32)
.buildAndRegister();
//creadits to Brachy84 and _masterEnderman_
var aeSeeds as IItemStack[string][IItemStack] = {
<appliedenergistics2:material:10> : {
"0" : <appliedenergistics2:crystal_seed>.withTag({progress: 0}),
"33" : <appliedenergistics2:crystal_seed>.withTag({progress: 200}),
"66" : <appliedenergistics2:crystal_seed>.withTag({progress: 400})
},
<appliedenergistics2:material:11> : {
"0" : <appliedenergistics2:crystal_seed:600>.withTag({progress: 600}),
"33" : <appliedenergistics2:crystal_seed:600>.withTag({progress: 800}),
"66" : <appliedenergistics2:crystal_seed:600>.withTag({progress: 1000})
},
<appliedenergistics2:material:12> : {
"0" : <appliedenergistics2:crystal_seed:1200>.withTag({progress: 1200}),
"33" : <appliedenergistics2:crystal_seed:1200>.withTag({progress: 1400}),
"66" : <appliedenergistics2:crystal_seed:1200>.withTag({progress: 1600})
},
};

for crystal, seed in aeSeeds {

autoclave.recipeBuilder()
.inputs([seed["0"]])
.fluidInputs([<liquid:water> * 1000])
.outputs([seed["33"]])
.duration(60)
.EUt(32)
.buildAndRegister();

autoclave.recipeBuilder()
.inputs([seed["33"]])
.fluidInputs([<liquid:water> * 1000])
.outputs([seed["66"]])
.duration(60)
.EUt(32)
.buildAndRegister();

autoclave.recipeBuilder()
.inputs([seed["66"]])
.fluidInputs([<liquid:water> * 1000])
.outputs([crystal])
.duration(60)
.EUt(32)
.buildAndRegister();
}
    recipes.remove(<threng:material:1>);
    recipes.addShaped(<threng:material:1>,[[<appliedenergistics2:material:8>,<appliedenergistics2:material:8>,<gregtech:meta_item_1:2106>],[<gregtech:meta_item_1:2106>,<gregtech:meta_item_1:10061>,null],[null,null,null]]);
    Aggregator.removeRecipe(<threng:material:1>);
    Aggregator.addRecipe(<threng:material:1>, <gregtech:meta_item_1:2106>,<appliedenergistics2:material:8>,<gregtech:meta_item_1:2061>);
    recipes.remove(<threng:material:9>);
    recipes.addShaped(<threng:material:9>,[[null,null,null],[<threng:material:8>,<gregtech:meta_item_1:2106>,<threng:material:8>],[null,null,null]]);

