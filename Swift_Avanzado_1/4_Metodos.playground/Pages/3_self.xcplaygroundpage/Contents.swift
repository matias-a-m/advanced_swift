//: [Previous](@previous)

//: # `self` en Swift

/*:
 La palabra clave `self` se utiliza para referirse a la instancia actual de una clase o estructura. Es útil para diferenciar entre las propiedades de instancia y los parámetros del método.
 */

//: ## Ejemplo Básico

struct Persona {
    var nombre: String
    
    func saludar() {
        print("Hola, mi nombre es \(self.nombre).") // Uso de `self`
    }
}

// Crear una instancia de Persona
let persona = Persona(nombre: "Matías")
persona.saludar() // Hola, mi nombre es Matías.

/*:
 En este ejemplo, `self.nombre` se utiliza para acceder a la propiedad `nombre` de la instancia actual de `Persona`.
 */

//: ## Ejemplo Realista en una Aplicación de Gestión de Vehículos

class Vehiculo {
    var marca: String
    var modelo: String
    var anio: Int
    
    init(marca: String, modelo: String, anio: Int) {
        self.marca = marca // Diferenciar entre parámetros y propiedades
        self.modelo = modelo
        self.anio = anio
    }
    
    func descripcion() -> String {
        return "Vehículo: \(self.marca) \(self.modelo), Año: \(self.anio)" // Uso de `self`
    }
}

class GestorVehiculos {
    private var vehiculos: [Vehiculo] = []
    
    /// Añade un nuevo vehículo a la colección.
    /// - Parameters:
    ///   - marca: La marca del vehículo.
    ///   - modelo: El modelo del vehículo.
    ///   - anio: El año de fabricación del vehículo.
    func añadirVehiculo(marca: String, modelo: String, anio: Int) {
        let nuevoVehiculo = Vehiculo(marca: marca, modelo: modelo, anio: anio)
        vehiculos.append(nuevoVehiculo)
        print("Vehículo añadido: \(nuevoVehiculo.descripcion())")
    }
    
    /// Muestra todos los vehículos en la colección.
    func mostrarVehiculos() {
        print("Vehículos en la colección:")
        for vehiculo in vehiculos {
            print(vehiculo.descripcion())
        }
    }
}

// Ejemplo de uso de GestorVehiculos
let gestorVehiculos = GestorVehiculos()
gestorVehiculos.añadirVehiculo(marca: "Toyota", modelo: "Corolla", anio: 2020)
gestorVehiculos.añadirVehiculo(marca: "Honda", modelo: "Civic", anio: 2018)
gestorVehiculos.mostrarVehiculos()

/*:
 En este ejemplo, la clase `GestorVehiculos` utiliza `self` para diferenciar las propiedades de la instancia de los parámetros del método en la inicialización de la clase `Vehiculo`. La clase gestiona una colección de vehículos, permitiendo añadir nuevos vehículos y mostrar la lista actual. Esto proporciona un contexto más práctico sobre el uso de `self` en la gestión de objetos en una aplicación real.
 */

//: [Next](@next)
