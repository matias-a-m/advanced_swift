//: [Previous](@previous)

//: # Propiedades de Tipo

/*:
 Las **propiedades de tipo** son propiedades que pertenecen a la clase o estructura en lugar de a instancias individuales. Se definen con la palabra clave `static` (o `class` en clases) y se accede a ellas directamente desde la clase o estructura.
 */

//: ## Ejemplo Básico

struct Configuracion {
    static var temaActual: String = "Claro" // Propiedad de tipo que guarda el tema actual
}

// Acceder a la propiedad de tipo
print("Tema actual: \(Configuracion.temaActual)") // Tema actual: Claro

/*:
 En este ejemplo, `temaActual` es una propiedad de tipo que se puede acceder directamente desde la estructura `Configuracion`. Esto es útil para guardar configuraciones globales que pueden ser utilizadas en toda la aplicación.
 */

//: ## Ejemplo Realista en una Aplicación

class Usuario {
    static var usuarioActual: String? // Propiedad de tipo que guarda el nombre del usuario actual
    var nombre: String // Propiedad de instancia para el nombre del usuario

    init(nombre: String) {
        self.nombre = nombre
        Usuario.usuarioActual = nombre // Establece el usuario actual al crear una instancia
    }
}

// Crear instancias de Usuario
let usuario1 = Usuario(nombre: "Matías")
let usuario2 = Usuario(nombre: "Ana")

// Acceder a la propiedad de tipo
print("Usuario actual: \(Usuario.usuarioActual ?? "Ninguno")") // Usuario actual: Ana

/*:
 En este ejemplo, `usuarioActual` es una propiedad de tipo que almacena el nombre del usuario que ha iniciado sesión. Cada vez que se crea una nueva instancia de `Usuario`, se actualiza esta propiedad para reflejar el usuario más reciente. Esto es útil en aplicaciones donde solo se permite un usuario activo a la vez, como en aplicaciones de redes sociales o bancarias.
 */

//: ## Advertencia sobre Propiedades de Tipo

/*:
 Al utilizar propiedades de tipo, puedes recibir la advertencia:

 `Static property 'nombrePropiedad' is not concurrency-safe because it is nonisolated global shared mutable state.`

 Esto significa que las propiedades estáticas pueden ser accedidas y modificadas desde múltiples hilos al mismo tiempo, lo que puede llevar a condiciones de carrera y comportamientos inesperados. Para evitar problemas de concurrencia:
 
 1. **Evita modificar propiedades estáticas desde diferentes hilos** sin una adecuada sincronización.
 2. **Considera el uso de mecanismos de sincronización** como colas seriales o semáforos si tu aplicación hace uso intensivo de la concurrencia.
 3. **Usa propiedades inmutables** si es posible, para garantizar que el estado no cambie inesperadamente.

 Tener en cuenta estas recomendaciones te ayudará a mantener la estabilidad y la seguridad en tu aplicación.
 */

//: [Next](@next)
