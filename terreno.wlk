import chicos.*
import huevosDePascua.*

object terreno {
  const huevosEscondidos = []
  method huevosEscondidos() = huevosEscondidos 

  method esconderHuevo(unHuevo) {
    huevosEscondidos.add(unHuevo)
  }

  method sacarPrimerHuevo() {
    huevosEscondidos.remove(huevosEscondidos.first())
  }

  method faltanEncontrar() = huevosEscondidos.size() 
  method fueEncontrado(unHuevo) = huevosEscondidos.find({h=> h == unHuevo})   
  method faltanBlancos() = huevosEscondidos.filter({h=>h.tipoDeChocolate().any({t=>t == "blanco"})}).size() 
  method huevoDeMayorCalorias() = huevosEscondidos.max({h=>h.cantCalorias()}) 
}