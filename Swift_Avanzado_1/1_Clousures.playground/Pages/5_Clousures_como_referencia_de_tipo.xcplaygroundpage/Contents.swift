//: [Previous](@previous)

/*:
 # Closures como Referencias de Tipo

 Los *closures* en Swift son tratados como tipos de datos, lo que permite almacenarlos en variables y pasarlos como parámetros.

 ## Ejemplo Simple: Almacenamiento de Operaciones Matemáticas

 En este ejemplo, almacenamos closures que realizan operaciones matemáticas básicas en un array.
 */

var operaciones: [(Int, Int) -> Int] = []

// Agregar closures para suma y multiplicación
operaciones.append { $0 + $1 } // Closure que suma dos enteros
operaciones.append { $0 * $1 } // Closure que multiplica dos enteros

// Llamadas a los closures almacenados
let suma = operaciones[0](10, 5) // Llamada a la suma
let multiplicacion = operaciones[1](10, 5) // Llamada a la multiplicación

print("Resultado de la suma: \(suma)") // Resultado de la suma: 15
print("Resultado de la multiplicación: \(multiplicacion)") // Resultado de la multiplicación: 50

/*:
 ## Ejemplo Medio: Operaciones con Closure Personalizado

 En este ejemplo, creamos una función que toma un closure como parámetro para realizar una operación personalizada.
 */

func calcular(a: Int, b: Int, operacion: (Int, Int) -> Int) -> Int {
    return operacion(a, b) // Ejecuta el closure con los valores a y b
}

// Usar el closure de suma
let resultadoSuma = calcular(a: 10, b: 5, operacion: { $0 + $1 })
print("Resultado de la suma (usando closure personalizado): \(resultadoSuma)") // Resultado de la suma: 15

// Usar el closure de multiplicación
let resultadoMultiplicacion = calcular(a: 10, b: 5, operacion: { $0 * $1 })
print("Resultado de la multiplicación (usando closure personalizado): \(resultadoMultiplicacion)") // Resultado de la multiplicación: 50

/*:
 ## Ejemplo Avanzado: Combinación de Operaciones

 Este ejemplo muestra cómo combinar varias operaciones matemáticas utilizando closures como referencias de tipo.
 */

func combinarOperaciones(operaciones: [(Int, Int) -> Int], a: Int, b: Int) -> [Int] {
    var resultados: [Int] = []
    for operacion in operaciones {
        resultados.append(operacion(a, b)) // Ejecuta cada closure con a y b
    }
    return resultados
}

// Crear un array de operaciones
let operacionesCombinadas: [(Int, Int) -> Int] = [
    { $0 + $1 }, // Suma
    { $0 - $1 }, // Resta
    { $0 * $1 }, // Multiplicación
    { $0 / $1 }  // División
]

// Obtener los resultados de las operaciones
let resultados = combinarOperaciones(operaciones: operacionesCombinadas, a: 20, b: 4)
print("Resultados de las operaciones combinadas: \(resultados)") // Resultados: [24, 16, 80, 5]

/*:
 ## Buenas Prácticas

 1. **Definir tipos claros para los closures**: Usa tipos claros al almacenar closures en variables para evitar confusiones.
 2. **Limitar el número de closures en una colección**: Mantén la colección manejable para mejorar la legibilidad.
 3. **Crear funciones para agregar closures**: Facilita la reutilización creando funciones dedicadas para agregar closures a colecciones.

 Este documento ilustra cómo los closures se pueden utilizar como referencias de tipo en aplicaciones reales.
 */

//: [Next](@next)
