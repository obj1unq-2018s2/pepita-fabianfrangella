/*## Instituto de Entrenamiento 
 * Modelar un instituto que posee entrenadores. El instituto puede contratar o desvincular a uno o varios entrenadores.

 * Hacer que el instituto entienda los siguientes mensajes:
 * - `contratar(entrenador)`: Agrega un entrenador al instrituto.
 * - `prescindir(entrenador)`: Remueve un entrenador del instituto.   
 * - `entrenamientoGeneral()`: Todos los entrenadores entrean a su/s pupilo/s.
 * - `buenAmbiente()`: El instituto tiene buen ambiente si todos sus entrenadores están contentos. Susana está contenta si su ave puede volar más de 5 kilómetros. Roque está contento si entrena a más de un ave y a menos de 8.  
 * - `mejoresEstudiantes()`: Es el conjunto formado por el mejor estudiante elegido para cada entrenador. El mejor estudiante de Susana es su único pupilo. Roque elige como mejor estudiante a cualquiera de sus pupilos que pueda volar más de 10 kilometros. 
 *   

 * Escribir los tests necesarios probando al instituto con Roque y Susana como entrenadores. Susana entrena a Pepita y Roque a Pipa y Pipón. 
 * Dibujar el diagrama de objetos.
 */
import roque.*
import comidas.*
import masAves.*
import pepita.*
import susana.*

object instituto {

	var entrenadores = []
	var estudiantes = []

	method contratar(entrenador) {
		if (entrenadores.contains(entrenador)) {
			console.println("el instituto ya tiene al entrenador: " + entrenador.nombre())
		} else {
			entrenadores = entrenadores + [ entrenador ]
		}
	}

	method prescindir(entrenador) {
		if (entrenadores.contains(entrenador)) {
			entrenadores.remove(entrenador)
		}
	}

	method entrenamientoGeneral() {
		entrenadores.forEach{ entrenador => entrenador.entrenar()}
	}

	method buenAmbiente() {
		return entrenadores.all{ entrenador => entrenador.estaContento() }
	}

	method mejoresEstudiantes() {
		entrenadores.forEach{
			entrenador => estudiantes = estudiantes + [entrenador.mejorEstudiante()] 
		}
		// por alguna razon me duplica los estudiantes por entrenador, preguntar al profe
		return estudiantes.withoutDuplicates() 
	}

} 

