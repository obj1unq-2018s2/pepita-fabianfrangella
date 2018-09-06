/*
 * Copiar pepita.wlk y comidas.wlk desde etapa3
 */
import pepita.*
import comidas.*
import masAves.*

object roque {

	var nombre = 'Roque'
	var pupilos = []
	var capaces = []
	var contento = false

	method nombre() {
		return nombre.toString()
	}

	method pupilosActuales() {
		return pupilos
	}

	method entrenar() {
		pupilos.forEach{ pupilo =>
			pupilo.volar(10)
			pupilo.comer(alpiste, 300)
			pupilo.volar(5)
			pupilo.haceLoQueQuieras()
		}
	}

	method agregarPupilo(ave) {
		if (pupilos.contains(ave)) {
			console.println("roque ya tiene como pupilo a: " + ave.toString())
		} else {
			// TODO No es necesario generar una nueva colección, las colecciones son mutables en Wollok
			pupilos = pupilos + [ ave ]
		}
	}

	method dejarPupilo(ave) {
		// TODO ¿Es necesario este if? ¿Por qué?
		if (pupilos.contains(ave)) {
			pupilos.remove(ave)
		}
	}

	// pupilosCapacesDeVolar(unosKms)` Es la colección de los pupilos de Roque, que son capaces de volar la cantidad de kilómetros indicada
	method pupilosCapacesDeVolar(unosKms) {
		pupilos.forEach{ pupilo =>
			if (pupilo.puedeVolar(unosKms)) {
				// TODO OJO! Es incorrecto usar la variable capaces de esta manera.
				capaces = capaces + [ pupilo ]
			}
		}
		return capaces
	}

	method estaContento() {
		if (pupilos.size().between(1, 8)) {
			// TODO MUCHO OJO!!! Estás usando un atributo incorrectamente, nadie usa la variable contento fuera de este método.
			// De hecho no es necesario tener una variable, es incorrecto. 
			contento = true
		}
		return contento
	}

	method mejorEstudiante() {
		return pupilos.find{ pupilo => pupilo.puedeVolar(10) }
	}

}

