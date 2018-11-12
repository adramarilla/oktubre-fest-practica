import marcas.*
import jarrasYCarpas.*

class Persona {
	var property nivelAguante
	var property peso
	var property gustaMusica
	var property nacionalidad
	const marcaGusta = #{}
	const jarrasTomadas = []
	
	
	method agregarMarcasQGusta(_marca) {
		marcaGusta.add(_marca)
	}
 
	method quiereEntrar(_carpa) {
		return (self.gustaMusicaCarpa(_carpa) and
		marcaGusta.contains(_carpa.marcaQVende()) and (_carpa.dejarEntrar(self)) )

	}
	
	method gustaMusicaCarpa(_carpa) {
		return (_carpa.tieneMusica() == self.gustaMusica())
		
	}
	
	method agregarJarra(_jarra) {
		jarrasTomadas.add(_jarra)
	}
	
	method alcoholIngerido() {
		return jarrasTomadas.map({ j => j.contenidoAlcohol() }).sum() // multiplicar graduacin por litro
	}
	
	method estaEbria() {
		return (self.alcoholIngerido() * peso > nivelAguante)
	}
	
	method entroCarpa(_carpa){
	 if  (self.quiereEntrar(_carpa)) {_carpa.agregarPersona(self)}
	 else self.error("No puede Entrar")
	}
	
	method ebrioEmpedernido() {
		return (jarrasTomadas.all({j => j.capacidad()>=1}))
	}
	method esPatriota() {
		return (jarrasTomadas.all({j => j.marca().pais() == self.nacionalidad()})) 
	}
}

class Aleman inherits Persona {
	
	method entrarCarpa(_carpa) {
		return _carpa.personasPares()
	}
	
	override method quiereEntrar(_carpa) {
		return (super(_carpa) and _carpa.personasPares())

	}
}

class Belga inherits Persona {
	
	
}

class Checo inherits Persona {
	
	
}

