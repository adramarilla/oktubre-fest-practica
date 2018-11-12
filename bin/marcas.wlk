import jarrasYCarpas.*
import personas.*

class Cerveza {
	var property marca
	var property contenidoLupulo
	var property pais
	
	method graduacion()

}


class Rubia inherits Cerveza {
	var property gradRubia
	
	override method graduacion(){
		return gradRubia
	}	
}

class Negra inherits Cerveza {
	
	override method graduacion() {
		 return (gradMundialCerveNegra.graducacionReglamentaria() + (self.contenidoLupulo() * 2))
	}
}

class Roja inherits Negra {
	
	override method graduacion() {
		return super() * 1.25
	}
}

object gradMundialCerveNegra {
	var property graducacionReglamentaria = 0
}