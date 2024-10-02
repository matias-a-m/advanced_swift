//: [Previous](@previous)

//: # Encadenamientos de Opcionales vs Forced Unwrapping

/*:
 ## Introducción

 En Swift, al trabajar con valores opcionales, existen dos formas principales de acceder a ellos:
 
 1. **Forced Unwrapping (Desempaquetado Forzado)**: Implica utilizar el operador `!` para desempaquetar un valor opcional. Si el valor es `nil` y se intenta desempaquetar, esto provocará un error en tiempo de ejecución.
 
 2. **Encadenamientos de Opcionales (Optional Chaining)**: Proporciona una forma más segura de acceder a propiedades, métodos y subíndices que podrían ser `nil`. En lugar de forzar el desempaquetado, el encadenamiento devuelve `nil` si alguna parte de la cadena es `nil`.
 
 Vamos a comparar estas dos técnicas a través de ejemplos.
 */

//: ## Ejemplo Simple: Forced Unwrapping

/// Clase que representa un coche
class Coche {
    var marca: String
    var modelo: String
    
    init(marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }
}

/// Clase que representa un dueño de coche
class Dueno {
    var nombre: String
    var coche: Coche?
    
    init(nombre: String, coche: Coche? = nil) {
        self.nombre = nombre
        self.coche = coche
    }
}

// Crear una instancia de Dueno sin coche
let duenoSinCoche = Dueno(nombre: "Juan")

// Forced unwrapping (causará error si coche es nil)
// let marcaCoche = duenoSinCoche.coche!.marca // Provoca un error de ejecución

/*:
 Si intentamos desempaquetar `coche` con `!` y el coche es `nil`, obtendremos un error de ejecución. Es un enfoque peligroso si no estamos seguros de que el valor opcional contiene un valor.
 */

//: ## Ejemplo Simple: Encadenamientos de Opcionales

// Utilizamos el encadenamiento de opcionales para acceder de forma segura
if let marcaCoche = duenoSinCoche.coche?.marca {
    print("Marca del coche: \(marcaCoche)")
} else {
    print("No se puede obtener la marca del coche, ya que es nil.")
}

/*:
 En este caso, `duenoSinCoche.coche?.marca` devuelve `nil` sin provocar un error en tiempo de ejecución, ya que el encadenamiento opcional garantiza la seguridad al acceder a valores opcionales.
 */

//: ## Buenas Prácticas
/*:
 1. Siempre que trabajes con opcionales, prefiere el **encadenamiento de opcionales** sobre el **forced unwrapping** para evitar errores inesperados.
 2. Utiliza el desempaquetado forzado (`!`) solo cuando estés completamente seguro de que el valor no será `nil`.
 3. Usa `if let` o `guard let` junto con encadenamientos de opcionales para manejar los casos donde el valor sea `nil`.
 */

//: [Next](@next)
