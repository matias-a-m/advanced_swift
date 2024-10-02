//: [Previous](@previous)
/*:
 # Requisitos de Properties y Métodos

 Los protocolos pueden incluir requisitos de propiedades y métodos que deben implementarse en los tipos conformantes.

 ## Ejemplo Básico: Requisitos de Propiedades y Métodos

 En este ejemplo, se define un protocolo `Forma` que requiere que las clases conformantes tengan una propiedad y un método específico.
 */

import Foundation

protocol Forma {
    /// Propiedad que representa el área de la forma.
    var area: Double { get }
    
    /// Método que calcula el perímetro de la forma.
    func perimetro() -> Double
}

/// Clase que conforma al protocolo Forma.
class Circulo: Forma {
    var radio: Double
    
    var area: Double {
        return Double.pi * pow(radio, 2)
    }
    
    init(radio: Double) {
        self.radio = radio
    }
    
    func perimetro() -> Double {
        return 2 * Double.pi * radio
    }
}

let miCirculo = Circulo(radio: 5)
print("Área: \(miCirculo.area), Perímetro: \(miCirculo.perimetro())") // Área: 78.53981633974483, Perímetro: 31.41592653589793

/*:
 ### Casos de Uso Real
 Los requisitos de propiedades y métodos permiten establecer un contrato claro que los tipos deben cumplir, lo que facilita la integración y el mantenimiento en aplicaciones grandes.

 ### Buenas Prácticas
 1. **Define requisitos claros y concisos**: Los requisitos deben ser fácilmente comprensibles y aplicables.
 2. **Usa extensiones para implementar funcionalidades comunes**: Si varios tipos comparten implementaciones, considera usar extensiones.

 ### Preguntas Frecuentes
 **¿Puedo tener métodos de inicialización en un protocolo?**
 No, los protocolos no pueden definir inicializadores directamente, pero pueden requerir que los conformantes implementen un inicializador específico.

 **¿Qué sucede si una clase conformante no implementa todos los requisitos?**
 Debe proporcionar implementaciones para todos los requisitos del protocolo o ser declarada como `final`.

 */

//: [Next](@next)
