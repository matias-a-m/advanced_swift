//: [Previous](@previous)
/*:
 # Colecciones de Protocolos

 Puedes usar protocolos como tipos en colecciones, permitiendo almacenar diferentes tipos que conforman un mismo protocolo en una sola colección.

 ## Ejemplo Básico: Uso de Protocolos en Colecciones

 A continuación, se muestra cómo se puede crear una colección de objetos que conforman un protocolo.
 */

protocol Jugador {
    var nombre: String { get }
    func jugar()
}

/// Clase que conforma al protocolo Jugador.
class Futbolista: Jugador {
    var nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func jugar() {
        print("\(nombre) está jugando al fútbol.")
    }
}

/// Clase que conforma al protocolo Jugador.
class Basquetbolista: Jugador {
    var nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func jugar() {
        print("\(nombre) está jugando al baloncesto.")
    }
}

let jugadores: [Jugador] = [Futbolista(nombre: "Lionel"), Basquetbolista(nombre: "LeBron")]
for jugador in jugadores {
    jugador.jugar()
}

/*:
 ### Casos de Uso Real
 Las colecciones de protocolos permiten manejar diferentes tipos de manera uniforme, lo que es útil en patrones de diseño como el factory o el patrón de estrategia.

 ### Buenas Prácticas
 1. **Utilizar protocolos para tipos heterogéneos**: Esto mejora la flexibilidad y la escalabilidad del código.
 2. **Evitar dependencias innecesarias entre tipos**: Focaliza en el comportamiento en lugar de la implementación concreta.

 ### Preguntas Frecuentes
 **¿Puedo usar protocolos con tipos de valor y tipos de referencia?**
 Sí, los protocolos pueden ser conformados por clases y estructuras, permitiendo una amplia variedad de tipos.

 **¿Qué sucede si un tipo no implementa el protocolo requerido?**
 El tipo no podrá ser utilizado como un tipo del protocolo.

 */

//: [Next](@next)
