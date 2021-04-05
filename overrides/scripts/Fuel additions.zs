import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps;

//var CPlasma = mods.gregtech.recipe.FuelRecipe.create(<liquid:plasma.chaos>, 3000, 8388608);
var Bgasoline = mods.gregtech.recipe.FuelRecipe.create(<liquid:boosted_octane_gasoline> *5, 1686, 32);
//RecipeMaps.PLASMA_GENERATOR_FUELS.addRecipe(CPlasma);
RecipeMaps.DIESEL_GENERATOR_FUELS.addRecipe(Bgasoline);