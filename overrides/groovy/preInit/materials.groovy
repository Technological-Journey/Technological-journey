import classes.TJMaterials
import gregtech.api.unification.material.event.MaterialEvent

event_manager.listen { MaterialEvent event ->
    TJMaterials.init()
    TJMaterials.registerNuclearFuels()
    TJMaterials.addFlags()
}