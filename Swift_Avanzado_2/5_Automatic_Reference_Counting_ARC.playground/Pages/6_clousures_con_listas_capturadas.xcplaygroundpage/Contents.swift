//: [Previous](@previous)
/*:

 # Closures con Listas Capturadas

 Las closures pueden capturar y almacenar referencias a variables y constantes del contexto en el que se definen. Esto puede llevar a ciclos de referencia si no se maneja adecuadamente.

 ## Ejemplo de Ciclos de Referencia en Closures

 En este ejemplo, mostramos cómo una closure puede causar un ciclo de referencia.

 */

class Compañero {
    var nombre: String
    var tarea: (() -> Void)?

    init(nombre: String) {
        self.nombre = nombre
        print("\(nombre) ha sido creado.")
    }

    deinit {
        print("\(nombre) ha sido eliminado.")
    }
}

// Creando un ciclo de referencia con una closure
var compañero1: Compañero? = Compañero(nombre: "Ana")
compañero1?.tarea = {
    print("\(compañero1!.nombre) está trabajando en la tarea.")
}

compañero1 = nil // Ana no se elimina debido al ciclo

/*:
 ## Buenas Prácticas
 1. **Usar `capture lists` en closures para evitar ciclos de referencia**: Al capturar, especifica referencias débiles o no poseídas.
 2. **Revisar cuidadosamente el uso de closures**: Para evitar problemas de memoria no deseados.

 Esta hoja ilustra cómo las closures pueden causar ciclos de referencia y cómo manejarlos.
 */

//: [Next](@next)
