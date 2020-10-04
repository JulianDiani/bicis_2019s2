import bicis.*
import accesorios.*
class Deposito{
	var property bicicletas=[]
	method agregarBicis(bici){
	bicicletas.add(bici)	
	}
	method bicisMasRapidas(){
		return bicicletas.filter({b=>b.velocidadCrucero()>25})
	}
	method marcas(){
		return bicicletas.map({b=>b.marca()}).asSet()
	}
	method esNocturno(){
		return bicicletas.all({b=>b.tieneLuz()})
	}
	method tieneBiciDeCarga(carga){
		return bicicletas.any({b=>b.carga()>carga})
	}
	method marcaDeBiciMasRapida(){
		return bicicletas.max({b=>b.velocidadCrucero()}).marca()
	}
	method cargaTotalDeBicis(){
		bicicletas.filter({b=>b.largo()>170}).sum({b=>b.carga()})
	}
	method cantBicisSinAccesorios(){
		return bicicletas.count({b=>b.accesorios().isEmpty()})
	}
	method bicisCompanieras(bici){
		return bicicletas.filter({b=>b.esCompanieraDe(bici)})
	}
	/*hay que agregar las clases de los nuevos accesorios, que deben entender los mismos metodos que
	 * los otros para respetar el polimorfismo.
	 */
}