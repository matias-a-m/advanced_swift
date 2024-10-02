//: [Previous](@previous)
/*:
 # Conformando Protocolos con Extensiones

 Las extensiones en Swift pueden ser utilizadas para proporcionar implementaciones de métodos requeridos en un protocolo, lo que permite compartir funcionalidad común entre varios tipos.

 ## Ejemplo Básico: Extensiones y Protocolos

 A continuación, se muestra cómo se puede usar una extensión para conformar un protocolo.
 */

protocol Informativo {
    func mostrarInformacion()
}

extension Informativo {
    func mostrarInformacion() {
        print("Información general.")
    }
}

/// Clase que conforma al protocolo Informativo.
class Producto: Informativo {
    var nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func mostrarInformacion() {
        print("Producto: \(nombre)")
    }
}

let producto = Producto(nombre: "Zapatos")
producto.mostrarInformacion() // Producto: Zapatos

/*:
 ### Casos de Uso Real
 Usar extensiones para implementar protocolos permite un código más limpio y modular, facilitando la reutilización de lógica común entre varios tipos.

 ### Buenas Prácticas
 1. **Usar extensiones para implementar métodos comunes**: Esto evita duplicar código y mejora la mantenibilidad.
 2. **Documentar las extensiones adecuadamente**: Asegúrate de que las extensiones sean claras y fáciles de entender.

 ### Preguntas Frecuentes
 **¿Puedo agregar propiedades en extensiones?**
 No puedes agregar propiedades almacenadas, pero puedes agregar propiedades computadas.

 **¿Las extensiones pueden incluir métodos de inicialización?**
 No, no se pueden incluir métodos de inicialización en las extensiones.

 */

//: [Next](@next)
