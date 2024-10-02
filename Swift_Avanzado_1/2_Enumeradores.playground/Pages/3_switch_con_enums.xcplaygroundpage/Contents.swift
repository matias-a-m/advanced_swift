//: [Previous](@previous)

//: # Uso de Switch con Enumeradores

/*:
 El uso de `switch` con enumeradores permite manejar múltiples casos de forma clara y organizada. A continuación se presentan ejemplos de cómo utilizar `switch` con enumeradores en Swift.
 */

//: ## 1. Uso Básico de Switch

// Ejemplo básico
enum Direccion {
    case norte
    case sur
    case este
    case oeste
}

// Función para imprimir dirección
func imprimirDireccion(direccion: Direccion) {
    switch direccion {
    case .norte:
        print("Vas hacia el norte.")
    case .sur:
        print("Vas hacia el sur.")
    case .este:
        print("Vas hacia el este.")
    case .oeste:
        print("Vas hacia el oeste.")
    }
}

// Uso de la función
imprimirDireccion(direccion: .sur) // Vas hacia el sur.

/*:
 En este ejemplo, se utiliza `switch` para manejar las diferentes direcciones, lo que permite una sintaxis clara y comprensible.
 */

//: ## 2. Switch con Valores Asociados

// Ejemplo medio
enum Resultado {
    case exito(puntaje: Int)
    case falla(motivo: String)
}

// Función para manejar el resultado
func manejarResultado(resultado: Resultado) {
    switch resultado {
    case .exito(let puntaje):
        print("¡Éxito! Puntaje: \(puntaje)")
    case .falla(let motivo):
        print("Falla: \(motivo)")
    }
}

// Uso de la función
manejarResultado(resultado: .exito(puntaje: 90)) // ¡Éxito! Puntaje: 90

/*:
 Este ejemplo muestra cómo `switch` se puede utilizar para manejar casos con valores asociados, proporcionando acceso a la información adicional contenida en el enumerador.
 */

//: ## 3. Switch con Enumeradores Recursivos

// Ejemplo complejo
indirect enum Expresion {
    case numero(Int)
    case suma(Expresion, Expresion)
}

// Función para evaluar una expresión
func evaluar(expresion: Expresion) -> Int {
    switch expresion {
    case .numero(let valor):
        return valor
    case .suma(let izquierda, let derecha):
        return evaluar(expresion: izquierda) + evaluar(expresion: derecha)
    }
}

// Uso de la función
let expr = Expresion.suma(Expresion.numero(2), Expresion.numero(3))
let resultado = evaluar(expresion: expr)
print("Resultado de la expresión: \(resultado)") // Resultado de la expresión: 5

/*:
 En este ejemplo, se evalúa una expresión que utiliza un enumerador recursivo, mostrando cómo se puede manejar una estructura de datos compleja utilizando `switch`.
 */

//: [Next](@next)
