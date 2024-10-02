//: [Previous](@previous)

//: # Subclases

/*:
 Las **subclases** son clases que heredan de una clase base y pueden tener sus propias propiedades y métodos adicionales. Esto permite que las subclases especialicen el comportamiento definido en la superclase, proporcionando una forma poderosa de crear tipos más específicos basados en clases generales.
 */

//: ## Ejemplo Simple

/// Clase base que representa una persona.
/// Contiene propiedades y métodos comunes a todas las personas.
class Persona {
    var nombre: String
    
    /// Inicializa una nueva persona con el nombre proporcionado.
    /// - Parameter nombre: Nombre de la persona.
    init(nombre: String) {
        self.nombre = nombre
    }
    
    /// Método que imprime una presentación de la persona.
    func presentarse() {
        print("Hola, soy \(nombre).")
    }
}

//: ### Caso de Uso

// Imagina una aplicación de gestión de usuarios en una escuela. Se pueden crear diferentes tipos de usuarios, como estudiantes y profesores, que heredan de la clase base `Persona`.

/// Clase que representa un estudiante, que es un tipo de persona.
class Estudiante: Persona {
    var grado: String
    
    /// Inicializa un nuevo estudiante con el nombre y grado proporcionados.
    /// - Parameters:
    ///   - nombre: Nombre del estudiante.
    ///   - grado: Grado del estudiante.
    init(nombre: String, grado: String) {
        self.grado = grado
        super.init(nombre: nombre)
    }
    
    /// Método que sobrescribe la presentación del estudiante.
    override func presentarse() {
        print("Hola, soy \(nombre) y estudio en el grado \(grado).")
    }
}

// Crear una instancia de Estudiante
let estudiante = Estudiante(nombre: "Laura", grado: "10°")
estudiante.presentarse() // Hola, soy Laura y estudio en el grado 10°.

//: [Next](@next)
