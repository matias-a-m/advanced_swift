//: [Previous](@previous)
/*:
 # Casting entre tipos de datos

 ## Casting entre tipos de datos variados

 ### Descripción
 En Swift, el casting permite convertir un tipo de dato en otro. Esto es crucial para la manipulación de datos en aplicaciones, donde los tipos pueden variar. Por ejemplo, convertir un `Int` a un `Double` para cálculos más precisos.

 ### Ejemplo 1: Casting de `Int` a `Double`
 
 En una aplicación de finanzas, puedes necesitar calcular un promedio de gastos. Convierte un `Int` en un `Double` para mantener la precisión en los cálculos.
 */

let gastoMensual: Int = 500 // Gasto mensual en formato entero
let gastoAnual: Double = Double(gastoMensual) * 12.0 // Casting de Int a Double

// Documentación del código: Se convierte 'gastoMensual' de tipo Int a Double para realizar operaciones de cálculo más precisas.
print("Gasto anual en formato Double: \(gastoAnual)") // Resultado: 6000.0

/*:
 ### Ejemplo 2: Casting de `String` a `Int`
 
 Supongamos que un usuario ingresa su edad como texto. Es necesario convertir esa cadena a un `Int` para realizar cálculos.
 */

let edadCadena: String = "30" // Edad ingresada como cadena
if let edad: Int = Int(edadCadena) { // Intento de casting de String a Int
    // Documentación del código: Se utiliza 'if let' para manejar el opcional y asegurar que la conversión sea exitosa.
    print("Edad convertida: \(edad)") // Resultado: 30
} else {
    print("Error: la cadena no se puede convertir a un número entero.")
}

/*:
 ### Casos de Uso Real
 En una aplicación de encuestas, puedes recibir respuestas de los usuarios como cadenas. Convertirlas a tipos numéricos es fundamental para analizar resultados.

 ### Buenas Prácticas
 1. **Verificar el casting**: Utiliza `if let` o `guard let` para asegurar que el casting sea exitoso antes de usar el valor.
 2. **Manejar errores**: Considera que algunas conversiones pueden fallar, así que es importante manejar posibles errores.
 3. **Documentar claramente**: Asegúrate de que el propósito del casting y las variables sean claros para otros desarrolladores.
 
 Este ejemplo ilustra cómo el casting entre tipos de datos es fundamental para la manipulación y conversión de datos en Swift.
 */

//: [Next](@next)
