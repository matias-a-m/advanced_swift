//: [Previous](@previous)
/*:

 # La Sintaxis de Control de Acceso

 La sintaxis de control de acceso en Swift permite especificar los niveles de acceso en clases, propiedades y métodos utilizando palabras clave.

 ## Ejemplo de Sintaxis

 A continuación se muestra un ejemplo de la sintaxis de control de acceso.

 */

class Vehiculo {
    private var velocidad: Double = 0.0 // Propiedad privada

    func acelerar(aumento: Double) {
        velocidad += aumento
        print("Acelerando a \(velocidad) km/h")
    }

    func obtenerVelocidad() -> Double {
        return velocidad // Acceso controlado a la propiedad
    }
}

let vehiculo = Vehiculo()
vehiculo.acelerar(aumento: 20.0) // Acelerando a 20.0 km/h
print(vehiculo.obtenerVelocidad()) // 20.0

/*:
 ## Buenas Prácticas
 1. **Utilizar la sintaxis de forma coherente**: Mantén la consistencia en el uso de palabras clave de control de acceso.
 2. **Revisar el acceso a la propiedad**: Asegúrate de que las propiedades tengan el acceso apropiado.

 Esta hoja explica la sintaxis utilizada para implementar el control de acceso en Swift.
 */

//: [Next](@next)
