//: [Previous](@previous)
/*:

 # Automatic Reference Counting (ARC)

 ARC es una técnica de gestión de memoria en Swift que se utiliza para rastrear y manejar la memoria de manera automática. Asegura que las instancias de clase se eliminen cuando ya no se necesiten, liberando así la memoria ocupada.

 ## Ejemplo Básico

 Al crear una clase simple, ARC se encarga automáticamente de gestionar su ciclo de vida.

 */

class Persona {
    var nombre: String

    init(nombre: String) {
        self.nombre = nombre
        print("\(nombre) ha sido creado.")
    }

    deinit {
        print("\(nombre) ha sido eliminado.")
    }
}

// Creando una instancia de Persona
var persona: Persona? = Persona(nombre: "Matías") // Matías ha sido creado.
// Eliminando la referencia
persona = nil // Matías ha sido eliminado.

/*:
 ## Buenas Prácticas
 1. **Usar clases solo cuando sea necesario**: Si no necesitas herencia, considera usar estructuras.
 2. **Evitar referencias fuertes innecesarias**: Esto ayuda a prevenir ciclos de referencia.

 Esta hoja proporciona una introducción básica a ARC y su papel en la gestión de memoria en Swift.
 */

//: [Next](@next)
