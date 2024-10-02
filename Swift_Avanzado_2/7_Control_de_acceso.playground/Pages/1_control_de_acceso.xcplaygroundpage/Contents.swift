//: [Previous](@previous)
/*:

 # Control de Acceso

 El control de acceso en Swift permite definir la visibilidad y el acceso a las propiedades, métodos y tipos de datos dentro de un programa. Es una parte fundamental de la encapsulación, ya que ayuda a proteger los datos y a mantener la integridad del código.

 ## Ejemplo Básico de Control de Acceso

 A continuación se muestra un ejemplo de cómo se puede aplicar el control de acceso en una clase.

 */

class CuentaBancaria {
    private var saldo: Double = 0.0 // Propiedad privada

    func depositar(monto: Double) {
        saldo += monto
        print("Depósito de \(monto). Saldo actual: \(saldo)")
    }

    func retirar(monto: Double) {
        if saldo >= monto {
            saldo -= monto
            print("Retiro de \(monto). Saldo actual: \(saldo)")
        } else {
            print("Fondos insuficientes para retirar \(monto).")
        }
    }
}

// Creando una instancia de CuentaBancaria
let cuenta = CuentaBancaria()
cuenta.depositar(monto: 100.0) // Depósito de 100.0. Saldo actual: 100.0
cuenta.retirar(monto: 50.0) // Retiro de 50.0. Saldo actual: 50.0
//print(cuenta.saldo) // Esto causará un error porque `saldo` es privado.

/*:
 ## Buenas Prácticas
 1. **Utilizar niveles de acceso adecuados**: Definir el acceso más restrictivo que funcione para cada propiedad o método.
 2. **Encapsular la lógica de negocio**: Asegurarse de que las propiedades sensibles no sean accesibles directamente.

 Esta hoja introduce el concepto de control de acceso y su importancia en Swift.
 */

//: [Next](@next)
