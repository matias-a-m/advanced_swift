//: [Previous](@previous)

//: # Inicializadores por Defecto

/*:
 Un **inicializador por defecto** se refiere a aquel que se genera automáticamente si no defines ninguno en una clase o estructura. Esto es útil para proporcionar un punto de partida simple para tus instancias sin necesidad de definir un inicializador personalizado.
 */

//: ## Ejemplo Simple

/// Clase que representa una persona.
class Persona {
    var nombre: String
    var edad: Int
    
    /// Inicializador por defecto que establece valores iniciales.
    init() {
        self.nombre = "Sin nombre"
        self.edad = 0
    }
}

// Crear una instancia de Persona usando el inicializador por defecto
let personaPorDefecto = Persona()
print("Nombre: \(personaPorDefecto.nombre), Edad: \(personaPorDefecto.edad)") // Nombre: Sin nombre, Edad: 0

//: ## Buenas Prácticas
/*:
 1. Define un inicializador por defecto solo si tiene sentido para tu modelo de datos.
 2. Asegúrate de que el estado inicial de la instancia sea coherente y válido.
 3. Utiliza valores significativos como valores por defecto para mejorar la claridad.
 */

//: [Next](@next)
