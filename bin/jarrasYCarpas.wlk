import personas.*
import marcas.*


class Jarra {
	var property marca
	var property capacidad
	
	method contenidoAlcohol() {
		return self.marca().graduacion() * capacidad
	}
	
	
}

class Carpa {
	var property marca
	var property tieneMusica
	var property limiteCarpaPersona
	var listaPersona = []
	
	method agregarPersona(_persona) {
		listaPersona.add(_persona)
	}
	
	method quitarPersona(_persona) {
		listaPersona.remove(_persona)
	}
	
	method marcaQVende() {
		return marca
	}
	
	method cantidadPersona() {
		return listaPersona.size() 
	}
	
	method personasPares() {
		return (self.cantidadPersona() % 2 == 0) 
	}
	
	method dejarEntrar(_persona) {
		return (self.cantidadPersona() < limiteCarpaPersona) and not (_persona.estaEbria())	
	}
}