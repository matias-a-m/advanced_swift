//: [Previous](@previous)

//: # Tipos de Enumeradores en Swift

/*:
 Swift ofrece varios tipos de enumeradores, cada uno con características únicas que permiten organizar y manejar datos relacionados de manera efectiva. A continuación, se presentan los tipos más comunes de enumeradores con ejemplos ilustrativos.
 */

//: ## 1. Enumeradores Simples

// Ejemplo básico
enum DiasDeLaSemana {
    case lunes, martes, miércoles, jueves, viernes, sábado, domingo
}

// Uso del enumerador simple
let diaHoy = DiasDeLaSemana.lunes

/*:
 Los enumeradores simples permiten definir un grupo de valores relacionados. En este caso, `DiasDeLaSemana` define los días de la semana como casos. Se pueden usar para representar estados o categorías discretas.
 */

//: ## 2. Enumeradores con Valores Asociados

// Ejemplo medio
enum ResultadoExamen {
    case aprobado(puntaje: Int)
    case reprobado(motivo: String)
}

// Uso de enumeradores con valores asociados
let resultado1 = ResultadoExamen.aprobado(puntaje: 85)
let resultado2 = ResultadoExamen.reprobado(motivo: "No estudió suficiente")

/*:
 Los enumeradores con valores asociados permiten adjuntar información adicional a cada caso. En el ejemplo anterior, `ResultadoExamen` permite almacenar tanto el puntaje como el motivo de reprobación, proporcionando mayor contexto.
 */

//: ## 3. Enumeradores con Raw Values

// Ejemplo básico
enum Direccion: String {
    case norte = "N"
    case sur = "S"
    case este = "E"
    case oeste = "O"
}

// Uso de enumeradores con raw values
let direccionViaje = Direccion.norte
print("Dirección del viaje: \(direccionViaje.rawValue)") // Dirección del viaje: N

/*:
 Los enumeradores con raw values asignan un valor predeterminado a cada caso. En este caso, `Direccion` utiliza cadenas como valores asociados, lo que facilita su uso en ciertas situaciones, como la conversión a texto.
 */

//: ## 4. Enumeradores Recursivos

// Ejemplo complejo
indirect enum Arbol {
    case hoja(Int)
    case nodo(Arbol, Arbol)
}

// Función para contar las hojas en un árbol
func contarHojas(arbol: Arbol) -> Int {
    switch arbol {
    case .hoja:
        return 1
    case let .nodo(izquierdo, derecho):
        return contarHojas(arbol: izquierdo) + contarHojas(arbol: derecho)
    }
}

// Uso de enumeradores recursivos
let arbolEjemplo = Arbol.nodo(Arbol.hoja(1), Arbol.nodo(Arbol.hoja(2), Arbol.hoja(3)))
let totalHojas = contarHojas(arbol: arbolEjemplo)
print("Total de hojas en el árbol: \(totalHojas)") // Total de hojas en el árbol: 3

/*:
 Los enumeradores recursivos permiten representar estructuras de datos complejas, como árboles. En este caso, la función `contarHojas` recorre el árbol y cuenta las hojas, demostrando la versatilidad de este tipo de enumerador.
 */

//: [Next](@next)

