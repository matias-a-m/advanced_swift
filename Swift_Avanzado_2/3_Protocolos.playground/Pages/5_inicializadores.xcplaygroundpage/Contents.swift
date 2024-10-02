//: [Previous](@previous)
/*:
 # Inicializadores de un Protocolo

Aunque los protocolos no pueden definir inicializadores, puedes requerir que los conformantes implementen un inicializador específico. Esto asegura que los tipos conformantes puedan ser inicializados de una manera esperada.

 ## Ejemplo Básico: Inicializador en Protocolo

 A continuación, se define un protocolo `Vehiculo` que requiere un inicializador con un nombre y un año.
 */

protocol Vehiculo {
    var nombre: String { get }
    var anio: Int { get }
    
    init(nombre: String, anio: Int)
}

/// Clase que conforma al protocolo Vehiculo.
class Bicicleta: Vehiculo {
    var nombre: String
    var anio: Int
    
    required init(nombre: String, anio: Int) {
        self.nombre = nombre
        self.anio = anio
    }
}

let miBicicleta = Bicicleta(nombre: "Bicicleta de Montaña", anio: 2022)
print("Nombre: \(miBicicleta.nombre), Año: \(miBicicleta.anio)") // Nombre: Bicicleta de Montaña, Año: 2022

/*:
 ### Casos de Uso Real
 Los inicializadores en protocolos permiten establecer patrones de creación para diferentes tipos de datos, facilitando la consistencia en la inicialización.

 ### Buenas Prácticas
 1. **Usar inicializadores requeridos para mantener consistencia**: Asegúrate de que los tipos conformantes sigan un patrón común de inicialización.
 2. **Documentar las condiciones de inicialización**: Indica qué parámetros son necesarios y su propósito.

 ### Preguntas Frecuentes
 **¿Puedo tener múltiples inicializadores en un protocolo?**
 No, un protocolo solo puede definir un único inicializador requerido.

 **¿Qué sucede si no implemento el inicializador requerido?**
 El tipo conformante no cumplirá con el protocolo, lo que generará un error de compilación.

 */

//: [Next](@next)
