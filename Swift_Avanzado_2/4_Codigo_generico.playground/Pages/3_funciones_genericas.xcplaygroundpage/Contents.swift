//: [Previous](@previous)
/*:

 # Funciones Genéricas

 Las funciones genéricas permiten crear métodos que aceptan y devuelven tipos de datos variables, lo que aumenta la versatilidad de nuestro código.

 ## Ejemplo: Función de Comparación

 Creamos una función genérica para comparar dos valores.
 */

/// Función que compara dos valores genéricos.
/// - Parameters:
///   - a: Primer valor de tipo genérico.
///   - b: Segundo valor de tipo genérico.
/// - Returns: Un valor booleano indicando si son iguales.
func sonIguales<T: Equatable>(a: T, b: T) -> Bool {
    return a == b // Retorna verdadero si los valores son iguales
}

// Usando la función para comparar cadenas
let sonIgualesCadenas = sonIguales(a: "Hola", b: "Hola")
print("Son iguales: \(sonIgualesCadenas)") // Son iguales: true

/*:
 ## Buenas Prácticas
 1. **Limitar los tipos genéricos a aquellos que cumplen con protocolos necesarios**: Esto ayuda a mantener la seguridad de tipos.
 2. **Documentar claramente los requisitos del tipo**: Especifica qué protocolos deben ser cumplidos.

 Esta hoja muestra cómo las funciones genéricas pueden simplificar la comparación de diferentes tipos de datos.
 */

//: [Next](@next)
