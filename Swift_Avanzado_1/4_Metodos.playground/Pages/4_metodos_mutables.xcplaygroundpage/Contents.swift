//: [Previous](@previous)

//: # Métodos Mutables

/*:
 Los **métodos mutables** son aquellos que pueden modificar las propiedades de una instancia de clase o estructura. Se definen con la palabra clave `mutating` en estructuras.
 */

//: ## Ejemplo Básico

struct Caja {
    var volumen: Int
    
    mutating func aumentarVolumen(_ cantidad: Int) {
        volumen += cantidad // Modifica la propiedad de instancia
    }
}

// Crear una instancia de Caja
var caja = Caja(volumen: 100)
caja.aumentarVolumen(50) // Aumenta el volumen
print("Volumen de la caja: \(caja.volumen)") // Volumen de la caja: 150

/*:
 En este ejemplo, el método `aumentarVolumen` modifica la propiedad `volumen` de la instancia de `Caja`.
 */

//: ## Ejemplo Realista en una Aplicación de Gestión de Compras

class CarritoDeCompras {
    private var productos: [(nombre: String, precio: Double)] = []
    var total: Double {
        return productos.reduce(0) { $0 + $1.precio }
    }
    
    /// Agrega un producto al carrito.
    /// - Parameters:
    ///   - nombre: El nombre del producto.
    ///   - precio: El precio del producto.
    func agregarProducto(nombre: String, precio: Double) {
        productos.append((nombre: nombre, precio: precio))
        print("Producto añadido: \(nombre), Precio: \(precio)")
    }
    
    /// Aplica un descuento sobre el total del carrito.
    /// - Parameter porcentaje: El porcentaje de descuento a aplicar.
    func aplicarDescuento(_ porcentaje: Double) {
        let descuento = total * (porcentaje / 100)
        print("Descuento aplicado: \(descuento)")
        productos = productos.map { (nombre: $0.nombre, precio: $0.precio * (1 - porcentaje / 100)) }
    }
    
    /// Muestra el resumen de productos en el carrito.
    func mostrarResumen() {
        print("Resumen de compras:")
        for producto in productos {
            print("\(producto.nombre): \(producto.precio)")
        }
        print("Total: \(total)")
    }
}

// Ejemplo de uso de CarritoDeCompras
let carrito = CarritoDeCompras()
carrito.agregarProducto(nombre: "Laptop", precio: 1000.0)
carrito.agregarProducto(nombre: "Mouse", precio: 50.0)
carrito.aplicarDescuento(10) // Aplica un 10% de descuento
carrito.mostrarResumen()

/*:
 En este ejemplo, la clase `CarritoDeCompras` gestiona una lista de productos y permite agregar nuevos productos, aplicar descuentos y mostrar un resumen de las compras. El método `aplicarDescuento` modifica los precios de los productos en función del porcentaje de descuento, lo que demuestra el uso de métodos mutables de manera práctica en una aplicación de gestión de compras.
 */

//: [Next](@next)
