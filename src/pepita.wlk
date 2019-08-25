// Etapa 1
object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
// Etapa 2	
	method estaFeliz() {
		return energia.between(100, 500)
	}
	
	method energiaEntre300_400(){
		if(energia.between(300, 400))
		return 10
		else return 0
	}
	
	method energiaMultiplo20(){
		if(energia % 20 == 0)
			return 15
		else return 0
	}
	
	method cuantoQuiereVolar(){
		return (energia / 5) + self.energiaEntre300_400() + self.energiaMultiplo20()
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(20)
	}
	
	method haceLoQueQuieras(){
		if(self.estaFeliz())
			self.vola(8)
		else if(self.estaCansada())
			self.come(alpiste)
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}
}

object mijo {
	var estado = "seco"
	
	method energiaQueOtorga(){
		if(self.estaMojado())
			return 15
		else return 20
	}
	
	method estaMojado(){
		return estado == "mojado"
	}
	
	method mojarse(){
		estado = "mojado"
	}
	
	method secarse(){
		estado = "seco"
	}
}	

object canelones {
	var queso = false
	var salsa = false
	
	method energiaQueOtorga(){
		return 20 + self.energiaQueso() + self.energiaSalsa()
	}
	
	method energiaQueso(){
		if(queso)
			return 7
		else return 0
	}
	
	method energiaSalsa(){
		if(salsa)
			return 5
		else return 0
	}
	
	method agregarQueso(){
		queso = true 	
	}
	
	method agregarSalsa(){
		salsa = true	
	}
	
	method quiatrQueso(){
		queso = false 	
	}
	
	method quitarSalsa(){
		salsa = false	
	}
	
}

//Etapa 3

object roque {
	
	method entrenar(){
		pepita.vola(10)
		pepita.come(alpiste)
		pepita.vola(5)
		pepita.haceLoQueQuieras()
	}
}

