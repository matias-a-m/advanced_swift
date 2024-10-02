//: [Previous](@previous)
/*:
 # Protocolos en Swift

 Los protocolos son una característica fundamental en Swift que permite definir un conjunto de métodos y propiedades que pueden ser adoptados por clases, estructuras y enumeraciones. Los protocolos son esenciales para la creación de código modular y reutilizable.

 ## ¿Qué es un Protocolo?
 Un protocolo define un contrato que un tipo debe cumplir, permitiendo que diferentes tipos de datos se comporten de manera similar.

 ## Ejemplo Básico: Definición de un Protocolo

 A continuación, se muestra un ejemplo de un protocolo que define un método para describir un objeto.
 */

protocol Describible {
    /// Método que devuelve una descripción del objeto.
    func descripcion() -> String
}

/// Clase que conforma al protocolo Describible.
class Coche: Describible {
    var marca: String
    var anio: Int
    
    init(marca: String, anio: Int) {
        self.marca = marca
        self.anio = anio
    }
    
    func descripcion() -> String {
        return "Coche: \(marca), Año: \(anio)"
    }
}

let miCoche = Coche(marca: "Tesla", anio: 2023)
print(miCoche.descripcion()) // Coche: Tesla, Año: 2023

/*:
 ### Casos de Uso Real
 Los protocolos son útiles para establecer contratos en aplicaciones, como definir cómo debe comportarse un modelo de datos o un servicio, y para implementar patrones de diseño como el delegado.

 ### Buenas Prácticas
 1. **Nombres descriptivos**: Utiliza nombres claros y descriptivos para los protocolos.
 2. **Documentar métodos y propiedades**: Asegúrate de que el propósito de cada método y propiedad esté claro para otros desarrolladores.
 
 ### Preguntas Frecuentes
 **¿Puedo conformar varios protocolos en una sola clase?**
 Sí, una clase, estructura o enumeración puede conformar múltiples protocolos.

 **¿Qué sucede si no se implementan todos los métodos requeridos?**
 Si una clase o estructura adopta un protocolo, debe implementar todos los métodos y propiedades requeridos o ser declarada como `final` si es una clase.

 */

//: [Next](@next)
