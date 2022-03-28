
##Code courtesy of wsetzer
##Taken from issue Nomifactory #868 PR and modified by Lizayu#3386, blame her if it's shit

import crafttweaker.item.IItemDefinition;
import crafttweaker.formatting.IFormattedText;

val fusedQuartz		= [
    <enderio:block_fused_quartz>			.definition,
    <enderio:block_enlightened_fused_quartz>		.definition,
    <enderio:block_dark_fused_quartz>			.definition,
    <enderio:block_holy_fused_quartz>			.definition,
    <enderio:block_holy_enlightened_fused_quartz>	.definition,
    <enderio:block_holy_dark_fused_quartz>		.definition,
    <enderio:block_unholy_fused_quartz>			.definition,
    <enderio:block_unholy_enlightened_fused_quartz>	.definition,
    <enderio:block_unholy_dark_fused_quartz>		.definition,
    <enderio:block_pasture_fused_quartz>		.definition,
    <enderio:block_pasture_enlightened_fused_quartz>	.definition,
    <enderio:block_pasture_dark_fused_quartz>		.definition,
    <enderio:block_not_holy_fused_quartz>		.definition,
    <enderio:block_not_holy_enlightened_fused_quartz>	.definition,
    <enderio:block_not_holy_dark_fused_quartz>		.definition,
    <enderio:block_not_unholy_fused_quartz>		.definition,
    <enderio:block_not_unholy_enlightened_fused_quartz>	.definition,
    <enderio:block_not_unholy_dark_fused_quartz>	.definition,
    <enderio:block_not_pasture_fused_quartz>		.definition,
    <enderio:block_not_pasture_enlightened_fused_quartz>.definition,
    <enderio:block_not_pasture_dark_fused_quartz>	.definition
] as IItemDefinition[];

val fusedGlass		= [
    <enderio:block_fused_glass>				.definition,
    <enderio:block_enlightened_fused_glass>		.definition,
    <enderio:block_dark_fused_glass>			.definition,
    <enderio:block_holy_fused_glass>			.definition,
    <enderio:block_holy_enlightened_fused_glass>	.definition,
    <enderio:block_holy_dark_fused_glass>		.definition,
    <enderio:block_unholy_fused_glass>			.definition,
    <enderio:block_unholy_enlightened_fused_glass>	.definition,
    <enderio:block_unholy_dark_fused_glass>		.definition,
    <enderio:block_pasture_fused_glass>			.definition,
    <enderio:block_pasture_enlightened_fused_glass>	.definition,
    <enderio:block_pasture_dark_fused_glass>		.definition,
    <enderio:block_not_holy_fused_glass>		.definition,
    <enderio:block_not_holy_enlightened_fused_glass>	.definition,
    <enderio:block_not_holy_dark_fused_glass>		.definition,
    <enderio:block_not_unholy_fused_glass>		.definition,
    <enderio:block_not_unholy_enlightened_fused_glass>	.definition,
    <enderio:block_not_unholy_dark_fused_glass>		.definition,
    <enderio:block_not_pasture_fused_glass>		.definition,
    <enderio:block_not_pasture_enlightened_fused_glass>	.definition,
    <enderio:block_not_pasture_dark_fused_glass>	.definition
] as IItemDefinition[];

val gtFrame		= [
    <gregtech:frame_hssg>				.definition,
    <gregtech:frame_bronze>				.definition,
    <gregtech:frame_darmstadtium>			.definition,
    <gregtech:frame_aluminium>				.definition,
    <gregtech:frame_tungsten_steel>			.definition,
    <gregtech:frame_invar>				.definition,
    <gregtech:frame_wood>				.definition,
    <gregtech:frame_stainless_steel>			.definition,
    <gregtech:frame_steel>				.definition,
    <gregtech:frame_blue_steel>				.definition,
    <gregtech:frame_hsse>				.definition,
    <gregtech:frame_neutronium>				.definition,
    <gregtech:frame_iron>				.definition,
    <gregtech:frame_titanium>				.definition,
    <gregtech:frame_tritanium>				.definition
] as IItemDefinition[];

