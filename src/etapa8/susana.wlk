/*
 * Traer, e importar, los objetos de la etapa 4.
 */
import comidas.*
import masAves.*
import pepita.*
import roque.*

object susana {

	var nombre = 'Susana'
	var pupilo
	var contenta = false

	method nombre() {
		return nombre.toString()
	}

	method tuPupiloEs(ave) {
		pupilo = ave
	}

	method pupiloActual() {
		return pupilo
	}

	method entrenar() {
		pupilo.comer(alpiste, 100)
		pupilo.volar(20)
	}

	method estaContento() {
		if (self.pupiloActual().puedeVolar(10)) {
			contenta = true
		}
		return contenta
	}

	method mejorEstudiante() {
		return pupilo
	}

} // implementar

