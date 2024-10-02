//: [Previous](@previous)
/*:

 # Principios del Control de Acceso

 Los principios del control de acceso ayudan a definir cómo y cuándo se puede acceder a las propiedades y métodos en Swift. Los principios básicos incluyen encapsulación, modularidad y seguridad.

 ## Ejemplo de Principios de Control de Acceso

 A continuación se muestra un ejemplo de cómo se aplican estos principios.

 */

class SistemaSeguridad {
    private var clave: String = "1234" // Encapsulando la clave

    func verificarClave(entrada: String) -> Bool {
        return entrada == clave // Manejando la seguridad
    }
}

let sistema = SistemaSeguridad()
print(sistema.verificarClave(entrada: "1234")) // true
print(sistema.verificarClave(entrada: "4321")) // false

/*:
 ## Buenas Prácticas
 1. **Encapsular datos sensibles**: Siempre encapsula datos que no deberían ser accesibles directamente.
 2. **Promover la modularidad**: Mantén el código modular y reutilizable.

 Esta hoja ilustra los principios del control de acceso y su aplicación en Swift.
 */

//: [Next](@next)
