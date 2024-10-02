//: [Previous](@previous)
/*:

 # Cómo Funciona y Para Qué Sirve ARC

 ARC gestiona la memoria manteniendo un conteo de referencias para cada instancia de clase. Cuando una instancia se crea, su conteo de referencia se inicializa en 1. Cada vez que se crea una nueva referencia a esa instancia, el conteo se incrementa. Cuando se elimina una referencia, el conteo se decrementa.

 ## Ejemplo de Funcionamiento

 En este ejemplo, ilustramos cómo ARC incrementa y decrementa el conteo de referencias.

 */

class Mascota {
    var nombre: String

    init(nombre: String) {
        self.nombre = nombre
        print("\(nombre) ha sido creado.")
    }

    deinit {
        print("\(nombre) ha sido eliminado.")
    }
}

// Creando dos referencias a la misma instancia
var mascota1: Mascota? = Mascota(nombre: "Rex") // Rex ha sido creado.
var mascota2 = mascota1 // Incrementa el conteo de referencias
mascota1 = nil // Decrementa el conteo de referencias
mascota2 = nil // Rex ha sido eliminado.

/*:
 ## Buenas Prácticas
 1. **Entender el ciclo de vida de las instancias**: Esto te ayudará a evitar problemas de memoria.
 2. **Mantener el código limpio y legible**: Facilita la detección de problemas relacionados con la memoria.

 Esta hoja explica cómo ARC gestiona el conteo de referencias y su utilidad en la gestión de memoria.
 */

//: [Next](@next)
