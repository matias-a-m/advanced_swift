//: [Previous](@previous)

//: # Stored Properties

/*:
 Las **stored properties** son valores que se almacenan como parte de una instancia de una clase o estructura. Estas propiedades pueden ser variables (`var`) o constantes (`let`).
 */

//: ## Ejemplo Básico

struct Persona {
    var nombre: String
    var edad: Int
}

// Crear una instancia de Persona
var persona1 = Persona(nombre: "Matías", edad: 30)

// Acceder a las propiedades
print("Nombre: \(persona1.nombre), Edad: \(persona1.edad)") // Nombre: Matías, Edad: 30

/*:
 En este ejemplo, `Persona` tiene dos propiedades almacenadas: `nombre` y `edad`, que son características fundamentales de cada instancia de `Persona`.
 */

//: ## Ejemplo Medio

class Coche {
    var marca: String
    var modelo: String
    
    init(marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }
}

let coche1 = Coche(marca: "Toyota", modelo: "Corolla")
print("Coche: \(coche1.marca) \(coche1.modelo)") // Coche: Toyota Corolla

/*:
 Aquí, `Coche` tiene propiedades almacenadas `marca` y `modelo`. Estas se inicializan mediante el constructor.
 */

//: [Next](@next)
