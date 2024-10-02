//: [Previous](@previous)
/*:
 # Extensiones en Swift

 Las extensiones en Swift permiten agregar funcionalidad a tipos existentes, como clases, estructuras y enumeraciones, sin necesidad de crear una subclase. Esto ayuda a organizar el código de manera más efectiva y a mantener la modularidad en tus aplicaciones.

 ## ¿Por qué usar extensiones?
 - **Modularidad**: Puedes dividir la funcionalidad en secciones lógicas, facilitando la comprensión y el mantenimiento del código.
 - **Reutilización**: Las extensiones permiten reutilizar código en diferentes partes de la aplicación sin duplicación.
 - **Mantenimiento**: Al agregar funcionalidades a tipos existentes, se evita la necesidad de modificar la definición original de la clase o estructura.

 ## Ejemplo Básico: Extensión de una Clase

 A continuación, se muestra cómo se puede agregar un método a la clase `Coche` para calcular su edad.
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

/// Extensión de la clase Coche para calcular su edad.
extension Coche {
    /// Calcula la edad del coche basado en el año actual.
    /// - Returns: La edad del coche en años.
    func edad() -> Int {
        let anioActual = Calendar.current.component(.year, from: Date())
        return anioActual - anio
    }
}

let miCoche = Coche(marca: "Toyota", anio: 2015)
print("La edad del coche es: \(miCoche.edad()) años") // La edad del coche es: 9 años

/*:
 ### Casos de Uso Real
 Las extensiones son útiles cuando deseas añadir funcionalidad a tipos de datos estándar, como la creación de métodos que operen en objetos de frameworks existentes. Por ejemplo, podrías agregar métodos de manipulación de cadenas a `String`.

 ### Buenas Prácticas
 1. **Organizar el código**: Utiliza extensiones para dividir la funcionalidad en secciones lógicas.
 2. **Limitar el tamaño de las extensiones**: Mantén cada extensión enfocada en una única responsabilidad.
 3. **Documentar claramente**: Asegúrate de que el propósito de cada extensión esté claro para otros desarrolladores.

 ### Preguntas Frecuentes
 **¿Puedo extender tipos de datos que no he definido?**
 Sí, puedes extender tipos de datos existentes de Swift y de bibliotecas, lo que te permite agregar funcionalidad personalizada.

 **¿Las extensiones pueden contener propiedades almacenadas?**
 No, las extensiones no pueden añadir propiedades almacenadas, pero pueden incluir propiedades computadas.

 */

//: [Next](@next)
