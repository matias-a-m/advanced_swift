//: [Previous](@previous)

//: # Sintaxis de Datos Enumerados

/*:
 Los enumeradores en Swift se definen utilizando la palabra clave `enum`, seguida del nombre del enumerador y de sus casos. Aquí se presentan las distintas maneras de definir enumeradores, junto con ejemplos.
 */

//: ## 1. Definición Básica de un Enumerador

// Ejemplo básico
enum Color {
    case rojo
    case verde
    case azul
}

// Uso del enumerador
let colorFavorito = Color.rojo

/*:
 Este ejemplo define un enumerador simple llamado `Color` que contiene tres casos. Se puede usar para representar colores de manera clara y estructurada.
 */

//: ## 2. Enumeradores con Valores Asociados

// Ejemplo medio
enum Mensaje {
    case texto(String)
    case imagen(String)
}

// Uso de enumeradores con valores asociados
let mensaje1 = Mensaje.texto("¡Hola!")
let mensaje2 = Mensaje.imagen("foto.png")

/*:
 En este caso, `Mensaje` permite almacenar diferentes tipos de datos. Cada caso puede llevar un valor asociado, que proporciona información adicional sobre el mensaje.
 */

//: ## 3. Enumeradores con Raw Values

// Ejemplo básico
enum Estado: Int {
    case inactivo = 0
    case activo = 1
    case suspendido = 2
}

// Uso de enumeradores con raw values
let estadoUsuario = Estado.activo
print("Estado del usuario: \(estadoUsuario.rawValue)") // Estado del usuario: 1

/*:
 Los raw values permiten asignar un valor predeterminado a cada caso, como un número entero en este ejemplo. Se puede acceder al valor utilizando la propiedad `rawValue`.
 */

//: ## 4. Enumeradores Recursivos

// Ejemplo complejo
indirect enum Expresion {
    case numero(Int)
    case suma(Expresion, Expresion)
}

// Uso de enumeradores recursivos
let expresionEjemplo = Expresion.suma(Expresion.numero(5), Expresion.numero(3))

/*:
 Los enumeradores recursivos, como `Expresion`, pueden representar estructuras de datos complejas, permitiendo crear árboles de expresiones matemáticas o similares.
 */

//: [Next](@next)
