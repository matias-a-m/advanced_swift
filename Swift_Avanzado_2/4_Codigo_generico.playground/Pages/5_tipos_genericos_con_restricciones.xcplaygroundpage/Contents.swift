//: [Previous](@previous)
/*:

 # Tipos Genéricos con Restricciones

 Las restricciones en tipos genéricos permiten limitar los tipos que se pueden utilizar, asegurando que cumplan con ciertos protocolos.

 ## Ejemplo: Clase Genérica con Restricción

 Creamos una clase que solo permite tipos que implementan el protocolo Comparable.
 */

/// Clase genérica que ordena elementos.
/// - Parameter T: Tipo de dato que conforma el protocolo Comparable.
class Ordenador<T: Comparable> {
    var elementos: [T] = [] // Arreglo para almacenar los elementos

    /// Agrega un elemento y lo ordena.
    /// - Parameter elemento: El elemento a agregar.
    func agregarYOrdenar(elemento: T) {
        elementos.append(elemento) // Agrega el elemento al arreglo
        elementos.sort() // Ordena el arreglo
    }
}

// Usando la clase para ordenar enteros
let ordenador = Ordenador<Int>()
ordenador.agregarYOrdenar(elemento: 5)
ordenador.agregarYOrdenar(elemento: 3)
print("Elementos ordenados: \(ordenador.elementos)") // Elementos ordenados: [3, 5]

/*:
 ## Buenas Prácticas
 1. **Definir restricciones que sean relevantes**: Asegúrate de que las restricciones sean necesarias para el comportamiento deseado.
 2. **Documentar claramente las restricciones**: Facilita la comprensión de los tipos que se pueden usar.

 Este ejemplo muestra cómo las restricciones en tipos genéricos pueden garantizar la seguridad de tipos.
 */

//: [Next](@next)
