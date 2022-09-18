import crafttweaker.world.IFacing;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IBlockMatcher;
import mods.gregtech.multiblock.MultiblockAbility;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.FactoryMultiblockShapeInfo;
import mods.gregtech.multiblock.IBlockInfo;
import mods.gregtech.multiblock.IBlockWorldState;
import mods.gregtech.multiblock.Multiblock;

import mods.gregtech.MetaTileEntities;

import mods.gregtech.recipe.FactoryRecipeMap;

import mods.gregtech.render.ITextureArea;
import mods.gregtech.render.MoveType;
import mods.gregtech.render.ICubeRenderer;
import mods.gregtech.render.Textures;

var loc = "armor_infuser";
var meta = 1004;
val armor_infuser = Builder.start(loc, meta)
    .withPattern(
            FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.BACK, RelativeDirection.UP)
                .aisle(
                    "HHHHH",
                    "HCCCH",
                    "HCCCH",
                    "HCCCH",
                    "HHSHH")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "AAAAA",
                    "A~F~A",
                    "AFGFA",
                    "A~F~A",
                    "AAAAA")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "AAAAA",
                    "A~F~A",
                    "AFGFA",
                    "A~F~A",
                    "AAAAA")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "~~~~~",
                    "~~F~~",
                    "~FGF~",
                    "~~F~~",
                    "~~~~~")
                .aisle(
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC",
                    "CCCCC")
                .where("S", IBlockMatcher.controller(loc))
                .where("~", IBlockMatcher.ANY)
                .where("C", <metastate:contenttweaker:draconiccasing>)
                .whereOr("H", 
                <metastate:contenttweaker:draconiccasing>,
                    IBlockMatcher.abilityPartPredicate(
                        MultiblockAbility.IMPORT_FLUIDS,
                        MultiblockAbility.IMPORT_ITEMS,
                        MultiblockAbility.INPUT_ENERGY,
                        MultiblockAbility.EXPORT_FLUIDS,
                        MultiblockAbility.EXPORT_ITEMS
                ))
                .where("F", <metastate:gregtech:multiblock_casing:4>)
                .where("G", <metastate:gregtech:wire_coil:8>)
                .where("A", <metastate:gtadditions:ga_fusion_casing:4>)
                .build())
        .addDesign(
                FactoryMultiblockShapeInfo.start()
                .aisle(
                    "CCECC",
                    "     ",
                    "     ",
                    "AAAAA",
                    "     ",
                    "     ",
                    "AAAAA",
                    "     ",
                    "     ",
                    "CCCCC")
                .aisle(
                    "OCCCC",
                    "  F  ",
                    "  F  ",
                    "A F A",
                    "  F  ",
                    "  F  ",
                    "A F A",
                    "  F  ",
                    "  F  ",
                    "CCCCC")
                .aisle(
                    "SCCCC",
                    " FGF ",
                    " FGF ",
                    "AFGFA",
                    " FGF ",
                    " FGF ",
                    "AFGFA",
                    " FGF ",
                    " FGF ",
                    "CCCCC")
                .aisle(
                    "ICCCC",
                    "  F  ",
                    "  F  ",
                    "A F A",
                    "  F  ",
                    "  F  ",
                    "A F A",
                    "  F  ",
                    "  F  ",
                    "CCCCC")
                .aisle(
                    "CCWXC",
                    "     ",
                    "     ",
                    "AAAAA",
                    "     ",
                    "     ",
                    "AAAAA",
                    "     ",
                    "     ",
                    "CCCCC")
                .where("C", <metastate:contenttweaker:draconiccasing>)
                .where("F", <metastate:gregtech:multiblock_casing:4>)
                .where("S", IBlockInfo.controller(loc))
                .where("A", <metastate:gtadditions:ga_fusion_casing:4>)
                .where("G", <metastate:gregtech:wire_coil:8>)
                .where("I", MetaTileEntities.ITEM_IMPORT_BUS[2], IFacing.west())
                .where("O", MetaTileEntities.ITEM_EXPORT_BUS[2], IFacing.west())
                .where("W", MetaTileEntities.FLUID_IMPORT_HATCH[5], IFacing.south())
                .where("X", MetaTileEntities.FLUID_EXPORT_HATCH[5], IFacing.south())
                .where("E", MetaTileEntities.ENERGY_INPUT_HATCH[8], IFacing.north())
                .build())
.withRecipeMap(
        FactoryRecipeMap.start(loc)
                        .maxFluidInputs(1)
                        .maxFluidOutputs(1)
                        .maxInputs(12)
                        .maxOutputs(1)
                        .build())
.withTexture(ICubeRenderer.sided("contenttweaker:blocks/draconiccasing"))
.withZoom(0.5f)

