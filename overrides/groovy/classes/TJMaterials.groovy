import com.fulltrix.gcyl.materials.GCYLMaterials
import com.fulltrix.gcyl.materials.GCYLNuclearMaterials
import gregtech.api.fluids.FluidBuilder
import gregtech.api.fluids.FluidState
import gregtech.api.fluids.store.FluidStorageKeys
import gregtech.api.unification.material.Material
import gregtech.api.unification.material.Materials
import gregtech.api.unification.material.info.MaterialFlags
import gregtech.api.unification.material.info.MaterialIconSet
import gregtech.api.unification.material.properties.BlastProperty
import gregtech.integration.groovy.MaterialPropertyExpansion
import supercritical.api.unification.material.SCMaterials
import supercritical.api.unification.material.properties.FissionFuelProperty
import supercritical.api.unification.material.properties.SCPropertyKey

class TJMaterials {
    public static Material PahoehoeLava
    public static Material StarMetalAlloy
    public static Material RawChaos
    public static Material DraconicStemCell
    public static Material EternityPreparation
    public static Material Eternity
    public static Material HMX
    public static Material NaquadricFuelCatalyst
    public static Material Octaazacubane
    public static Material OctaazacubaneSolution
    public static Material StarlightComplex
    public static Material ExplosiveHydrazineMixture
    public static Material StarlightRocketFuel
    public static Material StellarAlloy
    public static Material UnfiredClay
    public static Material Uranium234
    public static Material Neptunium235
    public static Material Americium245
    public static Material Curium246
    public static Material Berkelium247
    public static Material Berkelium249
    public static Material Berkelium251
    public static Material Californium256
    public static Material Einsteinium255
    public static Material Einsteinium257
    public static Material Fermium262
    public static Material Mendelevium259
    public static Material Mendelevium263
    public static Material NuclearWaste
    public static Material LanthanideGroupAWaste
    public static Material LanthanideGroupBWaste
    public static Material AlkalineWaste
    public static Material HeavyMetalWaste
    public static Material MetalGroupAWaste
    public static Material MetalGroupBWaste
    public static Material MetalGroupCWaste
    public static Material NonmetalWaste
    public static Material MetaloidWaste
    public static Material UraniumWaste
    public static Material NeptuniumWaste
    public static Material PlutoniumWaste
    public static Material AmericiumWaste
    public static Material CuriumWaste
    public static Material BerkeliumWaste
    public static Material CaliforniumWaste
    public static Material EinsteiniumWaste
    public static Material FermiumWaste
    public static Material MendeleviumWaste

