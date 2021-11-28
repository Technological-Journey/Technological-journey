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

furnace.remove(<draconicevolution:draconium_ingot>);
recipes.remove(<draconicevolution:draconium_block>);
recipes.remove(<draconicevolution:draconium_ingot>);
recipes.remove(<draconicevolution:nugget>);
recipes.remove(<draconicevolution:draconic_block>);
recipes.remove(<draconicevolution:draconic_ingot>);
recipes.remove(<draconicevolution:nugget:1>);
recipes.remove(<draconicevolution:info_tablet>);
recipes.addShaped(<draconicevolution:info_tablet>, [[<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>],[<ore:stoneSmooth>, <ore:dustRegularDraconium>, <ore:stoneSmooth>], [<ore:stoneSmooth>, <ore:stoneSmooth>, <ore:stoneSmooth>]]);
recipes.addShapeless(<gregtech:meta_item_1:9519>, [<draconicevolution:nugget:1>]);
recipes.addShapeless(<gregtech:meta_item_1:10519>, [<draconicevolution:draconic_ingot>]);
recipes.addShapeless(<gregtech:meta_block_compressed_32:7>, [<draconicevolution:draconic_block>]);
recipes.addShapeless(<gregtech:meta_item_1:9518>, [<draconicevolution:nugget>]);
recipes.addShapeless(<gregtech:meta_item_1:10518>, [<draconicevolution:draconium_ingot>]);
recipes.addShapeless(<gregtech:meta_block_compressed_32:6>, [<draconicevolution:draconium_block>]);
recipes.addShapeless(<draconicevolution:draconic_block>, [<gregtech:meta_block_compressed_32:7>]);
recipes.addShapeless(<draconicevolution:draconium_block>, [<gregtech:meta_block_compressed_32:6>]);

    assembly_line.recipeBuilder()
    .inputs(<gregtech:frame_tritanium> * 10,<gregtech:meta_item_1:12518> * 10,<gregtech:meta_item_1:12524> * 10,<gregtech:meta_item_1:12780> * 10,<gregtech:meta_item_2:32436> * 2,<gregtech:meta_item_1:32677>,<gregtech:meta_item_1:32687>,<gregtech:meta_item_1:32697>,<ore:circuitSuperconductor>)
    .outputs(<draconicevolution:draconic_core> * 2)
    .duration(600)
    .EUt(524288)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<gregtech:frame_hdcs>* 10,<gregtech:meta_item_1:12695> * 10,<gregtech:meta_item_1:12518> * 10,<gregtech:meta_item_1:12716> * 10,<gregtech:meta_item_1:12854> * 10,<gtadditions:ga_meta_item:32378>,<gtadditions:ga_meta_item:32372>,<gtadditions:ga_meta_item:32390>,<ore:circuitInfinite>,<draconicevolution:draconic_core>)
    .outputs(<draconicevolution:wyvern_core> * 2)
    .duration(600)
    .EUt(2097152)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<gregtech:frame_trinium_titanium> * 10,<gtadditions:ga_dust:385> * 10,<gregtech:meta_item_1:12519> * 10,<gregtech:meta_item_1:12674> * 10,<gregtech:meta_item_1:12675> * 10,<gtadditions:ga_meta_item:32379>,<gtadditions:ga_meta_item:32373>,<gtadditions:ga_meta_item:32391>,<ore:circuitUev>,<draconicevolution:wyvern_core>)
    .outputs(<draconicevolution:awakened_core>* 2)
    .duration(600)
    .EUt(8388608)
    .buildAndRegister();

    chemical_bath.recipeBuilder()
    .inputs(<draconicevolution:chaos_shard>)
    .fluidInputs(<liquid:rutherfordium> * 1000)
    .outputs(<contenttweaker:refinedchaoscrystal>* 2)
    .duration(600)
    .EUt(8388608)
    .buildAndRegister();

    chemical_bath.recipeBuilder()
    .inputs(<contenttweaker:refinedchaosshard> * 9)
    .fluidInputs(<liquid:rutherfordium> * 500)
    .outputs(<contenttweaker:refinedchaoscrystal>)
    .duration(600)
    .EUt(131072)
    .buildAndRegister();

    Stellar.recipeBuilder()
    .inputs(<draconicevolution:awakened_core> * 3,<contenttweaker:refinedchaoscrystal>,<gregtech:meta_block_compressed_32:7> * 2)
    .fluidOutputs(<liquid:rawchaos> * 2592)
    .duration(600)
    .EUt(8388608)
    .buildAndRegister();

    Stellar.recipeBuilder()
    .inputs(<draconicevolution:awakened_core>,<draconicadditions:chaos_heart>,<gregtech:meta_block_compressed_32:7>)
    .fluidOutputs(<liquid:rawchaos> * 1296)
    .outputs(<draconicevolution:dragon_heart>)
    .duration(600)
    .EUt(8388608)
    .buildAndRegister();

    ADVFusion.recipeBuilder()
    .fluidInputs(<liquid:rawchaos> * 288, <liquid:bohrium> * 288)//,<liquid:lead_bismuth_eutatic> * 7440)
    .fluidOutputs(<liquid:plasma.chaos> * 576)//, <liquid:supercritical_lead_bismuth_eutectic> * 7440)
    .property("eu_to_start",1000000000)
    .property("coilTier",1)
    .property("euReturn",75)
    .duration(50)
    .EUt(1000000)
    .buildAndRegister();

    //recipes.addShaped(<contenttweaker:refinedchaoscrystal>, [[<contenttweaker:refinedchaosshard>, <contenttweaker:refinedchaosshard>, <contenttweaker:refinedchaosshard>],[<contenttweaker:refinedchaosshard>, <contenttweaker:refinedchaosshard>, <contenttweaker:refinedchaosshard>], [<contenttweaker:refinedchaosshard>, <contenttweaker:refinedchaosshard>, <contenttweaker:refinedchaosshard>]]);
    recipes.addShapeless(<contenttweaker:refinedchaosshard> * 9, [<contenttweaker:refinedchaoscrystal>]);


    assembly_line.recipeBuilder()
    .inputs(<gregtech:frame_quantum> * 10,<gregtech:meta_item_1:12721> * 10,<gregtech:meta_item_1:12519> * 10,<gregtech:meta_item_1:12520> * 10,<ore:circuitUiv>, <contenttweaker:refinedchaoscrystal>,<draconicevolution:awakened_core>)
    .outputs(<draconicevolution:chaotic_core> * 2)
    .duration(600)
    .EUt(33554432)
    .buildAndRegister();

    bioreactor.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32018> * 10,<draconicevolution:dragon_heart> * 2)
    .fluidInputs(<liquid:sterilized_growth_medium> * 2000)
    .fluidOutputs(<liquid:dragonstem> * 2000)
    .duration(600)
    .EUt(2097152)
    .buildAndRegister();

    Stellar.recipeBuilder()
    .inputs(<draconicevolution:wyvern_core> * 3,<gregtech:meta_block_compressed_32:6> * 2)
    .fluidInputs(<liquid:dragonstem> * 2000)
    .fluidOutputs(<liquid:depleted_growth_medium> * 2000,<liquid:plasma.awaken_draconium> * 2592)
    .duration(100)
    .EUt(8388608)
    .buildAndRegister();
