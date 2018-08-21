import comidas.*

object pepon {

	// aca falta un atributo
	/***Pepón** es un gorrión que también sabe comer, volar y hacer lo que quiera, 
	 * pero lo hace de manera diferente a Pepita.
	 * 
	 *     _comer_: 
	 * El aparato digestivo de Pepón anda bastante peor que el de Pepita, 
	 * por eso puede aprovechar sólo la mitad de la energía que aporta el alimento.
	 *  Por ejemplo, si come 20 gramos de alpiste, en lugar de aumentar su energia en 80 joules, solamente aumenta 40.
	 * _volar_: 
	 * Gasta 1 joule fijo y 0.5 joules por cada kilómetro recorrido.
	 * _hacer lo que quiera_: 
	 * Pepón siempre vuela 1 km en este caso.
	 */
	// aca falta un atributo
	var energia = 0

	method comer(cosa, cuanto) {
		energia += (cosa.energiaPorGramo() * cuanto) / 2
	}

	method volar(kms) {
		energia -= (kms / 2) + 1
	}

	method haceLoQueQuieras() {
		self.volar(1)
	}

	method energia() {
		return energia
	}

	method puedeVolar(unosKms) {
		return energia >= 1 + (unosKms * 0.5)
	}

}

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {

	/***Pipa** es una paloma de la cual no nos interesa controlar su energía, 
	 * sino que simplemente recuerde el acumulado de cuántos kms vuela y cuántos gramos de comida 
	 * (sin importar de dqué se trate) ingiere. 
	 * Esta información se puede consultar a través de los mensajes `kmsRecorridos()` y `gramosIngeridos()`. 
	 * Cuando le piden que haga lo que quiera, Pipa no hace nada.
	 * 
	 */
	var kilometros = 0
	var gramos = 0

	method volar(kms) {
		kilometros = kilometros + kms
	}

	method comer(cosa, cuanto) {
		gramos = gramos + cuanto
	}

	method kmsRecorridos() {
		return kilometros
	}

	method gramosIngeridos() {
		return gramos
	}

	method haceLoQueQuieras() {
	} // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código
	// porque si no tiene este metodo roque no puede entrenarla

	method puedeVolar(unosKms) {
		return true
	}

}

