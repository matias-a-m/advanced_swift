//: [Previous](@previous)

//: # Enumeradores con Valores Asociados

/*:
 Los enumeradores con valores asociados permiten adjuntar información adicional a cada caso, lo que ofrece flexibilidad y contexto. Aquí se presentan ejemplos para comprender su uso.
 */

//: ## 1. Definición de Enumeradores con Valores Asociados

// Ejemplo básico
enum Resultado {
    case exito(puntaje: Int)
    case falla(motivo: String)
}

// Uso de un enumerador con valores asociados
let resultado1 = Resultado.exito(puntaje: 100)
let resultado2 = Resultado.falla(motivo: "Error de red")

/*:
 `Resultado` permite almacenar diferentes tipos de información, según el caso. Esto proporciona contexto adicional sobre el resultado.
 */

//: ## 2. Manejo de Valores Asociados

// Ejemplo medio
func manejarResultado(resultado: Resultado) {
    switch resultado {
    case .exito(let puntaje):
        print("¡Éxito! Puntaje: \(puntaje)")
    case .falla(let motivo):
        print("Falla: \(motivo)")
    }
}

// Uso de la función
manejarResultado(resultado: .exito(puntaje: 85)) // ¡Éxito! Puntaje: 85

/*:
 La función `manejarResultado` utiliza `switch` para acceder a los valores asociados, mostrando cómo los enumeradores con valores asociados pueden enriquecer la lógica del programa.
 */

//: ## 3. Valores Asociados en Contextos Complejos

// Ejemplo complejo
enum Peticion {
    case get(url: String)
    case post(url: String, datos: [String: Any])
}

// Función para manejar peticiones
func manejarPeticion(peticion: Peticion) {
    switch peticion {
    case .get(let url):
        print("Realizando petición GET a \(url)")
    case .post(let url, let datos):
        print("Realizando petición POST a \(url) con datos: \(datos)")
    }
}

// Uso de la función
manejarPeticion(peticion: .post(url: "https://api.example.com", datos: ["nombre": "Matías", "edad": 37]))

/*:
 Este ejemplo muestra cómo los enumeradores con valores asociados permiten modelar peticiones HTTP, proporcionando tanto la URL como los datos necesarios para cada tipo de petición.
 */

//: [Next](@next)
