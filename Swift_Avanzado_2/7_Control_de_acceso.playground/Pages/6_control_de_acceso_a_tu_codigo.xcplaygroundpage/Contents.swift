//: [Previous](@previous)
/*:

 # Control de Acceso a tu Código

 El control de acceso también se aplica a la forma en que se estructuran y organizan los archivos de código. Esto es crucial para mantener la seguridad y la integridad de la aplicación.

 ## Ejemplo de Control de Acceso en Archivos

 En este ejemplo, se ilustra cómo estructurar archivos de código para un mejor control de acceso.

 */

// Archivo: Usuario.swift
class Usuario {
    private var nombre: String
    private var edad: Int

    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }

    func descripcion() -> String {
        return "\(nombre), \(edad) años"
    }
}

// Archivo: Main.swift
let usuario = Usuario(nombre: "Matías", edad: 30)
print(usuario.descripcion()) // Matías, 30 años

/*:
 ## Buenas Prácticas
 1. **Separar archivos según la funcionalidad**: Organiza el código en archivos para mantener el control de acceso.
 2. **Limitar el acceso a las clases y métodos**: Usa control de acceso en la definición de clases y métodos.

 Esta hoja concluye el tema del control de acceso, enfatizando su importancia en la organización del código en Swift.
 */

//: [Next](@next)
