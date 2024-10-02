//: [Previous](@previous)

//: # Métodos de Tipo

/*:
 Los **métodos de tipo** son aquellos que pertenecen a la clase o estructura en lugar de a instancias específicas. Se definen utilizando la palabra clave `static` o `class` en clases.
 */

//: ## Ejemplo Básico

struct Matematica {
    static func sumar(_ a: Int, _ b: Int) -> Int {
        return a + b // Método de tipo que suma dos enteros
    }
}

// Llamar al método de tipo
let suma = Matematica.sumar(5, 7)
print("Suma: \(suma)") // Suma: 12

/*:
 En este ejemplo, `sumar` es un método de tipo que se puede llamar directamente en la estructura `Matematica`.
 */

//: ## Ejemplo Realista en una Aplicación de Gestión de Usuarios

class GestorDeUsuarios {
    private static var totalUsuarios: Int = 0
    
    /// Registra un nuevo usuario y aumenta el contador total.
    static func registrarUsuario(nombre: String) {
        totalUsuarios += 1 // Incrementa el contador de usuarios
        print("Usuario registrado: \(nombre)")
    }
    
    /// Devuelve el total de usuarios registrados.
    static func obtenerTotalUsuarios() -> Int {
        return totalUsuarios // Devuelve el total de usuarios registrados
    }
    
    /// Resetea el contador de usuarios (puede ser útil en pruebas o reinicios).
    static func reiniciarContador() {
        totalUsuarios = 0
        print("Contador de usuarios reiniciado.")
    }
}

// Registrar usuarios
GestorDeUsuarios.registrarUsuario(nombre: "Matías")
GestorDeUsuarios.registrarUsuario(nombre: "Laura")
print("Total de usuarios registrados: \(GestorDeUsuarios.obtenerTotalUsuarios())") // Total de usuarios registrados: 2

// Reiniciar el contador
GestorDeUsuarios.reiniciarContador()
print("Total de usuarios registrados después del reinicio: \(GestorDeUsuarios.obtenerTotalUsuarios())") // Total de usuarios registrados después del reinicio: 0

/*:
 En este ejemplo, la clase `GestorDeUsuarios` utiliza métodos de tipo para gestionar el registro de usuarios y mantener un conteo global de ellos. El método `registrarUsuario` incrementa el total de usuarios y `obtenerTotalUsuarios` devuelve el conteo actual. Además, se ha añadido un método `reiniciarContador` para permitir la reinicialización del contador, lo que puede ser útil en ciertas situaciones, como pruebas o cuando se reinicia la aplicación.
 */

//: [Next](@next)
