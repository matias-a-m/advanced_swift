//: [Previous](@previous)
/*:
 # Extensiones con Métodos

 Las extensiones también permiten agregar métodos a tipos existentes, lo que facilita la organización del código y mejora la legibilidad.

 ## Ejemplo Básico: Método Personalizado

 Aquí se agrega un método `esDeLujo` a la clase `Coche`, que determina si el coche es de lujo basado en su marca.
 */

import Foundation
class Coche {
    var marca: String
    var anio: Int
    
    init(marca: String, anio: Int) {
        self.marca = marca
        self.anio = anio
    }
}

extension Coche {
    /// Determina si el coche es considerado de lujo.
    /// - Returns: `true` si el coche es de lujo, de lo contrario `false`.
    func esDeLujo() -> Bool {
        let marcasDeLujo = ["Mercedes", "BMW", "Audi", "Porsche"]
        return marcasDeLujo.contains(marca)
    }
}

let miCoche4 = Coche(marca: "Mercedes", anio: 2018)
print("¿Es de lujo? \(miCoche4.esDeLujo())") // ¿Es de lujo? true

/*:
 ### Casos de Uso Real
 Agregar métodos a través de extensiones es útil para encapsular la lógica relacionada con un tipo específico, como validar datos o calcular valores derivados.

 ### Buenas Prácticas
 1. **Mantener los métodos enfocados en una única responsabilidad**: Cada método debe hacer una cosa bien.
 2. **Documentar cada método**: Proporciona comentarios claros sobre qué hace cada método y sus parámetros.

 ### Preguntas Frecuentes
 **¿Las extensiones pueden contener métodos de clase?**
 Sí, puedes agregar métodos de clase a través de extensiones utilizando la palabra clave `class func`.

 **¿Puedo sobrescribir un método existente en una extensión?**
 No, no puedes sobrescribir métodos existentes; puedes agregar nuevos métodos solo.

 */

//: [Next](@next)
