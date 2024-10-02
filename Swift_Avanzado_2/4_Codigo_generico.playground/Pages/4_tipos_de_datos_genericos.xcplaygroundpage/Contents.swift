//: [Previous](@previous)
/*:

 # Tipos de Datos Genéricos

 Los tipos de datos genéricos permiten definir estructuras y clases que pueden manejar distintos tipos de datos de manera eficiente.

 ## Ejemplo: Clase Genérica de Pila

 Creamos una clase genérica para implementar una pila.
 */

/// Clase genérica que representa una pila.
/// - Parameter T: Tipo de dato almacenado en la pila.
class Pila<T> {
    private var elementos: [T] = [] // Arreglo para almacenar los elementos

    /// Agrega un elemento a la pila.
    /// - Parameter elemento: El elemento a agregar.
    func apilar(elemento: T) {
        elementos.append(elemento) // Agrega el elemento al final del arreglo
    }

    /// Retorna el último elemento agregado y lo elimina de la pila.
    /// - Returns: El último elemento de tipo T.
    func desapilar() -> T? {
        return elementos.popLast() // Retorna y elimina el último elemento
    }
}

// Usando la clase para almacenar enteros
let pilaDeEnteros = Pila<Int>()
pilaDeEnteros.apilar(elemento: 10)
print("Elemento desapilado: \(pilaDeEnteros.desapilar() ?? -1)") // Elemento desapilado: 10

/*:
 ## Buenas Prácticas
 1. **Evitar la complejidad innecesaria**: Mantén las implementaciones de genéricos simples.
 2. **Documentar los métodos y sus parámetros**: Asegúrate de que su uso sea claro.

 Esta hoja ilustra cómo los tipos de datos genéricos pueden mejorar la eficiencia de nuestras estructuras.
 */

//: [Next](@next)
