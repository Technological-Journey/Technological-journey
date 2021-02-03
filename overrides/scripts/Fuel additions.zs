import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;
//	var infusedFuel = mods.gregtech.recipe.FuelRecipe.create(<liquid:infused_nitrofuel> *2, 15, 128); RecipeMaps.DIESEL_GENERATOR_FUELS.addRecipe(infusedFuel);
var CPlasma = mods.gregtech.recipe.FuelRecipe.create(<liquid:plasma.chaos>, 300, 2096);
var APlasma = mods.gregtech.recipe.FuelRecipe.create(<liquid:plasma.awaken_draconium>, 200, 2096);//73600
var CIPlasma = mods.gregtech.recipe.FuelRecipe.create(<liquid:plasma.chaosalloy>, 800, 2096);

RecipeMaps.PLASMA_GENERATOR_FUELS.addRecipe(CPlasma);
RecipeMaps.PLASMA_GENERATOR_FUELS.addRecipe(APlasma);
RecipeMaps.PLASMA_GENERATOR_FUELS.addRecipe(CIPlasma);