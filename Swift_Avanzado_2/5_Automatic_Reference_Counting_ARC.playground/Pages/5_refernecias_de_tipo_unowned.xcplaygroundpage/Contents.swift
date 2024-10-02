//: [Previous](@previous)
/*:

 # Referencias de Tipo Unowned

 Las referencias no poseídas (`unowned`) son similares a las débiles, pero se utilizan cuando se espera que la instancia referenciada nunca sea nula mientras la instancia actual esté en uso.

 ## Ejemplo de Referencias Unowned

 En este ejemplo, usamos una referencia no poseída para evitar un ciclo de referencia, sabiendo que la instancia siempre estará presente.

 */

class Dueño {
    var nombre: String
    var mascota: Mascota?

    init(nombre: String) {
        self.nombre = nombre
        print("\(nombre) ha sido creado.")
    }

    deinit {
        print("\(nombre) ha sido eliminado.")
    }
}

class Mascota {
    var nombre: String
    unowned var dueño: Dueño // Referencia no poseída

    init(nombre: String, dueño: Dueño) {
        self.nombre = nombre
        self.dueño = dueño
        print("\(nombre) ha sido creado.")
    }

    deinit {
        print("\(nombre) ha sido eliminado.")
    }
}

// Creando instancias sin ciclo de referencia
var dueño1: Dueño? = Dueño(nombre: "Laura")
var mascota1: Mascota? = Mascota(nombre: "Luna", dueño: dueño1!)

dueño1?.mascota = mascota1 // No crea un ciclo

dueño1 = nil // Laura ha sido eliminado.
mascota1 = nil // Luna ha sido eliminado.

/*:
 ## Buenas Prácticas
 1. **Usar `unowned` solo cuando la instancia referenciada se espera que nunca sea nula**: Esto evita fallos en tiempo de ejecución.
 2. **Documentar claramente el uso de referencias no poseídas**: Facilita la comprensión del código.

 Esta hoja muestra cómo las referencias no poseídas pueden ayudar a gestionar ciclos de referencia en situaciones específicas.
 */

//: [Next](@next)
