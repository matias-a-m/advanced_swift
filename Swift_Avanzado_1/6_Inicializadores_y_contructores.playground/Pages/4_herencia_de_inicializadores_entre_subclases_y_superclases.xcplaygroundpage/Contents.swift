//: [Previous](@previous)

//: # Herencia de Inicializadores entre Subclases y Superclases

/*:
 En Swift, las subclases heredan los inicializadores de sus superclases. Sin embargo, si la subclase tiene propiedades que no están definidas en la superclase, necesitarás definir un inicializador personalizado en la subclase para asegurarte de que todas las propiedades se inicialicen correctamente.
 */

//: ## Ejemplo Simple

/// Clase base que representa un vehículo.
class Vehiculo {
    var marca: String
    var modelo: String
    
    /// Inicializador que acepta marca y modelo.
    init(marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }
}

/// Subclase que representa un automóvil.
class Automovil: Vehiculo {
    var cantidadPuertas: Int
    
    /// Inicializador que acepta marca, modelo y cantidad de puertas.
    init(marca: String, modelo: String, cantidadPuertas: Int) {
        self.cantidadPuertas = cantidadPuertas
        super.init(marca: marca, modelo: modelo) // Llamada al inicializador de la superclase
    }
}

// Crear una instancia de Automovil
let miAuto = Automovil(marca: "Ford", modelo: "Focus", cantidadPuertas: 4)
print("Auto: \(miAuto.marca) \(miAuto.modelo), Puertas: \(miAuto.cantidadPuertas)") // Auto: Ford Focus, Puertas: 4

//: ## Buenas Prácticas
/*:
 1. Siempre llama a `super.init()` en el inicializador de la subclase para asegurarte de que la superclase se inicialice correctamente.
 2. Considera la posibilidad de utilizar inicializadores de conveniencia si tienes propiedades adicionales en la subclase.
 3. Documenta cómo se relacionan los inicializadores entre la clase base y las subclases para mayor claridad.
 */

//: [Next](@next)
