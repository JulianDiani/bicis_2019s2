import accesorios.*
class Bici{
	var property rodado
	var property largo
	var property marca
	var property accesorios=[]
	method agregarAccesorios(cosa){
		accesorios.add(cosa)
		
	}
	method tieneLivianos(){
		return accesorios.count({a=>a.peso()<1})
	}
	method altura(){
		return rodado*2.5 +15
	}
	method velocidadCrucero(){
		return if(largo>120){rodado+6}else{rodado+2}
	}
	method carga(){
		//hace
		return accesorios.sum({a=>a.carga()})
	}
	method peso(){
		return rodado/2+ accesorios.sum({a=>a.peso()})
	}
	method tieneLuz(){
		return accesorios.any({a=>a.esLuminoso()})
	}
	method esCompanieraDe(bici){
		return (bici!=self)&&self.marca()==bici.marca()&& (self.largo()-bici.largo()<=10)
		
	}
}