import mensajeros.*
import destinos.*

object paquete {

    var destino = matrix

    var estaPago = false

    method cambiarDestino(nuevoDestino) {
        destino = nuevoDestino
    }

    method estaPago() {
        return estaPago
    }

    method registrarPago() {
        estaPago = true
    }

    method puedeEntregarse(unMensajero) {
        return estaPago && destino.puedePasar(unMensajero)
    }

    method precio(){
        return 50
    }
}

object paquetito {

    var destino = matrix 

    method estaPago(){
        return true
    }

    method precio() {
        return 0
    }

    method puedeEntregarse(unMensajero) {
        return true
    }

    method cambiarDestino(nuevoDestino) {
        destino = nuevoDestino
    }

}

object paqueton {

    var importePagado = 0

    const destinos = []

    method agregarDestino(unDestino) {
        destinos.add(unDestino)
    }

    method estaPago() {
        return importePagado == self.precio()
    }

    method precio() {
        return 100 * destinos.size()
    }
  
    method recibirPago(unValor) {
        importePagado = (importePagado + unValor).min(self.precio())
    }

    method puedeEntregarse(unMensajero){
        return destinos.all({destino => destino.puedePasar(unMensajero)}) && self.estaPago()
    }

}