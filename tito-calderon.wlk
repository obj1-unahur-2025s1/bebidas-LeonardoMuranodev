//Tito calderon: personaje principal
object tito {
    //variables
    var bebida = null
    var cantidad = 0

    //métodos de consulta
    method peso() = 70
    method inerciaBase() = 490
    method velocidad() = bebida.rendimiento(cantidad) * self.inerciaBase() / self.peso()
    /*Tambien podria ser: self.bebida().rendimiento(cantidad) * self.inerciaBase() / self.peso()
    si existiese el mensaje bebida(), esto es mas de los lenguajes puros de objetos*/

    //Si quiero saber algo de un objeto dentro de otro objeto, debo usar el mensaje

    //método de indicación
    //Le pongo unaBebida y unaCantidad porque ya la variables se llaman bebida y cantidad
    method consumir(unaCantidad, unaBebida) {
      bebida = unaBebida
      cantidad = unaCantidad
    }
}

//Bebidas / Sustancias
object whisky {
    method rendimiento(cantidad) = 0.9 ** cantidad
}

object terere {
  method rendimiento(cantidad) = (0.1 * cantidad).max(1)
}

//Cianuro no usa el parametro, pero debe tenerlo para que se respete el polimorfismo, 
//y que el metodo sea igual a de las demas bebidas, con nombre y parametros iguales
object cianuro {
  method rendimiento(cantidad) = 0

}