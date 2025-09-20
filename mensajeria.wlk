import mensajeros.*
import destinos.*
import paquetes.*


object empresa {

    const mensajeros = []
    const paquetesEnviados = []
    const paquetesPendientes = []

    method contratar(unMensajero) {
        mensajeros.add(unMensajero)
    }

    method mensajeros(){
        return mensajeros
    }

    method enviarPaquete(unPaquete) {
        if (self.algunMensajeroPuedeEntregar(unPaquete)) {
            paquetesEnviados.add(unPaquete)
        }
        else {
            paquetesPendientes.add(unPaquete)
        }
    }

    method despedir(unMensajero) {
        mensajeros.remove(unMensajero)
    }

    method despedirATodos() {
        mensajeros.clear()
    }

    method esGrande() {
        return mensajeros.size() > 2
    }

    method puedeEntregarUnPaqueteElPrimerEmpleado(unPaquete) {
        if(!mensajeros.isEmpty()) {
           return unPaquete.puedeEntregarse(mensajeros.first())
        }
        else {
            return false
        }
    }

    method peso() {
        return mensajeros.last().peso()
    }

    method algunMensajeroPuedeEntregar(unPaquete) {
        return mensajeros.any({m => unPaquete.puedeEntregarse(m)})
    }

    method todosLosQuePuedenLlevar(unPaquete) {
        return mensajeros.filter({m => unPaquete.puedeEntregarse(m)})
    }

    method tieneSobrepeso(){
        return mensajeros.sum({m => m.peso()}) / mensajeros.size() > 500
        //mensajeros.map({m => m.peso()}).sum() / mensajeros.size() > 500
    }

    method facturacion() {
        return paquetesEnviados.sum({p => p.precio()})
    }

    method enviar(conjuntoDePaquetes) {
        conjuntoDePaquetes.forEach({p => self.enviarPaquete(p)})
    }
    
    method enviarPaquetePendienteMasCaro() {
        self.enviarPaquete(self.paquetePendienteMasCaro())
    }

    method paquetePendienteMasCaro() {
        return paquetesPendientes.max({p=> p.precio()})
    }

    method paquetesEnviados() {
        return paquetesEnviados
    }

    method paquetesPendientes() {
        return paquetesPendientes
    }

}