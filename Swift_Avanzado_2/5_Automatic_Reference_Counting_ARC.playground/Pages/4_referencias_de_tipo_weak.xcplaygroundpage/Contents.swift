//: [Previous](@previous)
/*:

 # Referencias de Tipo Weak

 Las referencias débiles se utilizan para romper ciclos de referencia fuertes. Una referencia débil no incrementa el conteo de referencias de la instancia a la que apunta.

 ## Ejemplo de Referencias Weak

 En este ejemplo, usamos una referencia débil para evitar un ciclo de referencia.

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
    weak var dueño: Dueño? // Referencia débil

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
 1. **Usar `weak` para referencias opcionales**: Solo se debe usar en propiedades opcionales.
 2. **Documentar el uso de referencias débiles**: Asegúrate de que el propósito sea claro.

 Esta hoja muestra cómo las referencias débiles pueden ayudar a evitar ciclos de referencia en la gestión de memoria.
 */

//: [Next](@next)
