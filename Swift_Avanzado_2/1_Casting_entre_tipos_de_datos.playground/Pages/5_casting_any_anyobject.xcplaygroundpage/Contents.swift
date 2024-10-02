//: [Previous](@previous)
/*:
 ## Casting Any y AnyObject

 ### Descripción
 `Any` y `AnyObject` son tipos especiales en Swift que pueden representar cualquier tipo de dato. `Any` puede contener cualquier tipo de dato, mientras que `AnyObject` solo puede contener instancias de clases.

 ### Ejemplo: Uso de `Any` y `AnyObject`

 En este ejemplo, creamos un arreglo que contiene diferentes tipos de datos, utilizando `Any` para el almacenamiento.
 */

class Vehiculo {
    func describir() {
        print("Soy un vehículo.")
    }
}

class Coche: Vehiculo {
    override func describir() {
        print("Soy un coche.")
    }
}

let datos: [Any] = [1, "Hola", 3.14, Coche()] // Array de Any

for dato in datos {
    // Documentación del código: Se utiliza 'switch' para manejar diferentes tipos dentro del array de Any.
    switch dato {
    case let numero as Int:
        print("Es un número entero: \(numero)")
    case let cadena as String:
        print("Es una cadena: \(cadena)")
    case let flotante as Double:
        print("Es un número decimal: \(flotante)")
    case is Coche:
        print("Es un coche.")
    default:
        print("Tipo no reconocido.")
    }
}

/*:
 ### Casos de Uso Real
 En aplicaciones que procesan datos heterogéneos, como respuestas de API o datos de formularios, el uso de `Any` permite una flexibilidad significativa al manejar diferentes tipos de datos.

 ### Buenas Prácticas
 1. **Limitar el uso de `Any` y `AnyObject`**: Siempre que sea posible, define tipos más específicos para mejorar la seguridad del tipo.
 2. **Documentar el propósito del uso de Any**: Explicar por qué se utiliza `Any` en lugar de tipos más específicos.
 3. **Utilizar patrones de diseño**: Implementa patrones que ayuden a manejar la lógica relacionada con tipos variados de manera más estructurada.
 */

//: [Final](@end)
