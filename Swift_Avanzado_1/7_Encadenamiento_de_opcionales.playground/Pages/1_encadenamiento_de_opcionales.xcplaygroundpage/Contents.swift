//: [Previous](@previous)

//: # Encadenamientos de Opcionales en Swift

/*:
 ## Introducción

 Los **encadenamientos de opcionales** en Swift permiten acceder a propiedades, métodos y subíndices que podrían ser `nil` sin necesidad de desempaquetarlos de manera forzada. Si alguna parte de la cadena es `nil`, el encadenamiento devuelve `nil`, lo que evita errores de ejecución en tiempo de ejecución.

 Esta técnica es particularmente útil cuando trabajamos con estructuras o clases que contienen múltiples niveles de opcionales.
 
 Vamos a explorar cómo funcionan a través de ejemplos simples y realistas.
 */

//: ## Ejemplo Simple

/// Clase que representa una dirección
class Direccion {
    var ciudad: String
    var calle: String
    
    init(ciudad: String, calle: String) {
        self.ciudad = ciudad
        self.calle = calle
    }
}

/// Clase que representa una persona
class Persona {
    var nombre: String
    var direccion: Direccion?
    
    init(nombre: String, direccion: Direccion? = nil) {
        self.nombre = nombre
        self.direccion = direccion
    }
}

// Crear una instancia de Persona sin dirección
let persona = Persona(nombre: "Matías")

// Intentar acceder a la calle de una persona cuya dirección es nil utilizando encadenamiento opcional
if let calle = persona.direccion?.calle {
    print("Calle: \(calle)")
} else {
    print("No se pudo obtener la calle, dirección es nil.")
}

/*:
 En este ejemplo, `persona.direccion?.calle` devuelve `nil` porque la persona no tiene una dirección asociada. El encadenamiento opcional permite acceder de manera segura a la propiedad sin generar errores.
 */

//: ## Buenas Prácticas
/*:
 1. Utiliza encadenamientos de opcionales cuando trabajes con datos que pueden ser `nil`, en lugar de forzar el desempaquetado.
 2. Combina los encadenamientos con `if let` o `guard let` para manejar casos donde los valores no sean `nil`.
 3. Evita utilizar encadenamientos demasiado profundos, ya que pueden afectar la legibilidad del código.
 */

//: [Next](@next)
