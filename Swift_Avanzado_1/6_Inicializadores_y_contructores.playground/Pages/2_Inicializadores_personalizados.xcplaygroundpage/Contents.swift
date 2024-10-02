//: [Previous](@previous)

//: # Inicializadores Personalizados

/*:
 Los **inicializadores personalizados** son aquellos que defines para establecer valores iniciales de las propiedades de una instancia de manera específica. Puedes aceptar parámetros para pasar valores a las propiedades al crear una nueva instancia.
 */

//: ## Ejemplo Simple

/// Clase que representa un círculo.
class Circulo {
    var radio: Double
    
    /// Inicializador personalizado que acepta el radio como parámetro.
    /// - Parameter radio: Radio del círculo.
    init(radio: Double) {
        self.radio = radio
    }
    
    /// Método que calcula el área del círculo.
    func area() -> Double {
        return Double.pi * radio * radio
    }
}

// Crear una instancia de Circulo usando un inicializador personalizado
let circulo = Circulo(radio: 5.0)
print("Área del círculo: \(circulo.area())") // Área del círculo: 78.53981633974483

//: ## Buenas Prácticas
/*:
 1. Usa inicializadores personalizados para garantizar que las instancias se creen en un estado válido.
 2. Considera la posibilidad de proporcionar múltiples inicializadores para diferentes formas de crear instancias (inicializadores sobrecargados).
 3. Documenta claramente los parámetros del inicializador para facilitar su uso.
 */

//: [Next](@next)
