//: [Previous](@previous)
/*:

 # Para Qué Sirve el Código Genérico

 El código genérico es fundamental para crear estructuras y funciones que pueden trabajar con cualquier tipo, lo que permite una mayor flexibilidad y reducción de duplicación.

 ## Ejemplo: Almacenar Elementos en un Contenedor Genérico

 Aquí, creamos una estructura simple para almacenar elementos de cualquier tipo.
 */

/// Estructura genérica que almacena un elemento.
/// - Parameter T: Tipo de dato del elemento.
struct Contenedor<T> {
    var elemento: T // Almacena un elemento del tipo T
}

// Usando la estructura para almacenar un entero
let contenedorEntero = Contenedor(elemento: 42)
print("Elemento almacenado: \(contenedorEntero.elemento)") // Elemento almacenado: 42

/*:
 ## Buenas Prácticas
 1. **Usar tipos genéricos para colecciones**: Mejora la reutilización de código y la claridad.
 2. **Especificar claramente el propósito del genérico**: Asegúrate de que la función o estructura sea intuitiva.

 Este ejemplo demuestra cómo el código genérico puede simplificar el almacenamiento de diferentes tipos de datos.
 */

//: [Next](@next)
