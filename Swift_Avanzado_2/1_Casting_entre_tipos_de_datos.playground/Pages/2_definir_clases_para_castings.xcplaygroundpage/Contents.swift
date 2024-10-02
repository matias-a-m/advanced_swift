//: [Previous](@previous)
/*:
 ## Definir clases para castings

 ### Descripción
 Al trabajar en aplicaciones que manejan distintos tipos de datos, es común utilizar clases personalizadas. Definir clases adecuadamente permite un manejo eficaz de los datos y facilita el casting entre tipos.

 ### Ejemplo: Definición de Clases y Casting

 En este ejemplo, definimos dos clases: `Animal` y `Perro`, donde `Perro` hereda de `Animal`. Utilizamos un casting para acceder a propiedades específicas de la clase `Perro`.
 */

class Animal {
    var nombre: String // Nombre del animal
    
    // Inicializador de la clase
    init(nombre: String) {
        self.nombre = nombre
    }
}

class Perro: Animal { // Subclase Perro
    // Método específico de la clase Perro
    func ladrar() {
        print("\(nombre) dice: ¡Guau!")
    }
}

// Creamos un objeto de tipo `Animal`
let miMascota: Animal = Perro(nombre: "Rex")

// Intentamos hacer un casting de `Animal` a `Perro`
if let perro = miMascota as? Perro { // Casting seguro
    // Documentación del código: Si el casting es exitoso, se accede al método ladrar de la clase Perro.
    perro.ladrar() // Resultado: Rex dice: ¡Guau!
} else {
    print("El objeto no es un perro.")
}

/*:
 ### Casos de Uso Real
 En una aplicación de gestión de mascotas, puedes tener una colección de diferentes animales. Al necesitar acceder a métodos específicos de un tipo de animal, el casting te permitirá hacerlo de manera segura.

 ### Buenas Prácticas
 1. **Uso de `as?` para casting seguro**: Siempre utiliza `as?` para evitar fallos en el casting.
 2. **Documentar la jerarquía de clases**: Explica las relaciones entre las clases para facilitar la comprensión.
 3. **Usar protocolos cuando sea posible**: Esto permite el uso de diferentes tipos de datos sin depender de la jerarquía de clases, aumentando la flexibilidad.
 */

//: [Next](@next)
