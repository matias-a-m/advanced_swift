//: [Previous](@previous)

//: # Herencia de Clases y Superclases

/*:
 La **herencia** es un principio fundamental en la programación orientada a objetos que permite que una clase herede propiedades y métodos de otra clase. La clase de la que se hereda se denomina **superclase** o **clase base**, mientras que la clase que hereda se llama **subclase**. Esto permite la reutilización de código y la creación de jerarquías de clases, donde las subclases pueden extender o modificar el comportamiento de sus superclases.
 */

//: ## Ejemplo Simple

/// Clase base que representa un animal.
/// Contiene propiedades y métodos comunes a todos los animales.
class Animal {
    var nombre: String
    
    /// Inicializa un nuevo animal con el nombre proporcionado.
    /// - Parameter nombre: Nombre del animal.
    init(nombre: String) {
        self.nombre = nombre
    }
    
    /// Método que imprime un sonido genérico del animal.
    func hacerSonido() {
        print("\(nombre) hace un sonido.")
    }
}

//: ### Caso de Uso

// Imagina una aplicación que gestiona una reserva de animales en un zoológico. En esta aplicación, se pueden tener diferentes tipos de animales que comparten propiedades y métodos comunes, como el nombre y el sonido que hacen.

/// Clase que representa un perro, que es un tipo de animal.
class Perro: Animal {
    /// Método que sobrescribe el sonido que hace el perro.
    override func hacerSonido() {
        print("\(nombre) ladra.")
    }
}

/// Clase que representa un gato, que es un tipo de animal.
class Gato: Animal {
    /// Método que sobrescribe el sonido que hace el gato.
    override func hacerSonido() {
        print("\(nombre) maulla.")
    }
}

// Crear instancias de Perro y Gato
let miPerro = Perro(nombre: "Rex")
let miGato = Gato(nombre: "Mia")

miPerro.hacerSonido() // Rex ladra.
miGato.hacerSonido()  // Mia maulla.

//: [Next](@next)
