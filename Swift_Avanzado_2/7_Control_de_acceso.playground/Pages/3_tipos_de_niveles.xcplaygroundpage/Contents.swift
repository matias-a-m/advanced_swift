//: [Previous](@previous)
/*:

 # Tipos de Niveles de Acceso

 Swift proporciona varios niveles de acceso que permiten controlar la visibilidad de las propiedades y métodos. Los niveles de acceso son: `open`, `public`, `internal`, `fileprivate`, y `private`.

 ## Ejemplo de Niveles de Acceso

 A continuación se muestra un ejemplo de cada nivel de acceso.

 */

class ClasePublica {
    public var propiedadPublica: String = "Soy pública" // Acceso público
}

class ClaseInterna {
    var propiedadInterna: String = "Soy interna" // Acceso interno
}

class ClasePrivada {
    private var propiedadPrivada: String = "Soy privada" // Acceso privado
}

let instanciaPublica = ClasePublica()
print(instanciaPublica.propiedadPublica) // Soy pública

let instanciaInterna = ClaseInterna()
print(instanciaInterna.propiedadInterna) // Soy interna

// let instanciaPrivada = ClasePrivada() // Esto causará un error si se intenta acceder fuera de la clase

/*:
 ## Buenas Prácticas
 1. **Elegir el nivel de acceso adecuado**: Usa el nivel de acceso más restrictivo posible que funcione para tu código.
 2. **Documentar el propósito de los niveles de acceso**: Explica por qué se eligió un nivel de acceso particular.

 Esta hoja presenta los diferentes niveles de acceso en Swift y cómo se utilizan.
 */

//: [Next](@next)
