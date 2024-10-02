//: [Previous](@previous)

/*:
 # Trailing Closures en Swift

 Los *trailing closures* permiten pasar closures como el último argumento de una función de manera más legible y organizada. Este enfoque es especialmente útil en contextos donde el closure puede ser extenso o donde se desea mejorar la claridad del código.

 ## Ejemplo Simple

 En este ejemplo, definimos una función `saludar` que acepta un closure para personalizar un mensaje de saludo.
 */

/// Función que imprime un saludo personalizado.
/// - Parameters:
///   - nombre: Un valor del enum `Names` que indica el nombre.
///   - closure: Un closure que retorna el saludo a utilizar.
func saludar(nombre: Names, usando closure: () -> String) {
    print("\(closure()) \(nombre.rawValue)!")
}

/// Enum que define nombres con valores crudos de tipo String.
enum Names: String {
    case nameOne = "Matias"
    case nameTwo = "Adrian"
}

// Usando trailing closure para personalizar el saludo
saludar(nombre: .nameOne) {
    return "Hola"
}

/*:
 ## Ejemplo Medio

 Aquí creamos una función que filtra una lista de números para obtener solo los números pares y luego aplica un closure para transformarlos. Esta técnica es útil cuando deseas aplicar una operación condicional o específica a un conjunto de datos.
 */

/// Función que filtra números pares y les aplica una transformación.
/// - Parameters:
///   - numeros: Un arreglo de números enteros.
///   - closure: Un closure que define cómo transformar cada número par.
/// - Returns: Un arreglo de números transformados.
func filtrarYTransformar(_ numeros: [Int], usando closure: (Int) -> Int) -> [Int] {
    return numeros.filter { $0 % 2 == 0 }.map { closure($0) } // Filtra los números pares y aplica el closure
}

// Usando trailing closure para definir la transformación
let numerosOriginales = [1, 2, 3, 4, 5, 6]
let numerosTransformados = filtrarYTransformar(numerosOriginales) { numero in
    return numero * 2 // Multiplica cada número par por 2
}

print(numerosTransformados) // Resultado: [4, 8, 12]

/*:
 ## Ejemplo Avanzado

 En este ejemplo, utilizamos un closure para configurar un objeto. Usamos un closure dentro de la función `aplicarConfiguraciones` para modificar múltiples propiedades de una clase `Configuracion`. Esta técnica es útil en escenarios donde se necesita realizar configuraciones personalizadas para un objeto.
 */

/// Clase que representa una configuración con múltiples propiedades.
class Configuracion {
    var texto: String = ""
    var color: String = ""
    var tamaño: Int = 0
    
    /// Método que permite aplicar múltiples configuraciones utilizando un closure.
    /// - Parameter closure: Un closure que toma como parámetro la instancia de `Configuracion` para modificar sus propiedades.
    func aplicarConfiguraciones(_ closure: (Configuracion) -> Void) {
        closure(self) // Aplica las configuraciones a sí mismo
    }
}

// Crear y configurar un objeto Configuracion usando trailing closure
let configuracion = Configuracion()
configuracion.aplicarConfiguraciones { config in
    config.texto = "Hola, mundo"
    config.color = "Rojo"
    config.tamaño = 24
}

print("Texto: \(configuracion.texto), Color: \(configuracion.color), Tamaño: \(configuracion.tamaño)")

/*:
 ## Buenas Prácticas

 1. **Usar trailing closures para mejorar la legibilidad**: Aprovecha los *trailing closures* en contextos donde el closure es extenso o complejo. Esto ayuda a mantener el código limpio y fácil de leer.

 2. **Mantener la coherencia en el estilo**: Utiliza *trailing closures* de manera consistente en todo el proyecto para que el código sea predecible y uniforme.

 3. **Documentar el propósito del closure**: Asegúrate de explicar la intención del closure con comentarios cuando sea necesario, para que otros desarrolladores (o tú mismo en el futuro) comprendan rápidamente su propósito.

 Este documento muestra cómo los *trailing closures* pueden ser utilizados en diferentes contextos para mejorar la claridad y legibilidad del código en Swift.
 */

//: [Next](@next)
