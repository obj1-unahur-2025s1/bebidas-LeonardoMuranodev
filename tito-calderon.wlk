//Tito: personaje principal
object tito {
    var bebida = null

    method peso() = 70
}

//Bebidas / Sustancias
object whisky {
    method rendimiento(dosis) = 0.9 ** dosis
}

object terere {
  method rendimiento(dosis) = (0.1 * dosis).max(1)
}

//Cianuro no usa el parametro, pero debe tenerlo para que se respete el polimorfismo, 
//y que el metodo sea igual a de las demas bebidas, con nombre y parametros iguales
object cianuro {
  method rendimiento(dosis) = 0

}