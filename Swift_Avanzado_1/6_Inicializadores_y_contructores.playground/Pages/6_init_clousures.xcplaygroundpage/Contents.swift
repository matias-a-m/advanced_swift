//: [Previous](@previous)

//: # `init` Conclusures

/*:
 En Swift, los **inicializadores con cláusulas** son inicializadores que se utilizan para realizar configuraciones adicionales al inicializar una instancia. Puedes utilizar inicializadores con cláusulas para ejecutar código adicional o realizar validaciones.
 */

//: ## Ejemplo Simple

/// Clase que representa un rectángulo.
class Rectangulo {
    var ancho: Double
    var alto: Double
    
    /// Inicializador principal que establece el ancho y alto.
    /// - Parameters:
    ///   - ancho: Ancho del rectángulo.
    ///   - alto: Alto del rectángulo.
    init?(ancho: Double, alto: Double) {
        // Falla si el ancho o alto son negativos
        guard ancho > 0, alto > 0 else {
            return nil
        }
        self.ancho = ancho
        self.alto = alto
    }
    
    /// Método que calcula el área del rectángulo.
    func area() -> Double {
        return ancho * alto
    }
}

// Crear una instancia de Rectangulo
if let rectangulo = Rectangulo(ancho: 4.0, alto: 3.0) {
    print("Rectángulo: Ancho = \(rectangulo.ancho), Alto = \(rectangulo.alto), Área = \(rectangulo.area())")
} else {
    print("No se pudo crear el rectángulo.")
}

//: ## Buenas Prácticas
/*:
 1. Utiliza inicializadores con cláusulas para realizar configuraciones adicionales que no pueden ser simplemente asignaciones de propiedades.
 2. Proporciona una forma clara de manejar errores de inicialización.
 3. Documenta cualquier comportamiento especial o validaciones que se realicen dentro de los inicializadores con cláusulas.
 */

//: [Next](@next)
