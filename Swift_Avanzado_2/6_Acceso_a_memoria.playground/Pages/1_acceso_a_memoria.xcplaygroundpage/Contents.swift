//: [Previous](@previous)
/*:

 # Acceso a Memoria

 El acceso a memoria se refiere a cómo se gestionan y utilizan las referencias de memoria en Swift. Es crucial entender cómo se accede a la memoria para evitar errores y mejorar la eficiencia de las aplicaciones.

 ## Ejemplo de Acceso a Memoria

 A continuación se muestra un ejemplo básico de acceso a memoria utilizando clases y propiedades.

 */

class Estudiante {
    var nombre: String

    init(nombre: String) {
        self.nombre = nombre
        print("\(nombre) ha sido creado.")
    }

    deinit {
        print("\(nombre) ha sido eliminado.")
    }
}

// Creando una instancia de Estudiante
var estudiante1: Estudiante? = Estudiante(nombre: "Matías") // Matías ha sido creado.
estudiante1 = nil // Matías ha sido eliminado.

/*:
 ## Buenas Prácticas
 1. **Evitar accesos innecesarios a la memoria**: Mantener el código limpio y optimizado.
 2. **Usar referencias adecuadas**: Elegir entre `strong`, `weak` y `unowned` según el contexto.

 Esta hoja proporciona una introducción básica al acceso a memoria y su importancia en Swift.
 */

//: [Next](@next)
