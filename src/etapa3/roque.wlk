/*
 * Copiar pepita.wlk y comidas.wlk desde etapa2
 * # Parte 3 - Entrenamiento de Pepita

Roque es el entrenador de Pepita. Cuando entrena a un pepita usa su rutina para aves diseñada por él.
1. Volar 10 kms.
2. Comer 300 gramos de alpiste.
3. Volar 5 kms.
4. Que el ave haga lo que quiera (ver parte 2, al final) como premio.

Se pide modelar a Roque en objetos y que entienda el mensaje `entrenar()`.

 
 */
 
import pepita.*
import comidas.*

object roque {
	method entrenar(ave) { 
		ave.volar(10)
		ave.comer(alpiste,300)
		ave.volar(5)
		ave.haceLoQueQuieras()
	}  
}