//: [Previous](@previous)

/*:
 # Closures Capturados

 Los *closures* pueden capturar variables del contexto en el que se definen, lo que les permite mantener acceso a estas variables.

 ## Ejemplo Simple: Contador Personalizado

 En este ejemplo, creamos un contador que incrementa su valor cada vez que se llama.
 */

/// Función que crea un contador.
/// - Returns: Un closure que, al ser invocado, incrementa y devuelve el valor del contador.
func crearContador() -> () -> Int {
    var contador = 0
    return {
        contador += 1
        return contador
    }
}

// Crear una instancia del contador
let contador = crearContador()
// Llamadas al contador para obtener el valor incrementado
print("Contador: \(contador())") // Contador: 1
print("Contador: \(contador())") // Contador: 2

/*:
 ## Ejemplo Medio: Personalización de Mensajes

 En este ejemplo, usamos un closure para personalizar un mensaje con un nombre y un saludo.
 */
/// Función que crea un saludo personalizado.
/// - Parameters:
///   - saludo: Un string que representa el saludo inicial.
/// - Returns: Un closure que, al ser invocado con un nombre, genera un saludo personalizado.
func crearSaludo(saludo: String) -> (String) -> String {
    return { nombre in
        return "\(saludo), \(nombre)!"
    }
}

// Crear un saludo
let saludoPersonalizado = crearSaludo(saludo: "Hola")
// Llamadas al saludo
print(saludoPersonalizado("Matías")) // Hola, Matías!
print(saludoPersonalizado("Ana"))     // Hola, Ana!


/*:
 ## Ejemplo Avanzado: Configuración de un Temporizador

 Este ejemplo muestra cómo se puede usar un closure capturado dentro de un temporizador que incrementa un contador.
 */
import Foundation

/// Clase que representa un temporizador que incrementa un contador.
/// - Properties:
///   - contador: El contador que se incrementará.
///   - timer: El temporizador que se utilizará para ejecutar la lógica a intervalos.
class Temporizador {
    private var contador: Int = 0
    private var timer: DispatchSourceTimer?

    /// Inicia el temporizador.
/// - Parameters:
///   - intervalo: El tiempo entre incrementos en segundos.
    func iniciarTemporizador(intervalo: TimeInterval) {
        let queue = DispatchQueue(label: "temporizador.queue")
        timer = DispatchSource.makeTimerSource(queue: queue)
        
        timer?.schedule(deadline: .now(), repeating: intervalo)
        timer?.setEventHandler { [weak self] in
            guard let self = self else { return }
            self.incrementarContador()
        }
        timer?.resume()
    }

    /// Incrementa el contador y detiene el temporizador si alcanza 10.
    private func incrementarContador() {
        contador += 1
        print("Contador del temporizador: \(contador)")

        if contador >= 10 {
            detenerTemporizador()
            print("Temporizador detenido en: \(contador)")
        }
    }

    /// Detiene el temporizador.
    func detenerTemporizador() {
        timer?.cancel()
        timer = nil
    }
}

// Crear un temporizador e iniciar el conteo
let temporizador = Temporizador()
temporizador.iniciarTemporizador(intervalo: 1.0)




/*:
 ## Buenas Prácticas

 1. **Ser consciente del ciclo de retención**: Usa `[weak self]` para evitar ciclos de retención cuando se captura `self` dentro de closures.
 2. **Documentar el uso de variables capturadas**: Explica el propósito de las variables capturadas para mayor claridad.
 3. **Evitar capturar variables innecesarias**: Captura solo las variables que realmente necesitas en el closure para mejorar el rendimiento y evitar confusiones.

 Este documento ilustra cómo los closures capturados pueden mantener el estado y ser utilizados en diferentes contextos en Swift.
 */

//: [Next](@next)