    static void init() {
        PahoehoeLava = Material.builder(10000, resource(getPackId(), 'pahoehoe_lava'))
                .fluid(FluidStorageKeys.LIQUID, FluidState.LIQUID)
                .color(0x964B00)
                .flags(MaterialFlags.GLOWING)
                .build()
        StarMetalAlloy = Material.builder(10001, resource(getPackId(), 'star_metal_alloy'))
                .color(0x050A30)
                .iconSet(MaterialIconSet.SHINY)
                .liquid(new FluidBuilder().temperature(7000))
                .ingot(3)
                .dust()
                .flags(MaterialFlags.GENERATE_PLATE, MaterialFlags.GENERATE_DOUBLE_PLATE)
                .blast(b -> b.temp(7000, BlastProperty.GasTier.HIGH)
                        .blastStats(8000, 1716)
                        .vacuumStats(8000, 438))
                .build()
        RawChaos = Material.builder(10002, resource(getPackId(), 'raw_chaos'))
                .color(0x000000)
                .liquid()
                .build()
        DraconicStemCell = Material.builder(10003, resource(getPackId(), 'draconic_stem_cell'))
                .color(0xFF0000)
                .liquid()
                .build()
        EternityPreparation = Material.builder(10004, resource(getPackId(), 'eternity_preparation'))
                .color(0x46008B)
                .iconSet(MaterialIconSet.SHINY)
                .dust()
                .build()
        Eternity = Material.builder(10005, resource(getPackId(), 'eternity'))
                .color(0x46008B)
                .plasma()
                .build()
        HMX = Material.builder(10006, resource(getPackId(), 'hmx'))
                .color(0xF3FFDB)
                .iconSet(MaterialIconSet.SHINY)
                .dust()
                .build()
        NaquadricFuelCatalyst = Material.builder(10007, resource(getPackId(), 'naquadric_fuel'))
                .color(0x130642)
                .iconSet(MaterialIconSet.SHINY)
                .dust()
                .build()
        Octaazacubane = Material.builder(10008, resource(getPackId(), 'octaazacubane'))
                .color(0x5F5FD9)
                .iconSet(MaterialIconSet.SHINY)
                .dust()
                .build()
        OctaazacubaneSolution = Material.builder(10009, resource(getPackId(), 'octaazacubane_solution'))
                .color(0x5F5FD9)
                .iconSet(MaterialIconSet.SHINY)
                .liquid()
                .build()
        StarlightComplex = Material.builder(10010, resource(getPackId(), 'starlight_complex'))
                .color(0xE1FAF7)
                .liquid()
                .build()
        ExplosiveHydrazineMixture = Material.builder(10011, resource(getPackId(), 'explosive_hydrazine'))
                .color(0x3B0C5C)
                .liquid()
                .build()
        StarlightRocketFuel = Material.builder(10012, resource(getPackId(), 'starlight_fuel'))
                .color(0xDF362D)
                .iconSet(MaterialIconSet.SHINY)
                .liquid()
                .build()
        StellarAlloy = Material.builder(10013, resource(getPackId(), 'stellar_alloy'))
                .color(0xFFEFB5)
                .liquid()
                .build()
        UnfiredClay = Material.builder(10014, resource(getPackId(), 'unfired_clay'))
                .iconSet(MaterialIconSet.ROUGH)
                .color(0x51010A)
                .dust(1)
                .build()
        Uranium234 = Material.builder(10015, resource(getPackId(), 'uranium_234'))
                .iconSet(MaterialIconSet.METALLIC)
                .color(0x32F032)
                .dust(3)
                .build()
        Neptunium235 = Material.builder(10016, resource(getPackId(), 'neptunium_235'))
                .iconSet(MaterialIconSet.METALLIC)
                .color(0x284D7B)
                .dust()
                .build()
        Americium245 = Material.builder(10017, resource(getPackId(), 'americium_245'))
                .iconSet(MaterialIconSet.METALLIC)
                .color(0x287869)
                .dust()
                .build()
        Curium246 = Material.builder(10018, resource(getPackId(), 'curium_246'))
                .iconSet(MaterialIconSet.METALLIC)
                .color(0x7B544E)
                .dust()
                .build()
        Berkelium247 = Material.builder(10019, resource(getPackId(), 'berkelium_247'))
                .iconSet(MaterialIconSet.METALLIC)
                .color(0x645A88)
                .dust()
                .build()
        Berkelium249 = Material.builder(10020, resource(getPackId(), 'berkelium_249'))
                .iconSet(MaterialIconSet.METALLIC)
                .color(0x645A88)
                .dust()
                .build()
        Berkelium251 = Material.builder(10021, resource(getPackId(), 'berkelium_251'))
                .iconSet(MaterialIconSet.METALLIC)
                .color(0x645A88)
                .dust()
                .build()
        Californium256 = Material.builder(10022, resource(getPackId(), 'californium_256'))
                .iconSet(MaterialIconSet.METALLIC)
                .color(0xA85A12)
                .dust()
                .build()
        Einsteinium255 = Material.builder(10023, resource(getPackId(), 'einsteinium_255'))
                .iconSet(MaterialIconSet.METALLIC)
                .color(0xCE9F00)
                .dust()
                .build()
        Einsteinium257 = Material.builder(10024, resource(getPackId(), 'einsteinium_257'))
                .iconSet(MaterialIconSet.METALLIC)
                .color(0xCE9F00)
                .dust()
                .build()
        Fermium262 = Material.builder(10025, resource(getPackId(), 'fermium_262'))
                .iconSet(MaterialIconSet.METALLIC)
                .color(0x984ACF)
                .dust()
                .build()
        Mendelevium259 = Material.builder(10026, resource(getPackId(), 'mendelevium_259'))
                .iconSet(MaterialIconSet.METALLIC)
                .color(0x1D4ACF)
                .dust()
                .build()
        Mendelevium263 = Material.builder(10027, resource(getPackId(), 'mendelevium_263'))
                .iconSet(MaterialIconSet.METALLIC)
                .color(0x1D4ACF)
                .dust()
                .build()
        NuclearWaste = Material.builder(10028, resource(getPackId(), 'nuclear_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0xEDEDED)
                .gem()
                .build()
        LanthanideGroupAWaste = Material.builder(10029, resource(getPackId(), 'lanthanide_group_a_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0xE2E2E2)
                .gem()
                .build()
        LanthanideGroupBWaste = Material.builder(10030, resource(getPackId(), 'lanthanide_group_b_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0xB3B3B3)
                .gem()
                .build()
        AlkalineWaste = Material.builder(10031, resource(getPackId(), 'alkaline_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0xFAFAFA)
                .gem()
                .build()
        HeavyMetalWaste = Material.builder(10032, resource(getPackId(), 'heavy_metal_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0x00B4E0)
                .gem()
                .build()
        MetalGroupAWaste = Material.builder(10033, resource(getPackId(), 'metal_group_a_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0x3F4040)
                .gem()
                .build()
        MetalGroupBWaste = Material.builder(10034, resource(getPackId(), 'metal_group_b_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0x6C6A6A)
                .gem()
                .build()
        MetalGroupCWaste = Material.builder(10035, resource(getPackId(), 'metal_group_c_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0x9A9897)
                .gem()
                .build()
        NonmetalWaste = Material.builder(10036, resource(getPackId(), 'nonmetal_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0x9A9897)
                .gem()
                .build()
        MetaloidWaste = Material.builder(10037, resource(getPackId(), 'metaloid_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0xFF412E)
                .gem()
                .build()
        UraniumWaste = Material.builder(10038, resource(getPackId(), 'uranium_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0x32F032)
                .gem()
                .build()
        NeptuniumWaste = Material.builder(10039, resource(getPackId(), 'neptunium_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0x284D7B)
                .gem()
                .build()
        PlutoniumWaste = Material.builder(10040, resource(getPackId(), 'plutonium_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0xF03232)
                .gem()
                .build()
        AmericiumWaste = Material.builder(10041, resource(getPackId(), 'americium_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0x287869)
                .gem()
                .build()
        CuriumWaste = Material.builder(10042, resource(getPackId(), 'curium_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0x7B544E)
                .gem()
                .build()
        BerkeliumWaste = Material.builder(10043, resource(getPackId(), 'berkelium_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0x645A88)
                .gem()
                .build()
        CaliforniumWaste = Material.builder(10044, resource(getPackId(), 'californium_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0xA85A12)
                .gem()
                .build()
        EinsteiniumWaste = Material.builder(10045, resource(getPackId(), 'einsteinium_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0xCE9F00)
                .gem()
                .build()
        FermiumWaste = Material.builder(10046, resource(getPackId(), 'fermium_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0x984ACF)
                .gem()
                .build()
        MendeleviumWaste = Material.builder(10047, resource(getPackId(), 'mendelevium_waste'))
                .flags(MaterialFlags.EXPLOSIVE)
                .iconSet(MaterialIconSet.LIGNITE)
                .color(0x1D4ACF)
                .gem()
                .build()
    }

    static void registerNuclearFuels() {
        Materials.Uranium235.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(Materials.Uranium235.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())
        Materials.Uranium238.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(Materials.Uranium238.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())
        // uranium 234 doesn't have fuel rod

        SCMaterials.Neptunium239.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(SCMaterials.Neptunium239.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())
        SCMaterials.Neptunium237.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(SCMaterials.Neptunium237.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())
        // neptunium 235 doesn't have fuel rod

        Materials.Plutonium239.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(Materials.Plutonium239.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())
        Materials.Plutonium241.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(Materials.Plutonium241.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())

        Americium245.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(Americium245.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())
        GCYLNuclearMaterials.Americium243.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(GCYLNuclearMaterials.Americium243.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())

        GCYLNuclearMaterials.Curium250.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(GCYLNuclearMaterials.Curium250.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())

        Berkelium249.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(Berkelium249.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())
        Berkelium251.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(Berkelium251.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())

        GCYLNuclearMaterials.Californium252.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(GCYLNuclearMaterials.Californium252.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())
        GCYLNuclearMaterials.Californium253.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(GCYLNuclearMaterials.Californium253.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())
        Californium256.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(Californium256.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())

        Einsteinium255.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(Einsteinium255.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())
        Einsteinium257.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(Einsteinium257.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())

        Fermium262.setProperty(SCPropertyKey.FISSION_FUEL,
                FissionFuelProperty.builder(Fermium262.getRegistryName(), 1500, 75000, 3.5)
                        .fastNeutronCaptureCrossSection(0.4).slowNeutronCaptureCrossSection(1.8)
                        .slowNeutronFissionCrossSection(1.8).requiredNeutrons(1).releasedNeutrons(2.5)
                        .releasedHeatEnergy(0.025).decayRate(0.025).build())
    }

    static void addFlags() {
        Materials.Protactinium.addFlags(MaterialFlags.GENERATE_FRAME)
        Materials.NeodymiumMagnetic.addFlags(MaterialFlags.GENERATE_GEAR)
        Materials.Osmium.addFlags(MaterialFlags.GENERATE_DENSE)
        Materials.Ruthenium.addFlags(MaterialFlags.GENERATE_DENSE)
        Materials.Cobalt.addFlags(MaterialFlags.GENERATE_GEAR)
        GCYLMaterials.Draconium.addFlags(MaterialFlags.GENERATE_DOUBLE_PLATE)
        MaterialPropertyExpansion.addDust(Materials.Neptunium)
        MaterialPropertyExpansion.addDust(Materials.Californium)
        MaterialPropertyExpansion.addIngot(SCMaterials.Plutonium244)
    }
}