//: [Previous](@previous)

//: # Sobrescritura de Propiedades y Métodos

/*:
 La **sobrescritura** permite que una subclase proporcione una implementación específica para un método o propiedad que ha sido definido en su superclase. Esto es útil cuando deseas modificar o extender el comportamiento heredado sin cambiar la implementación de la superclase.
 */

//: ## Ejemplo Simple

/// Clase base que representa un vehículo.
/// Contiene propiedades y métodos comunes a todos los vehículos.
class Vehiculo {
    var velocidad: Int {
        return 0 // Velocidad base es 0
    }
    
    /// Método que devuelve una descripción del vehículo con su velocidad.
    func descripcion() -> String {
        return "Vehículo a \(velocidad) km/h"
    }
}

//: ### Caso de Uso

// En una aplicación de gestión de flotas de vehículos, se pueden crear subclases que sobrescriban propiedades y métodos para proporcionar información más específica sobre cada tipo de vehículo.

/// Clase que representa una bicicleta, que es un tipo de vehículo.
class Bicicleta: Vehiculo {
    override var velocidad: Int {
        return 15 // Velocidad promedio de una bicicleta
    }
    
    /// Método que sobrescribe la descripción del vehículo para la bicicleta.
    override func descripcion() -> String {
        return "Bicicleta a \(velocidad) km/h"
    }
}

// Crear una instancia de Bicicleta
let miBici = Bicicleta()
print(miBici.descripcion()) // Bicicleta a 15 km/h

//: [Next](@next)
