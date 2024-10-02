//: [Previous](@previous)
/*:

 # Problemas de Memoria con Parámetros `inout`

 El uso de parámetros `inout` permite modificar una variable pasada como argumento en una función. Sin embargo, su uso incorrecto puede generar problemas de acceso a memoria.

 ## Ejemplo de Parámetros `inout`

 A continuación, se muestra un ejemplo de cómo usar `inout` y los problemas que pueden surgir.

 */

func actualizarNombre(nuevoNombre: inout String) {
    nuevoNombre = "Nuevo \(nuevoNombre)"
}

// Usando un parámetro inout
var nombreEstudiante = "Matías"
actualizarNombre(nuevoNombre: &nombreEstudiante)

print(nombreEstudiante) // Nuevo Matías

/*:
 ## Buenas Prácticas
 1. **Limitar el uso de `inout`**: Utiliza `inout` solo cuando sea necesario y asegúrate de entender sus efectos.
 2. **Documentar el uso de parámetros inout**: Asegúrate de que el propósito sea claro.

 Esta hoja ilustra los problemas potenciales que pueden surgir al utilizar parámetros `inout` en funciones.
 */

//: [Next](@next)
