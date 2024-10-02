//: [Previous](@previous)
/*:

 # Conflictos de Memoria con Acceso a `self`

 Cuando se accede a `self` dentro de closures o funciones, pueden surgir conflictos de memoria, especialmente en el contexto de ciclos de referencia.

 ## Ejemplo de Conflictos con `self`

 En este ejemplo, se muestra cómo el acceso a `self` puede causar problemas de memoria.

 */

class Gestor {
    var nombre: String

    init(nombre: String) {
        self.nombre = nombre
    }

    func ejecutarTarea() {
        let tarea = {
            print("Ejecutando tarea de \(self.nombre)")
        }
        tarea()
    }
}

// Creando una instancia de Gestor
let gestor = Gestor(nombre: "Laura")
gestor.ejecutarTarea() // Ejecutando tarea de Laura

/*:
 ## Buenas Prácticas
 1. **Usar capturas débiles cuando sea necesario**: Para evitar ciclos de referencia al capturar `self` en closures.
 2. **Ser consciente del ciclo de vida de las instancias**: Entender cómo `self` se relaciona con la memoria.

 Esta hoja explica los conflictos de memoria que pueden surgir al acceder a `self`.
 */

//: [Next](@next)
