import objetos.*
import personas.*

object bolichito {

  var objetoEnVidriera = remera
  var objetoEnMostrador = pelota

  method cambiarObjetoEnVidriera(nuevoObjeto) {
    objetoEnVidriera = nuevoObjeto
  }

  method cambiarObjetoEnMostrador(nuevoObjeto) {
    objetoEnMostrador = nuevoObjeto
  }

  method esBrillante() {
    return objetoEnVidriera.material().esBrillante()
    && objetoEnMostrador.material().esBrillante()
  }

  method esMonocromatica() {
    return objetoEnMostrador.color() == objetoEnVidriera.color()
  }

  method estaEquilibrado() {
    return objetoEnMostrador.peso() > objetoEnVidriera.peso()
  }

  method tieneObjetoColor(unColor) {
    return objetoEnMostrador.color() == unColor
    || objetoEnVidriera.color() == unColor
  }

  method puedeMejorar() {
    return self.esMonocromatica() || not self.estaEquilibrado()
  }

  method puedeOfrecerleAlgoA(unaPersona) {
    return unaPersona.leGusta(objetoEnMostrador)
    || unaPersona.leGusta(objetoEnVidriera)
  }
  
}