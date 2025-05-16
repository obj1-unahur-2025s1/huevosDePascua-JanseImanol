import huevosDePascua.*
import terreno.*
object ana {
    const huevosComidos = []
    method estaEnfermo() = self.caloriasConsumidas() > 5000 or huevosComidos.any({h=>h.tipoDeChocolate().any({t=>t == "blanco"})})
    method caloriasConsumidas() = huevosComidos.sum({h=>h.cantCalorias()})

    

    method comerHuevo(){
        huevosComidos.add(terreno.huevosEscondidos().first())
        terreno.sacarPrimerHuevo()
    }
}

object jose {
    const huevosComidos = []
    method estaEnfermo() = huevosComidos.any({h=>h.tipoDeChocolate().any({t=>t == "amargo"})})
    
    method comerHuevo() {
        huevosComidos.clear()
        huevosComidos.add(terreno.huevosEscondidos().first())
        terreno.sacarPrimerHuevo()
    } 
}

object tito {
    method estaEnfermo() = false    
    method comerHuevo() {
        terreno.sacarPrimerHuevo() // el terreno deveria sacar los huevos de la lista s
    } 
}