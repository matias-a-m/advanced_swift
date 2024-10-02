//: [Previous](@previous)

//: # Lazy Properties

/*:
 Las **lazy properties** se inicializan solo cuando se accede a ellas por primera vez. Esto puede ser útil para optimizar el rendimiento y la memoria en ciertos casos.
 */

//: ## Ejemplo Básico

class Usuario {
    var nombre: String
    lazy var saludo: String = {
        return "Hola, \(nombre)"
    }()
    
    init(nombre: String) {
        self.nombre = nombre
    }
}

let usuario1 = Usuario(nombre: "Matías")
print(usuario1.saludo) // Hola, Matías

/*:
 En este ejemplo, la propiedad `saludo` se inicializa solo cuando se accede por primera vez, lo que puede ser beneficioso si la inicialización es costosa.
 */

//: ## Ejemplo Medio

class Contador {
    var contador: Int = 0
    lazy var mensaje: String = {
        return "Contador: \(contador)"
    }()
    
    func incrementar() {
        contador += 1
    }
}

let contador = Contador()
contador.incrementar()
print(contador.mensaje) // Contador: 1

/*:
 La propiedad `mensaje` utiliza el valor actual de `contador` en el momento de su acceso, lo que muestra cómo las propiedades perezosas pueden capturar el estado actual de otras propiedades.
 */

//: [Next](@next)
