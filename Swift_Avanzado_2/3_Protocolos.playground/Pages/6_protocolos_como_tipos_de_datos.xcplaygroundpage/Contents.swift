//: [Previous](@previous)
/*:
 # Protocolos como Tipos de Dato

 Los protocolos pueden ser utilizados como tipos de dato, permitiendo que las variables y constantes se definan como una instancia de un protocolo en lugar de un tipo específico.

 ## Ejemplo Básico: Uso de Protocolos como Tipos

 A continuación, se muestra cómo se pueden usar protocolos como tipos de dato.
 */

protocol Dispositivo {
    func encender()
}

/// Clase que conforma al protocolo Dispositivo.
class Televisor: Dispositivo {
    func encender() {
        print("Televisor encendido.")
    }
}

/// Clase que conforma al protocolo Dispositivo.
class Radio: Dispositivo {
    func encender() {
        print("Radio encendida.")
    }
}

func iniciarDispositivo(dispositivo: Dispositivo) {
    dispositivo.encender()
}

let miTelevisor = Televisor()
let miRadio = Radio()
iniciarDispositivo(dispositivo: miTelevisor) // Televisor encendido.
iniciarDispositivo(dispositivo: miRadio) // Radio encendida.

/*:
 ### Casos de Uso Real
 Utilizar protocolos como tipos de dato permite escribir código más flexible y desacoplado, lo que facilita la modificación y ampliación de funcionalidades.

 ### Buenas Prácticas
 1. **Utilizar protocolos para tipos de datos comunes**: Define protocolos que representen comportamientos comunes en tu aplicación.
 2. **Evitar la dependencia de implementaciones concretas**: Esto promueve un diseño más limpio y modular.

 ### Preguntas Frecuentes
 **¿Puedo usar protocolos como tipos en colecciones?**
 Sí, puedes crear colecciones que contengan tipos de protocolos.

 **¿Qué sucede si un tipo no cumple con el protocolo?**
 Si un tipo no cumple con el protocolo, no puede ser usado como ese tipo.

 */

//: [Next](@next)
