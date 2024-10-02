//: [Previous](@previous)
/*:

 # Ciclos de Referencia Strong

 Un ciclo de referencia fuerte ocurre cuando dos o más instancias se mantienen mutuamente fuertes, lo que puede llevar a que nunca se liberen de la memoria.

 ## Ejemplo de Ciclo de Referencia

 En este ejemplo, dos clases se refieren mutuamente, creando un ciclo de referencia fuerte.

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
    var dueño: Dueño

    init(nombre: String, dueño: Dueño) {
        self.nombre = nombre
        self.dueño = dueño
        print("\(nombre) ha sido creado.")
    }

    deinit {
        print("\(nombre) ha sido eliminado.")
    }
}

// Creando un ciclo de referencia
var dueño1: Dueño? = Dueño(nombre: "Laura")
var mascota1: Mascota? = Mascota(nombre: "Luna", dueño: dueño1!)
dueño1?.mascota = mascota1 // Crea un ciclo de referencia

// El ciclo de referencia impide que las instancias sean eliminadas
dueño1 = nil // No se elimina debido al ciclo
mascota1 = nil // No se elimina debido al ciclo

/*:
 ## Buenas Prácticas
 1. **Evitar ciclos de referencia**: Usa referencias débiles cuando sea posible.
 2. **Usar herramientas de diagnóstico**: Como el depurador de Xcode para detectar problemas de memoria.

 Esta hoja ilustra cómo los ciclos de referencia fuertes pueden causar problemas de memoria.
 */

//: [Next](@next)