//armor
    assembly_line.recipeBuilder()
    .inputs(<gregtech:machine:2505>,<gregtech:meta_item_1:32655> * 2,<gregtech:meta_item_1:12743> * 10,<gregtech:cable:5308> * 10,<gregtech:meta_item_1:17983> * 18,<gregtech:meta_item_1:12518> * 5)
    .fluidInputs(<liquid:dubnium> * 1296,<liquid:californium>* 2592)
    .outputs(<gregtech:machine:1004>)
    .duration(600)
    .EUt(131072)
    .buildAndRegister();
//eggBoi
   assembly_line.recipeBuilder()
    .inputs(<gregtech:machine:3239>,<gregtech:meta_item_1:12695> * 10,<gregtech:meta_item_1:12518> * 10, <gregtech:meta_item_1:12519> * 10,<gregtech:ga_cable:5855> * 10,<ore:circuitInfinite>,<gtadditions:ga_meta_item:32465>,<gtadditions:ga_meta_item:32390>)
    .fluidInputs(<liquid:incoloy813> * 1296,<liquid:einsteinium> * 2592)
    .outputs(<gregtech:machine:1006>)
    .duration(600)
    .EUt(524288)
    .buildAndRegister();
    //chaos
    assembly_line.recipeBuilder()
    .inputs(<gregtech:machine:3240>,<gregtech:meta_item_1:12851> * 10,<gregtech:meta_item_1:12731> * 10,<gregtech:meta_item_1:12732> * 10,<gregtech:meta_item_1:12720> * 5,<gregtech:meta_item_1:12519> * 10,<gtadditions:ga_meta_item:32385>,<gregtech:ga_cable:5852> * 10,<ore:circuitUev>,<draconicevolution:awakened_core> * 2)
    .fluidInputs(<liquid:titan_steel> * 1296,<liquid:mendelevium> * 2592,<liquid:cinobite_molten> * 1296)
    .outputs(<gregtech:machine:1005>)
    .duration(600)
    .EUt(2097152)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<draconicevolution:wyvern_energy_core> * 4,<draconicevolution:wyvern_core>,<minecraft:diamond>,<draconicevolution:energy_crystal:1> *4)
    .fluidInputs(<liquid:mendelevium> * 144)
    .outputs(<draconicevolution:energy_crystal:2> * 4)
    .duration(300)
    .EUt(2097152)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<minecraft:ender_pearl> * 3,<minecraft:ender_eye> * 7,<draconicevolution:dislocator>,<gregtech:meta_item_1:32724>)
    .fluidInputs(<liquid:draconium> * 576)
    .outputs(<draconicevolution:dislocator_advanced>)
    .duration(200)
    .EUt(32768)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<minecraft:ender_eye> * 7,<draconicevolution:wyvern_core>,<draconicevolution:draconic_core> * 2,<draconicevolution:dislocator>,<draconicadditions:chaotic_energy_core>,<minecraft:skull>)
    .fluidInputs(<liquid:blaze> * 2304)
    .outputs(<draconicevolution:ender_energy_manipulator>)
    .duration(200)
    .EUt(2097152)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<draconicevolution:magnet>,<draconicevolution:dislocator_advanced>,<gregtech:meta_item_1:12519> * 4,<gregtech:meta_item_1:2299> *2)
    .outputs(<draconicevolution:magnet:1>)
    .duration(200)
    .EUt(2097152)
    .buildAndRegister();

    recipes.remove(<draconicevolution:celestial_manipulator>);
    recipes.addShaped(<draconicevolution:celestial_manipulator>, [[<minecraft:redstone_block>, <minecraft:clock>, <minecraft:redstone_block>],[<gtadditions:ga_meta_item:1518>, <minecraft:dragon_egg>, <gtadditions:ga_meta_item:1518>], [<gtadditions:ga_meta_item:1518>, <gregtech:meta_item_2:26299>, <gtadditions:ga_meta_item:1518>]]);
    <draconicevolution:celestial_manipulator>.addTooltip(format.darkRed("Will not work on AR planets"));