.buildAndRegister() as Multiblock;


#VOLTAGE
var basicVoltage = 524288;
var wyvernVoltage = 2097152;
var draconicVoltage = 8388608;
var chaoticVoltage = 33554432;

var Dur = 150;
var coolingfluid = <liquid:supercooled_cryotheum>;
var heatedfluid = <liquid:cryotheum>;
var basicFluidCost = 1000;
var wyvernFluidCost = 2000;
var draconicFluidCost = 3000;
var chaoticFluidCost = 4000;

var shieldC = <draconicevolution:tool_upgrade:8>;
var shieldR = <draconicevolution:tool_upgrade:9>;
var capacity = <draconicevolution:tool_upgrade>;
var jump = <draconicevolution:tool_upgrade:11>;
#tool
var speed = <draconicevolution:tool_upgrade:1>;
var AOE = <draconicevolution:tool_upgrade:2>;
var AAOE = <draconicevolution:tool_upgrade:4>;
var damage = <draconicevolution:tool_upgrade:3>;
#arrow
var draw = <draconicevolution:tool_upgrade:6>;
var Aspeed = <draconicevolution:tool_upgrade:7>;
var ADamage = <draconicevolution:tool_upgrade:5>;


var basicItem1 = <minecraft:golden_apple:1>;
var basicItem2 = <gtadditions:ga_meta_item:1718>;
var basicItem3 = <gregtech:meta_item_1:32724>;
var basicItem4 = <draconicevolution:draconic_core>;

var wyvernItem1 = <gregtech:meta_item_1:32726>;
var wyvernItem2 = <draconicevolution:draconic_core>;
var wyvernItem3 = <gtadditions:ga_meta_item:1518>;
var wyvernItem4 = <draconicevolution:wyvern_core>;

var draconicItem1 = <gtadditions:ga_meta_item:32343>;
var draconicItem2 = <draconicevolution:wyvern_core>;
var draconicItem3 = <gtadditions:ga_meta_item:1519>;
var draconicItem4 = <draconicevolution:awakened_core>;

var chaoticItem1 = <contenttweaker:refinedchaoscrystal>;
var chaoticItem2 = <draconicevolution:chaotic_core>;
var chaoticItem3 = <draconicadditions:chaotic_energy_core>;
var chaoticItem4 = <gtadditions:ga_meta_item:1520>;

var draconicTools = [<draconicevolution:draconic_pick>,<draconicevolution:draconic_shovel>,<draconicevolution:draconic_axe>] as IItemStack[];
var wyvernTools = [<draconicevolution:wyvern_pick>,<draconicevolution:wyvern_shovel>,<draconicevolution:wyvern_axe>] as IItemStack[];


for i in 0 to 3 {
armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2, (wyvernTools[i]))
.outputs((draconicTools[i].withTag({DEUpgrades: {digSpeed: 0 as byte, digAOE: 0 as byte, rfCap: 0 as byte}, Energy: 0 })))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();
}

armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2, <minecraft:diamond_hoe>)
.outputs(<draconicevolution:draconic_hoe>.withTag({DEUpgrades: {digAOE: 0 as byte, rfCap: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();
//battery
armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 4, <draconicevolution:draconic_energy_core> * 4, <draconicevolution:draconium_capacitor>)
.outputs(<draconicevolution:draconium_capacitor:1>.withTag({DEUpgrades: {rfCap: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();

armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2, <draconicevolution:draconic_shovel>,<draconicevolution:draconic_sword>,<draconicevolution:draconic_pick>)
.outputs(<draconicevolution:draconic_staff_of_power>.withTag({DEUpgrades: {attackDmg: 0 as byte, digSpeed: 0 as byte, digAOE: 0 as byte, rfCap: 0 as byte, attackAOE: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();

armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:chaotic_core> * 2, <draconicadditions:chaotic_energy_core> * 2,<contenttweaker:refinedchaoscrystal> * 4, <draconicevolution:draconic_staff_of_power>)
.outputs(<draconicadditions:chaotic_staff_of_power>.withTag({DEUpgrades: {attackDmg: 0 as byte, digSpeed: 0 as byte, digAOE: 0 as byte, rfCap: 0 as byte, attackAOE: 0 as byte}, Energy: 0, isStable: 1 as byte}))
.fluidInputs(coolingfluid * chaoticFluidCost)
.fluidOutputs(heatedfluid * chaoticFluidCost)
.duration(Dur)
.EUt(chaoticVoltage)
.buildAndRegister();

armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:chaotic_core> * 2, <draconicadditions:chaotic_energy_core> * 2,<contenttweaker:refinedchaoscrystal> * 4, <draconicevolution:draconic_bow>)
.outputs(<draconicadditions:chaotic_bow>.withTag({DEUpgrades: {arrowDmg: 0 as byte, arrowSpeed: 0 as byte, drawSpeed: 0 as byte, rfCap: 0 as byte}, Energy: 0, isStable: 1 as byte}))
.fluidInputs(coolingfluid * chaoticFluidCost)
.fluidOutputs(heatedfluid * chaoticFluidCost)
.duration(Dur)
.EUt(chaoticVoltage)
.buildAndRegister();

armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2, <draconicevolution:wyvern_sword>)
.outputs(<draconicevolution:draconic_sword>.withTag({DEUpgrades: {attackDmg: 0 as byte, rfCap: 0 as byte, attackAOE: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();

armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2,<draconicevolution:wyvern_bow>)
.outputs(<draconicevolution:draconic_bow>.withTag({DEUpgrades: {arrowDmg: 0 as byte, arrowSpeed: 0 as byte, drawSpeed: 0 as byte, rfCap: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();


//wyvern to dracon armor
//head
armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2,<draconicevolution:wyvern_helm>)
.outputs(<draconicevolution:draconic_helm>.withTag({DEUpgrades: {shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();
//chest
armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2,<draconicevolution:wyvern_chest>)
.outputs(<draconicevolution:draconic_chest>.withTag({DEUpgrades: {shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();
//leg
armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2,<draconicevolution:wyvern_legs>)
.outputs(<draconicevolution:draconic_legs>.withTag({DEUpgrades: {moveSpeed: 0 as byte, shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();
//boot
armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:awakened_core> * 2, <draconicevolution:draconic_energy_core> * 2,<draconicevolution:wyvern_boots>)
.outputs(<draconicevolution:draconic_boots>.withTag({DEUpgrades: {shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte, jumpBoost: 0 as byte}, Energy: 0}))
.fluidInputs(coolingfluid * draconicFluidCost)
.fluidOutputs(heatedfluid * draconicFluidCost)
.duration(Dur)
.EUt(draconicVoltage)
.buildAndRegister();

//dracon to chaotic armor
//head
armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:chaotic_core> * 2, <draconicadditions:chaotic_energy_core> * 2, <contenttweaker:refinedchaoscrystal> * 4, <draconicevolution:draconic_helm>)
.outputs(<draconicadditions:chaotic_helm>.withTag({DEUpgrades: {shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte}, Energy: 0, isStable: 1 as byte}))
.fluidInputs(coolingfluid * chaoticFluidCost)
.fluidOutputs(heatedfluid * chaoticFluidCost)
.duration(Dur)
.EUt(chaoticVoltage)
.buildAndRegister();
//chest
armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:chaotic_core> * 2, <draconicadditions:chaotic_energy_core> * 2, <contenttweaker:refinedchaoscrystal> * 4, <draconicevolution:draconic_chest>)
.outputs(<draconicadditions:chaotic_chest>.withTag({DEUpgrades: {attackDmg: 0 as byte, shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte}, Energy: 0, isStable: 1 as byte}))
.fluidInputs(coolingfluid * chaoticFluidCost)
.fluidOutputs(heatedfluid * chaoticFluidCost)
.duration(Dur)
.EUt(chaoticVoltage)
.buildAndRegister();
//leg
armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:chaotic_core> * 2, <draconicadditions:chaotic_energy_core> * 2, <contenttweaker:refinedchaoscrystal> * 4, <draconicevolution:draconic_legs>)
.outputs(<draconicadditions:chaotic_legs>.withTag({DEUpgrades: {moveSpeed: 0 as byte, shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte}, Energy: 0, isStable: 1 as byte}))
.fluidInputs(coolingfluid * chaoticFluidCost)
.fluidOutputs(heatedfluid * chaoticFluidCost)
.duration(Dur)
.EUt(chaoticVoltage)
.buildAndRegister();
//boot
armor_infuser.recipeMap.recipeBuilder()
.inputs(<draconicevolution:chaotic_core> * 2, <draconicadditions:chaotic_energy_core> * 2, <contenttweaker:refinedchaoscrystal> * 4, <draconicevolution:draconic_boots>)
.outputs(<draconicadditions:chaotic_boots>.withTag({DEUpgrades: {shieldRec: 0 as byte, shieldCap: 0 as byte, rfCap: 0 as byte, jumpBoost: 0 as byte}, Energy: 0, isStable: 1 as byte}))
.fluidInputs(coolingfluid * chaoticFluidCost)
.fluidOutputs(heatedfluid * chaoticFluidCost)
.duration(Dur)
.EUt(chaoticVoltage)
.buildAndRegister();
