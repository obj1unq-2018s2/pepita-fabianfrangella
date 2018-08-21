import comidas.*

/*
 * p.ej. pepita.comer(alpiste, 300) o pepita.comer(alcaucil, 50) 
 */
object pepita {

	var energia = 0

	method energia() {
		return energia
	}

	method comer(cosa, gramos) {
		energia += cosa.energiaPorGramo() * gramos
	}

	method volar(kms) {
		energia -= kms + 10
	}

	// metodos nuevos
	method estaDebil() {
		// si tiene menos de 50 energia esta debil :( 
		return energia < 50
	}

	method estaFeliz() {
		// si tiene mas de 500 energia y menos que mil esta feli' :)
		return energia >= 500 && energia <= 1000
	}

	method cuantoQuiereVolar() {
		// denota cuantos km quiere volar pepita
		var cuanto = self.energia() / 5
		if (energia.between(300, 400)) {
			cuanto += 10
		}
		if (energia % 20 == 0) {
			cuanto += 15
		}
		return cuanto
	}

	method salirAComer() {
		self.volar(5)
		self.comer(alpiste, 80)
		self.volar(5)
	}

	method haceLoQueQuieras() {
		if (self.estaDebil()) {
			self.comer(alpiste, 10)
		} else if (self.estaFeliz()) {
			self.volar(8)
		}
	}

}

