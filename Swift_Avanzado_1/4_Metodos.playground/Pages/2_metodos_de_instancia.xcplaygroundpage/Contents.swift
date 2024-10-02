//: [Previous](@previous)
/*:
 # Métodos de Instancia de Clase y Estructura en una Aplicación de Contador de Tareas
 
 Los **métodos de instancia** son funciones definidas dentro de una clase o estructura que permiten operar sobre propiedades específicas de esa instancia. A continuación, implementaremos un ejemplo práctico en una aplicación de contador de tareas.
 */

import Foundation

// Estructura para representar una Tarea
struct Tarea {
    var nombre: String
    var completada: Bool
}

// Clase para gestionar las tareas
class GestorTareas {
    private var tareas: [Tarea] = []
    
    /// Añade una nueva tarea a la lista.
    /// - Parameter nombre: El nombre de la tarea a añadir.
    func añadirTarea(_ nombre: String) {
        let nuevaTarea = Tarea(nombre: nombre, completada: false)
        tareas.append(nuevaTarea)
        print("Tarea añadida: \(nombre)")
    }
    
    /// Marca una tarea como completada.
    /// - Parameter index: El índice de la tarea en la lista que se desea marcar como completada.
    func completarTarea(at index: Int) {
        guard index >= 0 && index < tareas.count else {
            print("Índice fuera de rango")
            return
        }
        tareas[index].completada = true
        print("Tarea completada: \(tareas[index].nombre)")
    }
    
    /// Obtiene el total de tareas, así como el número de tareas completadas.
    /// - Returns: Una tupla que contiene el total de tareas y el número de tareas completadas.
    func obtenerResumen() -> (total: Int, completadas: Int) {
        let totalTareas = tareas.count
        let tareasCompletadas = tareas.filter { $0.completada }.count
        return (total: totalTareas, completadas: tareasCompletadas)
    }
}

// Ejemplo de uso de GestorTareas
let gestor = GestorTareas()
gestor.añadirTarea("Comprar leche")
gestor.añadirTarea("Enviar correo")
gestor.completarTarea(at: 0) // Completa la tarea "Comprar leche"
gestor.completarTarea(at: 1) // Completa la tarea "Enviar correo"

// Obtener y mostrar resumen de tareas
let resumen = gestor.obtenerResumen()
print("Total de tareas: \(resumen.total), Tareas completadas: \(resumen.completadas)")

/*:
 En este ejemplo, la clase `GestorTareas` utiliza métodos de instancia para gestionar tareas. Tiene métodos para añadir tareas, marcarlas como completadas y obtener un resumen del total de tareas y tareas completadas. Esto ilustra un uso práctico de métodos de instancia en una aplicación real.
 */

//: [Next](@next)
