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
        registerNuclearFuels()
        addFlags()
    }

    private static void registerNuclearFuels() {
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

    private static void addFlags() {
        Materials.Protactinium.addFlags(MaterialFlags.GENERATE_FRAME)
        Materials.NeodymiumMagnetic.addFlags(MaterialFlags.GENERATE_GEAR)
        Materials.Osmium.addFlags(MaterialFlags.GENERATE_DENSE)
        Materials.Ruthenium.addFlags(MaterialFlags.GENERATE_DENSE)
        Materials.Cobalt.addFlags(MaterialFlags.GENERATE_GEAR)
        GCYLMaterials.Draconium.addFlags(MaterialFlags.GENERATE_DOUBLE_PLATE)
    }
}