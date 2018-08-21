object alpiste {

	method energiaPorGramo() {
		return 4
	}

}

object mondongo {

	method energiaPorGramo() {
		return 100
	}

}

// comida que esta fallada
object bigMac {

	method energiaPorGramo() {
		return 2
	}

}

/*
 * el alcaucil da 20 joules por gramo
 */
object alcaucil {

	method energiaPorGramo() {
		return 20
	}

}

/*
 * el sorgo da 9 joules por gramo
 */
object sorgo {

	method energiaPorGramo() {
		return 9
	}

}

object mijo {

	/*Si el mijo está mojado da 15 joules por gramo, si no da 20. 
	 * Hacer que el mijo entienda los mensajes mojarse() y secarse().
	 *  P.ej. arrancando un REPL de cero, debería funcionar como se muestra abajo
	 */
	/*la primera vez que Pepita come mijo, es mijo mojado, entonces da 15 joules por gramo; 
	 * 10 gramos hacen 150 joules. La segunda, el mijo está seco, entonces da 20 joules por gramo; 
	 * 10 gramos hacen 200 joules, más 150 que tenía, hacen 350.
	 */
	var estaMojado

	method mojarse() {
		estaMojado = true
	}

	method secarse() {
		estaMojado = false
	}

	method energiaPorGramo() {
		if (estaMojado) {
			return 15
		} else {
			return 20
		}
	}

}

object canelones {

	/* Los canelones dan 20 joules por gramo de base. 
	 * Si tienen salsa, sumar 5 joules. 
	 * Si tienen queso, sumar 7. 
	 * Entonces tenemos: sin nada 20 joules, con salsa 25, con queso 27, con salsa y queso 32.

	 * Debe ser posible poner o sacar salsa, y poner o sacar queso, 
	 * enviándole mensajes al objeto que representa a los canelones. 
	 * Se puede hacer agregando 4 métodos, uno por cada una de las cuatro opciones posibles. */
	var tieneQueso = false
	var tieneSalsa = false

	method ponerQueso() {
		tieneQueso = true
	}

	method sacarQueso() {
		tieneQueso = false
	}

	method ponerSalsa() {
		tieneSalsa = true
	}

	method sacarSalsa() {
		tieneSalsa = false
	}

	method energiaPorGramo() {
		if (tieneQueso && !tieneSalsa) {
			return 27
		} else if (tieneSalsa && !tieneQueso) {
			return 25
		} else if (tieneQueso && tieneSalsa) {
			return 32
		}
		return 20
	}

}

