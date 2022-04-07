import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.Material;
import scripts.commonNames;
import mods.gtadditions.recipe.Utils;

assembler.recipeBuilder()
.inputs([<gregtech:meta_item_2:17001>,<gregtech:meta_item_1:32300>])
.outputs([<gtadditions:ga_meta_item:32586>])
.duration(10)
.EUt(32)
.buildAndRegister();
furnace.addRecipe(<minecraft:brick>, <gregtech:meta_item_2:32013>, 0.0);
recipes.addShaped(<gregtech:meta_item_2:32013> * 8, [[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],[<minecraft:clay_ball>, <gregtech:meta_item_2:32012>, <minecraft:clay_ball>], [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]]);
mods.jei.JEI.addItem(<gregtech:meta_item_2:32013>);