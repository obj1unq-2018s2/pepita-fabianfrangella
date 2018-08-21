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
			pupilos = pupilos + [ ave ]
		}
	}

	method dejarPupilo(ave) {
		if (pupilos.contains(ave)) {
			pupilos.remove(ave)
		}
	}

	// pupilosCapacesDeVolar(unosKms)` Es la colección de los pupilos de Roque, que son capaces de volar la cantidad de kilómetros indicada
	method pupilosCapacesDeVolar(unosKms) {
		pupilos.forEach{ pupilo =>
			if (pupilo.puedeVolar(unosKms)) {
				capaces = capaces + [ pupilo ]
			}
		}
		return capaces
	}

	method estaContento() {
		if (pupilos.size().between(1, 8)) {
			contento = true
		}
		return contento
	}

	method mejorEstudiante() {
		return pupilos.find{ pupilo => pupilo.puedeVolar(10) }
	}

}

