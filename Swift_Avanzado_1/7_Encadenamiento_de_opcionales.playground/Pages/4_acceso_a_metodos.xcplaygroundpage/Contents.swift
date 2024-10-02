//: [Previous](@previous)

//: # Accediendo a Métodos y Propiedades Opcionales

/*:
 ## Introducción

 En Swift, cuando una propiedad o método de una instancia es opcional, puedes usar el **encadenamiento de opcionales** para acceder a ellos de forma segura. Si la instancia opcional tiene un valor, el encadenamiento continúa y se evalúa la propiedad o método. Si es `nil`, el encadenamiento devuelve `nil` y evita un error de ejecución.

 Vamos a explorar cómo funciona esto con ejemplos.
 */

//: ## Ejemplo Simple: Acceso a Propiedades Opcionales

// Crear una instancia de Persona sin libro favorito
if let tituloLibro = personaSinLibro.libroFavorito?.titulo {
    print("Libro favorito: \(tituloLibro)")
} else {
    print("No hay libro favorito disponible.")
}

/*:
 En este ejemplo, intentamos acceder a la propiedad `titulo` de `libroFavorito` mediante encadenamiento opcional. Si `libroFavorito` es `nil`, no se provoca un error.
 */

//: ## Ejemplo Simple: Acceso a Métodos Opcionales

/// Clase que representa una Cuenta Bancaria
class CuentaBancaria {
    var balance: Double
    
    init(balance: Double) {
        self.balance = balance
    }
    
    /// Método que imprime el balance de la cuenta
    func imprimirBalance() {
        print("El balance de la cuenta es \(balance).")
    }
}

// Crear una persona con cuenta bancaria opcional
class Cliente {
    var nombre: String
    var cuentaBancaria: CuentaBancaria?
    
    init(nombre: String, cuentaBancaria: CuentaBancaria? = nil) {
        self.nombre = nombre
        self.cuentaBancaria = cuentaBancaria
    }
}

// Intentar acceder al método de una cuenta bancaria opcional
let cliente = Cliente(nombre: "Pedro")
cliente.cuentaBancaria?.imprimirBalance() // No imprime nada ya que cuentaBancaria es nil

/*:
 Utilizando el encadenamiento opcional, podemos intentar acceder al método `imprimirBalance` sin generar un error si `cuentaBancaria` es `nil`.
 */

//: ## Buenas Prácticas
/*:
 1. Utiliza el encadenamiento de opcionales para acceder de forma segura a métodos y propiedades que podrían ser `nil`.
 2. Siempre verifica si el valor opcional está disponible antes de usarlo, evitando forzar su desempaquetado.
 */

//: [Next](@next)
