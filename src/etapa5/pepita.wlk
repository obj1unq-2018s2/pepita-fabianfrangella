import comidas.*

/*
 * Agregar
 * - los objetos que representan a los posibles destinos
 * - la capacidad de Pepita de visitar un destino, modificando su energía.
 */
object pepita {

	var energia = 0

	method energia() {
		return energia
	}

	method comer(cosa, gramos) {
		energia += cosa.energiaPorGramo() * gramos
	}

	method visitar(destino) {
		energia += destino.energiaPorVisita(self)
	}

}

object patagonia {

	method energiaPorVisita(ave) {
		return 30
	}

}

object sierrasCordobesas {

	method energiaPorVisita(ave) {
		return 70
	}

}

object marDelPlata {

	/* Mar del Plata
	 * Agregar entre los lugares en los que pepita puede vacacionar a Mar del plata. 
	 * La energía revitalizadora que aporta depende de si se trata de temporada alta o baja.
	 * En temporada baja aporta 80 joules, mientras que en alta resta 20 joules. 
	 **TIP**: se puede pensar que en temporada alta la energía que aporta es -20. */
	method energiaPorVisita(ave) {
		if (temporada.esTemporadaAlta()) {
			return -20
		} else {
			return 80
		}
	}

// quien chequea si es temporada alta o baja? el objeto estacion
}

object noroeste {

	/* Noroeste
	 * Agregar entre los lugares en los que pepita puede vacacionar al Noroeste argentino. 
	 * La energia revitalizadora que aporta es el 10% de la energía del ave viajera. 

	 * *Cosas para pensar**: <br> 
	 * ¿Cómo sabe el noroeste la energía de pepita para aplicarle el 10%? 
	 * ¿Es necesario cambiar el mensaje? ¿Qué pasa con el resto de los lugares ya programados?

	 * *Hint** <br>
	 * *El 10% de un número se puede calcular como `<numero> * 0.1`. */
	method energiaPorVisita(ave) {
		return ave.energia() * 0.1
	}

// si solo pepita visita el noroeste, no hace falta cambiar el resto de los mensajes
// si queremos que todas las aves puedan visitarlo, hay que cambiar el method energiaPorVisita
// en todos los lugares, para que tome como parametro el ave que visita el lugar (self)
}

object temporada {

	var property esTemporadaAlta = true
	
}

