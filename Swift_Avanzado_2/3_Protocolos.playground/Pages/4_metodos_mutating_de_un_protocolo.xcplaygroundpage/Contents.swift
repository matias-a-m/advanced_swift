//: [Previous](@previous)
/*:
 # Métodos Mutating de un Protocolo

 Los métodos `mutating` permiten que un tipo que conforma un protocolo cambie sus propiedades internas. Esto es particularmente útil en estructuras, donde se espera que las propiedades puedan modificarse.

 ## Ejemplo Básico: Método Mutating

 A continuación, se muestra un protocolo `Contador` con un método `mutating` que incrementa un contador.
 */

protocol Contador {
    var valor: Int { get set }
    mutating func incrementar()
}

/// Estructura que conforma al protocolo Contador.
struct ContadorSimple: Contador {
    var valor: Int = 0
    
    mutating func incrementar() {
        valor += 1
    }
}

var contador = ContadorSimple()
contador.incrementar()
print("Valor del contador: \(contador.valor)") // Valor del contador: 1

/*:
 ### Casos de Uso Real
 Los métodos `mutating` son útiles para modelos de datos donde los cambios de estado son comunes, como en aplicaciones de juego o sistemas de seguimiento.

 ### Buenas Prácticas
 1. **Utilizar métodos mutating en estructuras**: Dado que las clases son referenciales, los métodos mutating son más aplicables en estructuras.
 2. **Documentar los cambios de estado claramente**: Indica cómo un método afecta el estado del objeto.

 ### Preguntas Frecuentes
 **¿Puedo usar métodos mutating en clases?**
 No, el modificador `mutating` se aplica únicamente a las estructuras y enumeraciones.

 **¿Qué sucede si no uso el modificador mutating en un método que modifica una propiedad?**
 El compilador generará un error, ya que no se permite modificar propiedades en métodos no mutating.

 */

//: [Next](@next)
