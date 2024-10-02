//: [Previous](@previous)
/*:
 # Herencia de Protocolos

 Los protocolos en Swift pueden heredar de otros protocolos, permitiendo que un protocolo incluya todos los requisitos de otro y agregue requisitos adicionales.

 ## Ejemplo Básico: Herencia de Protocolos

 A continuación, se muestra un ejemplo de herencia de protocolos donde un protocolo `Animal` hereda de un protocolo `SerVivo`.
 */

protocol SerVivo {
    func respirar()
}

/// Protocolo que hereda de SerVivo.
protocol Animal: SerVivo {
    var nombre: String { get }
    func hacerSonido()
}

/// Clase que conforma al protocolo Animal.
class Perro: Animal {
    var nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func respirar() {
        print("\(nombre) está respirando.")
    }
    
    func hacerSonido() {
        print("\(nombre) dice: Guau!")
    }
}

let miPerro = Perro(nombre: "Fido")
miPerro.respirar() // Fido está respirando.
miPerro.hacerSonido() // Fido dice: Guau!

/*:
 ### Casos de Uso Real
 La herencia de protocolos permite construir jerarquías de tipos y definir comportamientos comunes de manera estructurada.

 ### Buenas Prácticas
 1. **Definir protocolos base para comportamientos comunes**: Esto facilita la creación de nuevos protocolos.
 2. **Documentar la herencia y los requisitos claramente**: Asegúrate de que las relaciones entre protocolos sean comprensibles.

 ### Preguntas Frecuentes
 **¿Un protocolo puede heredar de múltiples protocolos?**
 Sí, un protocolo puede heredar de múltiples protocolos.

 **¿Qué pasa si un tipo conformante no implementa todos los métodos requeridos?**
 El tipo no cumplirá con el protocolo y generará un error de compilación.

 */

//: [Next](@next)
