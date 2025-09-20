object bicicleta {

    method peso() {
        return 5
    }

}

object camion {

    var acoplados = 1

    method agregarAcoplados(cantidad) {
        acoplados = cantidad
    }

    method peso() {
        return 500 * (acoplados.max(1))
    }

}