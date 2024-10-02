//: [Previous](@previous)
/*:

 # Programación Genérica y Reutilización de Código

 La programación genérica permite escribir código que puede trabajar con cualquier tipo de dato. Esto facilita la reutilización de código y reduce la redundancia, haciendo que nuestras funciones y tipos sean más flexibles.

 ## Ejemplo Simple: Función de Intercambio

 En este ejemplo, definimos una función genérica para intercambiar dos valores de cualquier tipo.
 */

/// Función que intercambia los valores de dos variables genéricas.
/// - Parameters:
///   - a: Primer valor de tipo genérico.
///   - b: Segundo valor de tipo genérico.
/// - Returns: Una tupla con los valores intercambiados.
func intercambiar<T>(a: T, b: T) -> (T, T) {
    return (b, a) // Retorna los valores en orden inverso
}

// Usando la función para intercambiar enteros
let (valor1, valor2) = intercambiar(a: 5, b: 10)
print("Intercambiados: \(valor1), \(valor2)") // Intercambiados: 10, 5

/*:
 ## Buenas Prácticas
 1. **Usar nombres descriptivos para parámetros genéricos**: Esto mejora la legibilidad.
 2. **Evitar el uso excesivo de genéricos**: Úsalos solo cuando sea necesario para evitar complejidad innecesaria.

 Esta hoja ilustra cómo la programación genérica puede facilitar la reutilización de código, haciendo que nuestras funciones sean más versátiles.
 */

//: [Next](@next)
