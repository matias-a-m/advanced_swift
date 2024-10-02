//: [Previous](@previous)

//: # Raw Values en Enums

/*:
 Los raw values permiten asignar un valor predeterminado a cada caso de un enumerador, facilitando su uso y comprensión. Aquí se presentan ejemplos sobre cómo utilizar raw values en enumeradores.
 */

//: ## 1. Definición de Raw Values

// Ejemplo básico
enum Planeta: Int {
    case mercurio = 1
    case venus = 2
    case tierra = 3
    case marte = 4
}

// Uso de raw values
let planetaTierra = Planeta.tierra
print("Número del planeta Tierra: \(planetaTierra.rawValue)") // Número del planeta Tierra: 3

/*:
 En este caso, el enumerador `Planeta` asigna números enteros a cada planeta, permitiendo su identificación fácil y ordenada.
 */

//: ## 2. Inicialización desde Raw Values

// Ejemplo medio
if let planeta = Planeta(rawValue: 2) {
    print("El planeta es: \(planeta)") // El planeta es: venus
} else {
    print("Planeta no válido")
}

/*:
 Se puede inicializar un enumerador utilizando su raw value. Si el valor no corresponde a ningún caso, se devuelve `nil`, lo que permite manejar errores de forma segura.
 */

//: ## 3. Usar Enumeradores con Raw Values en Funciones

// Ejemplo complejo
func clasificarPlaneta(planeta: Planeta) {
    switch planeta {
    case .mercurio:
        print("Mercurio es el planeta más cercano al sol.")
    case .venus:
        print("Venus es el segundo planeta.")
    case .tierra:
        print("La Tierra es el tercer planeta.")
    case .marte:
        print("Marte es el cuarto planeta.")
    }
}

// Uso de la función
clasificarPlaneta(planeta: .marte) // Marte es el cuarto planeta.

/*:
 Este ejemplo demuestra cómo se pueden utilizar enumeradores con raw values en funciones, proporcionando una forma clara de clasificar y manejar diferentes casos.
 */

//: [Next](@next)
