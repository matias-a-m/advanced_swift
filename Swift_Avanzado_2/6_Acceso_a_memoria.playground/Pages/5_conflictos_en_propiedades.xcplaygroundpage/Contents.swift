//: [Previous](@previous)
/*:

 # Conflictos en Properties

 Los conflictos en las propiedades pueden surgir cuando hay referencias circulares o cuando se intenta acceder a propiedades no inicializadas.

 ## Ejemplo de Conflictos en Properties

 A continuación se muestra un ejemplo de cómo los conflictos en propiedades pueden causar problemas.

 */

class Persona {
    var nombre: String
    var compañero: Persona?

    init(nombre: String) {
        self.nombre = nombre
    }

    deinit {
        print("\(nombre) ha sido eliminado.")
    }
}

// Creando un ciclo de referencia
var persona1: Persona? = Persona(nombre: "Luis")
var persona2: Persona? = Persona(nombre: "Carlos")

persona1?.compañero = persona2 // Asignación circular
persona2?.compañero = persona1 // Asignación circular

// Al eliminar las referencias
persona1 = nil // Luis no se elimina debido al ciclo
persona2 = nil // Carlos no se elimina debido al ciclo

/*:
 ## Buenas Prácticas
 1. **Evitar ciclos de referencia en propiedades**: Usa referencias débiles o no poseídas.
 2. **Verificar la inicialización de propiedades**: Asegúrate de que las propiedades se inicialicen correctamente antes de acceder.

 Esta hoja detalla los conflictos en propiedades y cómo prevenir problemas de acceso a memoria.
 */

//: [Next](@next)
