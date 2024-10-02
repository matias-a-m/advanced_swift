//: [Previous](@previous)
/*:
 # Extensiones con Subíndices

 Las extensiones en Swift permiten agregar subíndices a tus tipos, facilitando el acceso a datos de forma más intuitiva.

 ## Ejemplo Básico: Subíndice Personalizado

 A continuación, se agrega un subíndice a la clase `Coche` para acceder a los datos del coche utilizando un índice.
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
    /// Subíndice para acceder a detalles del coche.
    subscript(detalle: String) -> String {
        switch detalle {
        case "marca":
            return marca
        case "anio":
            return "\(anio)"
        default:
            return "Detalle no encontrado"
        }
    }
}

let miCoche5 = Coche(marca: "Audi", anio: 2021)
print("Marca: \(miCoche5["marca"]), Año: \(miCoche5["anio"])") // Marca: Audi, Año: 2021

/*:
 ### Casos de Uso Real
 Los subíndices son útiles en estructuras de datos complejas o colecciones, permitiendo un acceso más natural a sus elementos, como obtener información de usuarios o propiedades en modelos de datos.

 ### Buenas Prácticas
 1. **Limitar el uso de subíndices a colecciones lógicas**: Utiliza subíndices en estructuras donde el acceso basado en índices tenga sentido.
 2. **Documentar los subíndices claramente**: Asegúrate de que el propósito y el uso estén claros.

 ### Preguntas Frecuentes
 **¿Puedo definir múltiples subíndices en la misma extensión?**
 Sí, puedes definir tantos subíndices como necesites en una extensión.

 **¿Los subíndices pueden ser mutables?**
 Sí, puedes definir subíndices que permitan la asignación, siempre que tengas cuidado con su diseño.

 */

//: [Next](@next)
