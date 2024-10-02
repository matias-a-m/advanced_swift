//: [Previous](@previous)
/*:

 # Tipos Genéricos con Cláusulas Where

 Las cláusulas where permiten añadir condiciones adicionales a los tipos genéricos, proporcionando un mayor control sobre las restricciones.

 ## Ejemplo: Función que Requiere Dos Tipos Iguales

 Creamos una función que utiliza cláusulas where para asegurar que los tipos sean iguales.
 */

/// Función que compara dos valores de tipos genéricos.
/// - Parameters:
///   - a: Primer valor.
///   - b: Segundo valor.
/// - Returns: Un valor booleano indicando si son iguales.
func sonIgualesConWhere<T, U>(a: T, b: U) -> Bool where T == U {
    return a == b // Retorna verdadero si los valores son iguales
}

// Usando la función para comparar enteros
let iguales = sonIgualesConWhere(a: 10, b: 10)
print("Son iguales: \(iguales)") // Son iguales: true

/*:
 ## Buenas Prácticas
 1. **Utilizar cláusulas where para mejorar la legibilidad**: Facilita la comprensión de los requisitos.
 2. **Evitar restricciones innecesarias**: Solo añade cláusulas que sean realmente necesarias.

 Este ejemplo demuestra cómo las cláusulas where pueden agregar control adicional sobre los tipos genéricos.
 */

//: [Next](@next)