recipes.addShaped(<contenttweaker:chaoticcasing> * 3, [[<gregtech:meta_item_1:12520>, <gregtech:meta_tool:6>, <gregtech:meta_item_1:12520>],[<gregtech:meta_item_1:12520>, <ore:frameGtChaos>, <gregtech:meta_item_1:12520>], [<gregtech:meta_item_1:12520>, <ore:GTWrench>, <gregtech:meta_item_1:12520>]]);
recipes.addShaped(<contenttweaker:awakenedcasing> * 3, [[<gregtech:meta_item_1:12519>, <gregtech:meta_tool:6>, <gregtech:meta_item_1:12519>],[<gregtech:meta_item_1:12519>, <ore:frameGtAwakenDraconium>, <gregtech:meta_item_1:12519>], [<gregtech:meta_item_1:12519>, <ore:GTWrench>, <gregtech:meta_item_1:12519>]]);
recipes.addShaped(<contenttweaker:draconiccasing> * 3, [[<gregtech:meta_item_1:12518>, <gregtech:meta_tool:6>, <gregtech:meta_item_1:12518>],[<gregtech:meta_item_1:12518>, <ore:frameGtDraconium>, <gregtech:meta_item_1:12518>], [<gregtech:meta_item_1:12518>, <ore:GTWrench>, <gregtech:meta_item_1:12518>]]);

    assembler.recipeBuilder()
    .inputs(<gregtech:frame_draconium>,<gregtech:meta_item_1:12518> * 6)
    .circuit(0)
    .outputs(<contenttweaker:draconiccasing> * 3)
    .EUt(16)
    .duration(50)
    .buildAndRegister();

    assembler.recipeBuilder()
    .inputs(<gregtech:frame_awaken_draconium>,<gregtech:meta_item_1:12519> * 6)
    .circuit(0)
    .outputs(<contenttweaker:awakenedcasing> * 3)
    .EUt(16)
    .duration(50)
    .buildAndRegister();

    assembler.recipeBuilder()
    .inputs(<gregtech:frame_chaos>,<gregtech:meta_item_1:12520> * 6)
    .circuit(0)
    .outputs(<contenttweaker:chaoticcasing>* 3)
    .EUt(16)
    .duration(50)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:1518> *10,<gregtech:meta_item_1:12524> * 10,<gregtech:meta_item_2:32436>,<gregtech:meta_item_1:32687>)
    .outputs(<draconicevolution:crafting_injector:3>)
    .duration(200)
    .EUt(524288)
    .buildAndRegister();

