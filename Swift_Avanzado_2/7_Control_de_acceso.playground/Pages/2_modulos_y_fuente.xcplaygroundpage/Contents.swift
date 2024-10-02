//: [Previous](@previous)
/*:

 # Módulos y Fuente

 Un módulo es un conjunto de código que se compila en una unidad y que puede ser importado por otras partes del código. Swift utiliza módulos para gestionar el control de acceso entre diferentes archivos y bibliotecas.

 ## Ejemplo de Módulos

 A continuación se muestra un ejemplo de cómo se utilizan módulos en Swift.

 */

import Foundation // Importando el módulo Foundation

class Persona {
    var nombre: String
    var edad: Int

    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }

    func descripcion() -> String {
        return "\(nombre) tiene \(edad) años."
    }
}

// Usando el módulo
let persona = Persona(nombre: "Matías", edad: 30)
print(persona.descripcion()) // Matías tiene 30 años.

/*:
 ## Buenas Prácticas
 1. **Organizar el código en módulos**: Utiliza módulos para dividir el código en secciones más manejables y reutilizables.
 2. **Importar solo lo necesario**: Importa solo los módulos requeridos para evitar dependencias innecesarias.

 Esta hoja explica la relación entre módulos y el control de acceso en Swift.
 */

//: [Next](@next)
