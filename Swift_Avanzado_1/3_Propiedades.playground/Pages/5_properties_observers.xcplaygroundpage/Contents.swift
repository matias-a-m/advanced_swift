//: [Previous](@previous)

//: # Property Observers

/*:
 Los **property observers** permiten observar y responder a los cambios en las propiedades almacenadas. Swift proporciona dos observadores: `willSet` y `didSet`.
 */

//: ## Ejemplo Básico

class Cuenta {
    var saldo: Double {
        willSet {
            print("El saldo va a cambiar de \(saldo) a \(newValue)")
        }
        didSet {
            print("El saldo ha cambiado a \(saldo)")
        }
    }
    
    init(saldoInicial: Double) {
        saldo = saldoInicial
    }
}

let cuenta = Cuenta(saldoInicial: 1000)
cuenta.saldo = 1200 // El saldo va a cambiar de 1000.0 a 1200.0
                   // El saldo ha cambiado a 1200.0

/*:
 En este ejemplo, `saldo` tiene observadores que se activan antes y después de que se modifica la propiedad.
 */

//: ## Ejemplo Medio

class Usuario {
    var nombre: String {
        willSet {
            print("El nombre cambiará de \(nombre) a \(newValue)")
        }
        didSet {
            print("El nombre ha cambiado a \(nombre)")
        }
    }
    
    init(nombre: String) {
        self.nombre = nombre
    }
}

let usuario = Usuario(nombre: "Matías")
usuario.nombre = "Juan" // El nombre cambiará de Matías a Juan
                        // El nombre ha cambiado a Juan

/*:
 Este ejemplo ilustra cómo `willSet` y `didSet` pueden ser utilizados para rastrear cambios en propiedades y ejecutar código adicional al modificar.
 */

//: [Next](@next)
