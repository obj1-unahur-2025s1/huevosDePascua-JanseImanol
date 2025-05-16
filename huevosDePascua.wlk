object huevoRepostero {
    const tipos = ["blanco"]
    method tipoDeChocolate() = tipos
    method cantCalorias() = 750 
}

object huevoMixto {
    const tipos = ["blanco","leche"]
    method tipoDeChocolate() = tipos
    method cantCalorias() = 900
}

object conejo {
    const tipos = ["amargo"]
    method tipoDeChocolate() = tipos
    var property peso = 10
    method cantCalorias() = peso * 10
}

object blisterHuevitos {
    const tipos = ["leche"]
    method tipoDeChocolate() = tipos

    var cantHuevosLeche = 0
    var cantHuevosBlanco = 0

    method agregarHuevos(unNumero) {
        cantHuevosLeche += unNumero
        if (cantHuevosLeche >= 5){
            cantHuevosBlanco = cantHuevosLeche.div(5)
            tipos.add("blanco")
        }
    } 

    method cantCalorias() = cantHuevosLeche * 100 + cantHuevosBlanco * 150
}

object matrioshka {
    const tipos =  huevoDentro.tipoDeChocolate() + ["amargo","leche"]
    method tipoDeChocolate() = tipos
    var property huevoDentro = huevoRepostero
    method cantCalorias() = 3000 + huevoDentro.cantCalorias() + decoracion.cantCalorias()
    var decoracion = arbol
    method ponerFLor(petalos) {
      decoracion = flor
      decoracion.cantPetalos(petalos)
    }
    method ponerArbol() {
      decoracion = arbol
    }
}

object arbol {
  method cantCalorias() = 150
}

object flor {
  var property cantPetalos = 0
  method cantCalorias() = cantPetalos * 100  
}
