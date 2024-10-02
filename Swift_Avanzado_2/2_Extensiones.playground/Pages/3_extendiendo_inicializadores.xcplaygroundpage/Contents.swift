//: [Previous](@previous)
/*:
 # Extendiendo Inicializadores

 Puedes agregar inicializadores a tus tipos a través de extensiones, lo que te permite crear instancias de clases o estructuras de manera más flexible.

 ## Ejemplo Básico: Inicializador Adicional

 A continuación, se muestra cómo se puede agregar un inicializador a la clase `Coche` que permite crear un coche con solo una marca, asignando un año por defecto.
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
    /// Inicializador que permite crear un coche solo con su marca, asignando un año por defecto.
    convenience init(marca: String) {
        self.init(marca: marca, anio: 2023) // Asignar año actual como por defecto
    }
}

let miCoche3 = Coche(marca: "Ford") // Coche creado solo con la marca
print("Marca: \(miCoche3.marca), Año: \(miCoche3.anio)") // Marca: Ford, Año: 2023

/*:
 ### Casos de Uso Real
 Los inicializadores extendidos son útiles para crear instancias de tipos con diferentes conjuntos de parámetros, facilitando su uso en diferentes contextos de tu aplicación.

 ### Buenas Prácticas
 1. **Utilizar inicializadores convenientes para valores predeterminados**: Proporciona valores predeterminados claros para simplificar la creación de instancias.
 2. **Documentar los inicializadores**: Asegúrate de que el propósito de cada inicializador sea claro para otros desarrolladores.

 ### Preguntas Frecuentes
 **¿Puedo extender inicializadores en clases que ya tienen uno definido?**
 Sí, puedes agregar inicializadores adicionales a clases existentes.

 **¿Puedo tener múltiples inicializadores en la misma extensión?**
 Sí, puedes definir tantos inicializadores como necesites en una extensión.

 */

//: [Next](@next)