recipes.remove(<draconicevolution:wyvern_energy_core>);

//energy cores
    assembly_line.recipeBuilder()
    .inputs(<draconicevolution:wyvern_core> * 4,<gregtech:meta_item_1:12518> * 10,<gregtech:cable:5518> * 10,<gregtech:meta_item_1:32725>)
    .fluidInputs(<liquid:redstone> * 6480)
    .outputs(<draconicevolution:wyvern_energy_core>)
    .duration(200)
    .EUt(524288)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<draconicevolution:awakened_core> * 4,<gregtech:meta_item_1:12519> * 10,<gregtech:cable:5519> * 10,<gregtech:meta_item_1:32726>)
    .fluidInputs(<liquid:redstone> * 12960)
    .outputs(<draconicevolution:draconic_energy_core>)
    .duration(200)
    .EUt(2097152)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<draconicevolution:chaotic_core>* 4,<gregtech:meta_item_1:12520> * 10,<gregtech:cable:5520> * 10,<gtadditions:ga_meta_item:32343>)
    .fluidInputs(<liquid:redstone> * 25920)
    .outputs(<draconicadditions:chaotic_energy_core>)
    .duration(200)
    .EUt(2097152)
    .buildAndRegister();


    Stellar.recipeBuilder()
    .inputs(<gregtech:meta_item_1:10520> * 20,<gtadditions:ga_explosive:3> * 10,<gregtech:meta_item_1:10672> * 20)
    .fluidInputs(<liquid:fullerene_polymer_matrix> * 2800,<liquid:cosmic_computing_mix>* 2800,<liquid:heavy_quark_degenerate_matter>* 2800)
    .fluidOutputs(<liquid:plasma.chaosalloy>*14400)
    .duration(20)
    .EUt(134217728)
    .buildAndRegister();

    Utils.removeRecipeByOutput(assembly_line, [<gregtech:machine:4174>], [], true);

    assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_1:12718> * 24,<gregtech:meta_item_2:26857> * 12,<gregtech:meta_item_1:13854> * 8,<gregtech:meta_item_1:19728> * 6,<gtadditions:ga_meta_item:32391> *4,<gtadditions:ga_meta_item:32526> * 4,<gtadditions:ga_meta_item:32525> * 2,<gtadditions:ga_fusion_casing:6> *2)
    .fluidInputs(<liquid:cinobite> * 864,<liquid:soldering_alloy> *1296)
    .outputs(<gregtech:machine:4174>)
    .duration(410)
    .EUt(24000000)
    .buildAndRegister();



    assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_1:13518> * 8, <gregtech:meta_item_1:13857> * 8, <appliedenergistics2:dense_energy_cell> * 64,<gregtech:cable:744> * 32, <ore:circuitSuperconductor> * 2)
    .fluidInputs(<liquid:cinobite> * 1296,<liquid:soldering_alloy> *1296)
    .outputs(<appliedenergistics2:creative_energy_cell>)
    .duration(1000)
    .EUt(524288)
    .buildAndRegister();

    Utils.removeRecipeByOutput(assembly_line, [<gregtech:machine:3236>], [], true);

    assembly_line.recipeBuilder()
    .inputs(<gregtech:meta_item_1:17850> * 64,<gregtech:meta_item_1:19729> * 64,<gregtech:meta_item_1:19729> * 64,<gregtech:meta_item_1:12732> * 32,<gregtech:meta_item_1:12731> * 32,<gregtech:meta_item_1:14854> * 16,<gregtech:meta_item_2:26852> * 8,<ore:circuitUiv> * 4,<gtadditions:ga_meta_item:32430> * 4,<contenttweaker:refinedchaoscrystal> * 2,<gtadditions:ga_meta_item:32367> * 2,<gregtech:machine:3235>)
    .fluidInputs(<liquid:soldering_alloy> *20736)
    .outputs(<gregtech:machine:3236>)
    .duration(500)
    .EUt(33554432)
    .buildAndRegister();

    recipes.remove(<thermalfoundation:upgrade>);
    recipes.remove(<thermalfoundation:upgrade:1>);
    recipes.remove(<thermalfoundation:upgrade:2>);
    recipes.remove(<thermalfoundation:upgrade:3>);
    recipes.remove(<thermalfoundation:upgrade:33>);
    recipes.remove(<thermalfoundation:upgrade:34>);
    recipes.remove(<thermalfoundation:upgrade:35>);
    recipes.remove(<thermalfoundation:upgrade:256>);

    assembly_line.recipeBuilder()
    .inputs(<draconicevolution:chaotic_core> * 32,<gregtech:meta_item_1:12857> * 64,<gregtech:meta_item_1:12729> * 64,<thermalfoundation:upgrade> ,<thermalfoundation:upgrade:1> ,<draconicevolution:draconium_capacitor:1>.withTag({DEUpgrades: {rfCap: 4 as byte}, Energy: 1920000000}),<draconicevolution:draconium_capacitor:1>.withTag({DEUpgrades: {rfCap: 4 as byte}, Energy: 1920000000}),<draconicevolution:draconium_capacitor:1>.withTag({DEUpgrades: {rfCap: 4 as byte}, Energy: 1920000000}),<draconicevolution:draconium_capacitor:1>.withTag({DEUpgrades: {rfCap: 4 as byte}, Energy: 1920000000}),<draconicevolution:draconium_capacitor:1>.withTag({DEUpgrades: {rfCap: 4 as byte}, Energy: 1920000000}),<draconicevolution:draconium_capacitor:1>.withTag({DEUpgrades: {rfCap: 4 as byte}, Energy: 1920000000}))
    .fluidInputs(<liquid:soldering_alloy> *20736,<liquid:chaosalloy> * 4608,<liquid:chaos> * 9216)
    .outputs(<draconicevolution:draconium_capacitor:2>)
    .duration(500)
    .EUt(33554432)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<extracells:storage.component:3> * 18,<gregtech:meta_item_1:12674>* 64,<gregtech:meta_item_1:12675> * 64,<thermalfoundation:upgrade:2>,<thermalfoundation:upgrade:3>  ,<draconicevolution:chaotic_core> * 8)
    .fluidInputs(<liquid:soldering_alloy> *20736,<liquid:chaosalloy> * 4608,<liquid:heavy_quark_degenerate_matter> * 1296)
    .outputs(<storagedrawers:upgrade_creative>)
    .duration(500)
    .EUt(33554432)
    .buildAndRegister();
