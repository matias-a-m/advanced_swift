//: [Previous](@previous)

//: # Constructores e Inicializadores en Swift

/*:
 En Swift, los **inicializadores** son métodos especiales que se utilizan para crear instancias de clases, estructuras y enumeraciones. Se encargan de establecer los valores iniciales de las propiedades de una instancia y pueden aceptar parámetros para personalizar la creación del objeto. Cada tipo en Swift debe tener al menos un inicializador, ya sea por defecto o personalizado.
 */

//: ## Inicialización por Defecto

/*:
 Un **inicializador por defecto** es un inicializador que Swift genera automáticamente para estructuras y clases si no defines ninguno. Este inicializador asigna valores predeterminados a las propiedades de la instancia.
 */

//: ### Ejemplo Simple

/// Estructura que representa un punto en un plano cartesiano.
struct Punto {
    var x: Int = 0 // Valor por defecto
    var y: Int = 0 // Valor por defecto
}

// Crear una instancia de Punto usando el inicializador por defecto
let puntoPorDefecto = Punto()
print("Punto por defecto: (\(puntoPorDefecto.x), \(puntoPorDefecto.y))") // Punto por defecto: (0, 0)

//: ## Buenas Prácticas
/*:
 1. Siempre define un inicializador si necesitas valores específicos al crear instancias.
 2. Evita dejar propiedades sin inicializar para evitar errores en tiempo de ejecución.
 3. Utiliza valores predeterminados para propiedades siempre que sea posible, facilitando la creación de instancias.
 */

//: [Next](@next)
