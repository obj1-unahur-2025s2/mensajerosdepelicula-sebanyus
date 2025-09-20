import destinos.*
import vehiculos.*
import paquetes.*
object roberto {
    var vehiculo = bicicleta
    
    method vehiculo(unVehiculo) {
        vehiculo = unVehiculo
    }

    method peso() {
        return 90 + vehiculo.peso()
    }

    method puedeLlamar() {
        return false
    }

}

object chuck {
    
    method peso() {
        return 80
    }

    method puedeLlamar() {
        return true
    }

}

object neo {
    var tieneCredito = true

    method peso() {
        return 0
    }

    method puedeLlamar() {
        return tieneCredito
    }

    method cargarCredito() {
        tieneCredito = true
    }

    method agotarCredito() {
        tieneCredito = false
    }

}