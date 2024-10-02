//: [Previous](@previous)
/*:
 ## Cómo hacer downcasting

 ### Descripción
 El downcasting permite convertir un objeto de una clase base a una clase derivada. Esto es útil cuando necesitas acceder a funcionalidades específicas de una subclase. Sin embargo, debe hacerse con cuidado para evitar errores en tiempo de ejecución.

 ### Ejemplo: Downcasting Seguro

 Usaremos el operador `as?` para intentar un downcasting de manera segura.
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

// Creamos un objeto de tipo `Vehiculo`
let miVehiculo: Vehiculo = Coche()

// Intentamos hacer downcasting de `Vehiculo` a `Coche`
if let coche = miVehiculo as? Coche { // Downcasting seguro
    // Documentación del código: Si el downcasting es exitoso, se accede al método describir de la clase Coche.
    coche.describir() // Resultado: Soy un coche.
} else {
    print("El objeto no es un coche.")
}

/*:
 ### Casos de Uso Real
 En aplicaciones de gestión de flotas, donde se tiene una variedad de vehículos, el downcasting permite acceder a funcionalidades específicas de cada tipo de vehículo.

 ### Buenas Prácticas
 1. **Evitar downcasting innecesario**: Siempre que sea posible, utiliza polimorfismo en lugar de downcasting.
 2. **Comprobar el tipo antes de downcast**: Utiliza `is` para verificar el tipo antes de realizar el downcast.
 3. **Documentar las razones del downcasting**: Explica por qué es necesario realizar un downcast en el contexto de tu aplicación.
 */

//: [Next](@next)
