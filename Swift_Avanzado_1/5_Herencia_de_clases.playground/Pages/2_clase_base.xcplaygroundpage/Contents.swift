//: [Previous](@previous)

//: # Clase Base

/*:
 La **clase base** es la clase fundamental de la que otras clases pueden heredar. En Swift, si no se especifica otra cosa, todas las clases heredan de la clase base `NSObject`. Las clases base proporcionan una estructura y un comportamiento que pueden ser reutilizados y extendidos por las subclases, lo que ayuda a mantener un código más limpio y organizado.
 */

//: ## Ejemplo Simple

/// Clase base que representa un vehículo.
/// Contiene propiedades y métodos comunes a todos los vehículos.
class Vehiculo {
    var marca: String
    var modelo: String
    
    /// Inicializa un nuevo vehículo con la marca y modelo proporcionados.
    /// - Parameters:
    ///   - marca: Marca del vehículo.
    ///   - modelo: Modelo del vehículo.
    init(marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }
    
    /// Método que devuelve una descripción del vehículo.
    func descripcion() -> String {
        return "Vehículo: \(marca) \(modelo)"
    }
}

//: ### Caso de Uso

// Considera una aplicación de gestión de vehículos donde se necesita almacenar información sobre diferentes tipos de vehículos. La clase base `Vehiculo` puede ser utilizada para crear subclases específicas, como `Automovil`, que heredan las propiedades y métodos de `Vehiculo`.

/// Clase que representa un automóvil, que es un tipo de vehículo.
class Automovil: Vehiculo {
    var cantidadPuertas: Int
    
    /// Inicializa un nuevo automóvil con la marca, modelo y cantidad de puertas.
    /// - Parameters:
    ///   - marca: Marca del automóvil.
    ///   - modelo: Modelo del automóvil.
    ///   - cantidadPuertas: Cantidad de puertas del automóvil.
    init(marca: String, modelo: String, cantidadPuertas: Int) {
        self.cantidadPuertas = cantidadPuertas
        super.init(marca: marca, modelo: modelo)
    }
}

// Crear una instancia de Automovil
let miAuto = Automovil(marca: "Toyota", modelo: "Corolla", cantidadPuertas: 4)
print(miAuto.descripcion()) // Vehículo: Toyota Corolla

//: [Next](@next)
