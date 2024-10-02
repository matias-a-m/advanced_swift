//: [Previous](@previous)
/*:
 # Computed Properties de una Extensión

 Las propiedades computadas son propiedades que no almacenan un valor, sino que calculan su valor en el momento de ser accedidas. Puedes agregar propiedades computadas a tus clases o estructuras a través de extensiones.

 ## Ejemplo Básico: Propiedad Computada

 En este ejemplo, se añade una propiedad computada `descripcion` a la clase `Coche` que devuelve una cadena descriptiva del coche.
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
    /// Propiedad computada que devuelve una descripción del coche.
    var descripcion: String {
        return "Marca: \(marca), Año: \(anio)"
    }
}

let miCoche2 = Coche(marca: "Honda", anio: 2020)
print(miCoche2.descripcion) // Marca: Honda, Año: 2020

/*:
 ### Casos de Uso Real
 Las propiedades computadas son útiles para proporcionar información adicional o calculada sin necesidad de almacenar datos adicionales. Por ejemplo, puedes crear propiedades computadas en un modelo de datos que representen el estado de un usuario en una aplicación.

 ### Buenas Prácticas
 1. **Evitar lógica compleja en propiedades computadas**: Mantén el cálculo simple y directo.
 2. **Documentar el propósito de las propiedades computadas**: Asegúrate de que su uso esté claro para otros desarrolladores.

 ### Preguntas Frecuentes
 **¿Puedo utilizar propiedades computadas en estructuras?**
 Sí, las propiedades computadas se pueden utilizar tanto en clases como en estructuras.

 **¿Las propiedades computadas pueden ser mutables?**
 No, las propiedades computadas son inmutables por sí solas; sin embargo, puedes definir métodos que cambien el estado interno.

 */

//: [Next](@next)
