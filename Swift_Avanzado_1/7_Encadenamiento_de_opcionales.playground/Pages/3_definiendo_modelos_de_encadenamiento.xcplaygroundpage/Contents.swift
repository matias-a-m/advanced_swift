//: [Previous](@previous)

//: # Definiendo Modelos de Ejemplo para Encadenamientos de Opcionales

/*:
 ## Introducción

 Para trabajar con **encadenamientos de opcionales** de manera efectiva, es importante crear estructuras o clases que contengan propiedades opcionales. Estas propiedades permiten demostrar cómo los encadenamientos nos permiten acceder de manera segura a métodos, propiedades, o incluso subíndices que podrían no estar disponibles.

 En este apartado, definiremos modelos que utilizaremos a lo largo de nuestros ejemplos.
 */

//: ## Ejemplo Simple de Modelos

/// Clase que representa un Libro
class Libro {
    var titulo: String
    var autor: String
    
    init(titulo: String, autor: String) {
        self.titulo = titulo
        self.autor = autor
    }
}

/// Clase que representa una Persona
class Persona {
    var nombre: String
    var libroFavorito: Libro?
    
    init(nombre: String, libroFavorito: Libro? = nil) {
        self.nombre = nombre
        self.libroFavorito = libroFavorito
    }
}

// Crear instancias de Persona con y sin libros favoritos
let personaConLibro = Persona(nombre: "Ana", libroFavorito: Libro(titulo: "1984", autor: "George Orwell"))
let personaSinLibro = Persona(nombre: "Luis")

/*:
 Estos modelos permitirán simular el acceso a propiedades opcionales y practicar con el encadenamiento de opcionales en los siguientes ejemplos.
 */

//: ## Buenas Prácticas
/*:
 1. Define modelos claros y simples con propiedades opcionales para practicar el encadenamiento de opcionales.
 2. Utiliza nombres de propiedades descriptivos para facilitar la comprensión del código.
 3. Asegúrate de que los modelos representen casos realistas que puedas encontrar en aplicaciones del mundo real.
 */

//: [Next](@next)