//hardened upgrade
    assembly_line.recipeBuilder()
    .inputs(<draconicevolution:draconic_core> * 10,<gregtech:meta_item_1:12524> * 64,<gregtech:cable:744> * 64,<gregtech:meta_item_1:12854> * 64)
    .fluidInputs(<liquid:soldering_alloy> *20736,<liquid:draconium> * 4608)
    .outputs(<thermalfoundation:upgrade>)
    .duration(500)
    .EUt(33554432)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<draconicevolution:wyvern_core> * 10,<gregtech:meta_item_1:12716> * 64,<gregtech:ga_cable:739> * 64,<gregtech:meta_item_1:12852> * 64)
    .fluidInputs(<liquid:soldering_alloy> *20736,<liquid:draconium> * 4608,<liquid:naquadah_alloy> * 4608)
    .outputs(<thermalfoundation:upgrade:1>)
    .duration(500)
    .EUt(33554432)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<draconicevolution:awakened_core> * 10,<gregtech:meta_item_1:12736> * 64,<gregtech:ga_cable:737>* 64,<gregtech:meta_item_1:12856> * 64)
    .fluidInputs(<liquid:soldering_alloy> *20736,<liquid:awaken_draconium> * 4608,<liquid:enriched_naquadah_alloy> * 4608)
    .outputs(<thermalfoundation:upgrade:2>)
    .duration(500)
    .EUt(33554432)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<draconicevolution:chaotic_core> * 10,<gregtech:meta_item_1:12735> * 64,<gregtech:ga_cable:726>* 64,<gregtech:meta_item_1:12720> * 64,<gregtech:meta_item_1:12720> * 64)
    .fluidInputs(<liquid:soldering_alloy> *20736,<liquid:chaos> * 4608,<liquid:naquadriatic_taranium> * 4608)
    .outputs(<thermalfoundation:upgrade:3>)
    .duration(500)
    .EUt(33554432)
    .buildAndRegister();
    //creative conversion kit

    assembly_line.recipeBuilder()
    .inputs(<thermalfoundation:upgrade> * 10,<thermalfoundation:upgrade:1>* 10,<thermalfoundation:upgrade:2>* 10,<thermalfoundation:upgrade:3>* 10)
    .fluidInputs(<liquid:naquadriatic_taranium> * 4608,<liquid:naquadriatic_taranium> * 4608,<liquid:enriched_naquadah_alloy> * 4608,<liquid:naquadah_alloy> * 4608)
    .outputs(<thermalfoundation:upgrade:256>)
    .duration(500)
    .EUt(33554432)
    .buildAndRegister();

    assembly_line.recipeBuilder()
    .inputs(<thermalfoundation:upgrade:256> * 32,<storagedrawers:upgrade_creative> * 32,<draconicevolution:draconium_capacitor:2>,<draconicevolution:draconium_capacitor:2>,<draconicevolution:draconium_capacitor:2>, <contenttweaker:refinedchaoscrystal> * 64, <contenttweaker:refinedchaoscrystal> * 64,<contenttweaker:certificate_of_being_a_noob>, <gtadditions:ga_meta_item:32339> * 20)
    .inputs(<draconicadditions:chaos_stabilizer_core>)
    .fluidInputs(<liquid:chaosalloy> * 144000)
    .outputs(<appliedenergistics2:creative_storage_cell>)
    .duration(2147483647)
    .EUt(1)
    .buildAndRegister();

    recipes.addShaped(<draconicadditions:chaos_stabilizer_core>, [[<draconicadditions:chaotic_helm>, <draconicadditions:chaotic_staff_of_power>, <draconicadditions:chaotic_chest>],[<draconicevolution:draconic_energy_core>, <draconicadditions:chaotic_energy_core>, <draconicevolution:draconic_energy_core>], [<draconicadditions:chaotic_legs>, <draconicadditions:chaotic_bow>, <draconicadditions:chaotic_boots>]]);

