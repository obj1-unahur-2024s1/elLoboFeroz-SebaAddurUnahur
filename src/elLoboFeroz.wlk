object loboFeroz {
	var peso = 10
	
	method cualEsTuPeso (){
		return (peso)
	}
	
	method aumentarPeso (unidades){
		peso = peso + unidades		
	}
	
	method disminuirPeso (unidades){
		peso = peso - unidades
	}
	
	method sufrirCrisis(){
		peso = 10
	}
	
	method comerPersonaje (personaje){
		peso = peso + personaje.cualEsTuPeso()*0.1		
	}
	
	method correrAl(ubicacion){
		peso = peso - 1
	}
	
	method esSaludable (){
		return (peso.between(20,150))
	}
	
	method combatir (horasDeCombate){
		peso = peso + horasDeCombate * 5
		
	}
	
	method soplarCasaDe (material){
		peso = peso - material.cualEsTuResistencia()
	}
}

object caperucita {
	
	method cualEsTuPeso (){
		return 60 + canasta.cualEsTuPeso()
	}
}

object canasta {
	var manzanas = 6
		
	method caerManzana (cantidad){
		manzanas = manzanas - cantidad
	}
	
	method cantidadManzanas (cantidadTotalManzanas){
		manzanas = cantidadTotalManzanas
	}
	
	method cualEsTuPeso (){
		return (manzanas * 0.2)
	}
}

object abuelita {
	
	method cualEsTuPeso (){
		return (50)
	}
}

object cazador {
	/*El cazador y el lobo aumentan su musculatura a medida que combate y por tal motivo gana 5 Kg por hora de combate. 
	 En el caso de que el cazador gane, le ocasiona crisis al lobo. 
	 Si pierde es deborado por este.
	*/
	var peso = 130	
	
	method combatir (horasDeCombate){
		peso = peso + horasDeCombate * 5
		
	}
	
	method cualEsTuPeso (){
		return peso
	}
	
	method ganarCombateAlLobo(){
		loboFeroz.sufrirCrisis()
	}	

}

object bosque {
	
}

object casaDeLaAbuelita {
	
}

object chanchito1 {
	
	method cualEsTuPeso (){
		return 30
	}
	
}

object chanchito2 {
	
	method cualEsTuPeso (){
		return 35
	}
	
}

object chanchito3 {
	
	method cualEsTuPeso (){
		return 40
	}
	
}

object casaDePaja {
	
	method cualEsTuResistencia (){
		return 0 + chanchito1.cualEsTuPeso()
	}
}

object casaDeMadera {
	method cualEsTuResistencia (){
		return 5 + chanchito1.cualEsTuPeso() + chanchito2.cualEsTuPeso()
	}
	
}

object casaDeLadrillos {
	const ladrillos = 100
	
	method cualEsTuResistencia (){
		return 2 * ladrillos + chanchito1.cualEsTuPeso() + chanchito2.cualEsTuPeso() + chanchito3.cualEsTuPeso()
	}
	
}