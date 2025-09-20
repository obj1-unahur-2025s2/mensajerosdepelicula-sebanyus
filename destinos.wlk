import mensajeros.*
object puenteBrooklyn {

    method puedePasar(unMensajero) {
        return unMensajero.peso() <= 1000
    }

}

object matrix {

    method puedePasar(unMensajero) {
        return unMensajero.puedeLlamar()
    }

}

