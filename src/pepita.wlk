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
	
	method estaFeliz() {
		return energia.between(100, 500)
	}
	
	method vueloExtra(){
		if(energia.between(300, 400))
		return 10
		else return 0
	}
	
	method vueloExtra2(){
		if(energia % 20 == 0)
			return 15
		else return 0
	}
	
	method cuantoQuiereVolar(){
		return (energia / 5) + self.vueloExtra() + self.vueloExtra2()
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(20)
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

object canelones(){
	
}


