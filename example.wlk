object victoriDPorte {
  var disciplinaActual = tenis
  var cantidadDeEntrenadores = 0
  var alturaInicial =  155
  var elementoActual = raqueta

  method cambiarAltura(altura){
    alturaInicial = altura
  }
  method altura() = alturaInicial 

  method edad() = 20


  method v() {
    
  }
  method cambiarDisciplinaYElemento(disciplinaNueva,elemento){
    disciplinaActual = disciplinaNueva
    elementoActual = elemento
  }

  method disciplina() = disciplinaActual

  method añadirEntrenadores(cantidad){
    cantidadDeEntrenadores += cantidad
  }
  method despedirEntrenadores(cantidad){
    cantidadDeEntrenadores -= cantidad
  }

  method presupuesto() {
    return self.disciplina().presupuestoBase() + 
    self.pagaDeLosEntrenadores() + 
    elementoActual.costo(self)
  }

  method pagaDeLosEntrenadores() = cantidadDeEntrenadores * 150


}
//Disciplinas
object tenis {
  var cantidadDeHinchas = 5

  method presupuestoBase(){
    return 200 + 3*cantidadDeHinchas
  }

  method sumarHinchas(hinchas){
    cantidadDeHinchas += hinchas
  } 
}

object judo {
  var cantidadDeMedallas = 3

  method ganarMedallas(cantidad) {
    cantidadDeMedallas += cantidad
  }

  method presupuestoBase(){
    return 160 * cantidadDeMedallas
  }

}

object hockey {
  var cantidadDeProtecciones = 0

  method agregarProtecciones(cantidad) {
    cantidadDeProtecciones += cantidad.min(5)
  }

  method presupuestoBase() {
    return 250 + 5*cantidadDeProtecciones
  }
}

//Elementos

object raqueta {
  method costo(atleta) {
    return (100 * atleta.edad()).min(3000)
  }
  
}

object trajeDeJudo {
  method costo(atleta) {
    return 50 * atleta.altura()
  }
}

object paloDeHockey {
  method costo(atleta) {
    return 15 * atleta.edad() + atleta.altura()
  }
}