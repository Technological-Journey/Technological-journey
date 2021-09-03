import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps as GaMap;

//var CPlasma = mods.gregtech.recipe.FuelRecipe.create(<liquid:plasma.chaos>, 3000, 8388608);
var magic_gasoline = mods.gregtech.recipe.FuelRecipe.create(<liquid:starlight_rocketfuel> * 6, 420, 2048);
//RecipeMaps.PLASMA_GENERATOR_FUELS.addRecipe(CPlasma);
GaMap.ROCKET_FUEL_RECIPES.addRecipe(magic_gasoline);
var nitrobenzene = mods.gregtech.recipe.FuelRecipe.create(<liquid:nitro_benzene>, 40, 32);
RecipeMaps.GAS_TURBINE_FUELS.addRecipe(nitrobenzene);
