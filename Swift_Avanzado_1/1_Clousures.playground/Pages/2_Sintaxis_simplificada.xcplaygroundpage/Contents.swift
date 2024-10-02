//: [Previous](@previous)

/*:
 # Sintaxis Simplificada de Closures en Swift

 Un **closure** es un bloque de funcionalidad que puede ser pasado y utilizado dentro de tu código. Los closures son similares a las funciones, pero pueden capturar y almacenar referencias a variables y constantes del contexto en el que se definen. Swift ofrece una **sintaxis simplificada** que mejora la legibilidad y concisión del código, especialmente cuando se usan como parámetros en funciones.

 ## Ejemplo Básico: Ordenar una Lista

 En este ejemplo, vamos a ordenar un arreglo de números enteros utilizando un closure con sintaxis simplificada. En lugar de definir una función separada para la comparación, podemos usar un closure directamente como argumento de la función `sorted`.

 ### Código:
 */

let numeros = [5, 3, 8, 1, 2]

// Usando la sintaxis completa para ordenar
let numerosOrdenadosCompleto = numeros.sorted(by: { (a: Int, b: Int) -> Bool in
    return a < b
})

print("Números ordenados (sintaxis completa): \(numerosOrdenadosCompleto)")

//: ## Sintaxis Simplificada

/*:
 Swift permite simplificar la sintaxis de los closures eliminando partes que pueden inferirse automáticamente:
 1. **Inferencia de tipos**: El tipo de los parámetros y el tipo de retorno pueden inferirse automáticamente.
 2. **Return implícito**: Si el cuerpo del closure tiene una sola línea, `return` es implícito.
 3. **Shorthand Argument Names**: Puedes usar `$0`, `$1`, `$2`, etc., como nombres de parámetros en lugar de definirlos explícitamente.

 A continuación, mostramos una versión progresivamente simplificada del closure.
 */

// Simplificación 1: Eliminamos la declaración de tipos y el return
let numerosOrdenadosSimplificado1 = numeros.sorted(by: { a, b in
    a < b
})
print("Números ordenados (simplificación 1): \(numerosOrdenadosSimplificado1)")

// Simplificación 2: Usamos los parámetros abreviados $0, $1
let numerosOrdenadosSimplificado2 = numeros.sorted(by: { $0 < $1 })
print("Números ordenados (simplificación 2): \(numerosOrdenadosSimplificado2)")

// Simplificación 3: Sintaxis final utilizando el cierre en trailing position
let numerosOrdenadosSimplificado3 = numeros.sorted { $0 < $1 }
print("Números ordenados (sintaxis final): \(numerosOrdenadosSimplificado3)")

//: ## Buenas Prácticas

/*:
 1. **Usar closures cuando sean necesarios**: No abuses de los closures. Son útiles para evitar la duplicación de funciones pequeñas, pero en algunos casos una función nombrada puede hacer el código más legible.
 2. **Utilizar la sintaxis simplificada de forma progresiva**: Comienza escribiendo el closure con sintaxis completa y luego simplifica en pasos. Esto ayuda a asegurar que el closure funcione correctamente antes de simplificarlo.
 3. **Comentarios claros**: Si la lógica dentro del closure es compleja, considera dejar comentarios que expliquen qué hace cada paso, incluso si usas la sintaxis simplificada.
 4. **Evitar closures anidados complejos**: Si un closure se vuelve demasiado complicado, considera extraerlo a una función para mantener el código limpio y legible.
 */

//: [Next](@next)
