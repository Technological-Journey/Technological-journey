import mods.gregtech.recipe.RecipeMaps;
import mods.gregtech.recipe.RecipeMap;
import mods.gtadditions.recipe.GARecipeMaps as GaMap;
import mods.gtadditions.recipe.HotCoolantRecipe as cool;

var CPlasma = mods.gregtech.recipe.FuelRecipe.create(<liquid:plasma.chaos> * 144 , 300, 2048);
RecipeMaps.PLASMA_GENERATOR_FUELS.addRecipe(CPlasma);

var AWlasma = mods.gregtech.recipe.FuelRecipe.create(<liquid:plasma.awaken_draconium> * 144 , 200, 32768);
RecipeMaps.PLASMA_GENERATOR_FUELS.addRecipe(AWlasma);
var infilasma = mods.gregtech.recipe.FuelRecipe.create(<liquid:plasma.chaosalloy> * 144 , 200, 131072);
RecipeMaps.PLASMA_GENERATOR_FUELS.addRecipe(infilasma);

var magic_gasoline = mods.gregtech.recipe.FuelRecipe.create(<liquid:starlight_rocketfuel> * 6, 420, 2048);
GaMap.ROCKET_FUEL_RECIPES.addRecipe(magic_gasoline);
var nitrobenzene = mods.gregtech.recipe.FuelRecipe.create(<liquid:nitro_benzene>, 40, 32);
RecipeMaps.GAS_TURBINE_FUELS.addRecipe(nitrobenzene);
//var chaos = cool.create(<liquid:plasma.chaos> * 144,20,524288,<liquid:chaos> * 144);
//GaMap.HOT_COOLANT_TURBINE_FUELS.addRecipe(chaos);