val gcyFrame = [
    <gregtech:frame_seaborgium>.definition,
    <gregtech:frame_metastable_hassium>.definition,
    <gregtech:frame_draconium>.definition,
    <gregtech:frame_proto_adamantium>.definition,
    <gregtech:frame_cinobite>.definition,
    <gregtech:frame_staballoy>.definition,
    <gregtech:frame_chaos>.definition,
    <gregtech:frame_qcd_confined_matter>.definition,
    <gregtech:frame_bohrium>.definition,
    <gregtech:frame_incoloy_ma>.definition,
    <gregtech:frame_potin>.definition,
    <gregtech:frame_americium>.definition,
    <gregtech:frame_lafium>.definition,
    <gregtech:frame_grisium>.definition,
    <gregtech:frame_heavy_quark_degenerate_matter>.definition,
    <gregtech:frame_protactinium>.definition,
    <gregtech:frame_black_titanium>.definition,
    <gregtech:frame_hastelloy_n>.definition,
    <gregtech:frame_lead>.definition,
    <gregtech:frame_nitinol_a>.definition,
    <gregtech:frame_cosmic_neutronium>.definition,
    <gregtech:frame_trinium_titanium>.definition,
    <gregtech:frame_berkelium>.definition,
    <gregtech:frame_awaken_draconium>.definition,
    <gregtech:frame_zeron>.definition,
    <gregtech:frame_trinium>.definition,
    <gregtech:frame_metastable_flerovium>.definition,
    <gregtech:frame_eglin_steel>.definition,
    <gregtech:frame_hastelloy_k243>.definition,
    <gregtech:frame_titan_steel>.definition,
    <gregtech:frame_stellite>.definition,
    <gregtech:frame_taranium>.definition,
    <gregtech:frame_fermium>.definition,
    <gregtech:frame_uranium_radioactive>.definition,
    <gregtech:frame_mendelevium>.definition,
    <gregtech:frame_hdcs>.definition,
    <gregtech:frame_ruridit>.definition,
    <gregtech:frame_hg_alloy>.definition,
    <gregtech:frame_adamantium>.definition,
    <gregtech:frame_einsteinium>.definition,
    <gregtech:frame_neptunium>.definition,
    <gregtech:frame_talonite>.definition,
    <gregtech:frame_inconel_b>.definition,
    <gregtech:frame_incoloy813>.definition,
    <gregtech:frame_californium>.definition,
    <gregtech:frame_quantum>.definition,
    <gregtech:frame_tumbaga>.definition,
    <gregtech:frame_inconel_a>.definition,
    <gregtech:frame_vibranium>.definition,
    <gregtech:frame_plutonium_radioactive>.definition,
    <gregtech:frame_hastelloy_x78>.definition,
    <gregtech:frame_pikyonium>.definition,
    <gregtech:frame_tungsten_titanium_carbide>.definition,
    <gregtech:frame_maraging_steel_a>.definition,
    <gregtech:frame_babbitt_alloy>.definition,
    <gregtech:frame_duranium>.definition,
    <gregtech:frame_lithium_titanate>.definition,
    <gregtech:frame_hsss>.definition,
    <gregtech:frame_black_steel>.definition,
    <gregtech:frame_red_steel>.definition,
    <gregtech:frame_enriched_naquadah_alloy>.definition,
    <gregtech:frame_naquadria>.definition,
    <gregtech:frame_curium>.definition,
    <gregtech:frame_thorium>.definition,
    <gregtech:frame_polytetrafluoroethylene>.definition,
    <gregtech:frame_zirconium_carbide>.definition,
    <gregtech:frame_metastable_oganesson>.definition,
    

] as IItemDefinition[];


val allArrays		= [
    fusedQuartz,
    fusedGlass,
    gtFrame,
    gcyFrame
] as IItemDefinition[][];

var colorDesc = "Most colours for this item are hidden to reduce clutter." as IFormattedText;


for array in allArrays {
    for item in array {
        item.defaultInstance.addTooltip(format.darkAqua(colorDesc));

        for color in 1 .. 16 {
            mods.jei.JEI.hide(item.makeStack(color));
            
        }
    }
}
