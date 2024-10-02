//: [Previous](@previous)
/*:
 # Los Delegados

 Los delegados son un patrón de diseño común en Swift que permite la comunicación entre objetos. Se utilizan frecuentemente para responder a eventos o acciones en aplicaciones.

 ## Ejemplo Básico: Implementación de un Delegado

 En este ejemplo, se define un protocolo `ControladorDeAcciones` para manejar eventos de botón.
 */

protocol ControladorDeAcciones {
    func botonPresionado()
}

/// Clase que actúa como el delegado.
class Controlador: ControladorDeAcciones {
    func botonPresionado() {
        print("El botón ha sido presionado.")
    }
}

/// Clase que emite el evento.
class Boton {
    var delegado: ControladorDeAcciones?
    
    func presionar() {
        delegado?.botonPresionado()
    }
}

let controlador = Controlador()
let boton = Boton()
boton.delegado = controlador
boton.presionar() // El botón ha sido presionado.

/*:
 ### Casos de Uso Real
 Los delegados son útiles para la comunicación entre componentes en aplicaciones, como responder a eventos de UI o manejar datos de entrada.

 ### Buenas Prácticas
 1. **Definir protocolos claros para delegados**: Asegúrate de que el protocolo esté bien definido y sea fácil de implementar.
 2. **Evitar referencias fuertes en delegados**: Utiliza referencias débiles para evitar ciclos de retención.

 ### Preguntas Frecuentes
 **¿Puedo tener múltiples delegados para un solo evento?**
 No, un delegado es un único objeto que maneja el evento, pero puedes implementar una lista de delegados si es necesario.

 **¿Qué pasa si el delegado no implementa el método requerido?**
 Si el método no se implementa, no se llamará, pero asegúrate de manejar la lógica adecuadamente en tu aplicación.

 */

//: [Next](@next)
