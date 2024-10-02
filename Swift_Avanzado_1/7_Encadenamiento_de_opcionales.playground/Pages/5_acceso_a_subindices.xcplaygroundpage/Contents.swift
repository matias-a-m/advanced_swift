//: [Previous](@previous)

//: # Accediendo a Subíndices Opcionales

/*:
 ## Introducción

 Los **subíndices** opcionales en Swift permiten acceder a elementos dentro de un arreglo, diccionario, o colección que podrían no existir. Usar el encadenamiento de opcionales para acceder a subíndices es una forma segura de prevenir errores si el elemento no está disponible.

 A continuación, exploraremos cómo hacerlo.
 */

//: ## Ejemplo Simple: Subíndices en Diccionarios

// Diccionario de códigos de productos y sus nombres
let productos: [String: String] = ["001": "Laptop", "002": "Smartphone"]

// Usar encadenamiento opcional para acceder al valor de un subíndice
if let producto = productos["003"] {
    print("Producto: \(producto)")
} else {
    print("No se encontró el producto.")
}

/*:
 En este ejemplo, intentamos acceder a un valor en un diccionario usando un subíndice opcional. Si el subíndice no existe, no provocará un error, y el encadenamiento opcional devuelve `nil`.
 */

//: ## Buenas Prácticas
/*:
 1. Usa encadenamientos de opcionales para acceder a subíndices de manera segura en diccionarios o arreglos.
 2. Combina encadenamientos con condicionales para manejar adecuadamente la ausencia de valores en los subíndices.
 */

//: [Next](@next)
