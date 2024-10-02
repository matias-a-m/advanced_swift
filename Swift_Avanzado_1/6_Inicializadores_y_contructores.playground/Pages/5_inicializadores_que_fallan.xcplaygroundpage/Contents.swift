//: [Previous](@previous)

//: # Inicializadores que Fallan

/*:
 Los **inicializadores que fallan** son aquellos que pueden devolver `nil` si no pueden completar la inicialización de una instancia. Se declaran utilizando la palabra clave `failable` (es decir, `init?` o `init!`), lo que permite que el proceso de inicialización falle de manera controlada.
 */

//: ## Ejemplo Simple

/// Clase que representa un número entero positivo.
class NumeroPositivo {
    var valor: Int
    
    /// Inicializador que puede fallar si el número no es positivo.
    init?(valor: Int) {
        guard valor > 0 else {
            return nil // Falla si el valor no es positivo
        }
        self.valor = valor
    }
}

// Crear una instancia de NumeroPositivo
if let numero = NumeroPositivo(valor: -5) {
    print("Número positivo: \(numero.valor)")
} else {
    print("No se pudo crear un número positivo.") // No se pudo crear un número positivo.
}

//: ## Buenas Prácticas
/*:
 1. Usa inicializadores que fallan cuando el valor de entrada puede no ser válido.
 2. Asegúrate de que el uso de inicializadores que fallan esté documentado para que los usuarios de tu clase estén al tanto de su comportamiento.
 3. Maneja el error adecuadamente cuando la inicialización falla, proporcionando mensajes claros.
 */

//: [Next](@next)
