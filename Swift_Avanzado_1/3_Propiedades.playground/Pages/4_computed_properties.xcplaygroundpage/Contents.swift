//: [Previous](@previous)

//: # Computed Properties

/*:
 Las **computed properties** no almacenan valores, sino que proporcionan un getter y, opcionalmente, un setter. Esto permite que las propiedades se calculen en el momento de su acceso.
 */

//: ## Ejemplo Básico

struct Rectangulo {
    var ancho: Double
    var alto: Double
    
    var area: Double {
        return ancho * alto
    }
}

let rectangulo = Rectangulo(ancho: 5, alto: 10)
print("Área del rectángulo: \(rectangulo.area)") // Área del rectángulo: 50.0

/*:
 En este ejemplo, `area` es una propiedad computada que calcula el área del rectángulo en función de su ancho y alto.
 */

//: ## Ejemplo Medio

class Circulo {
    var radio: Double
    
    init(radio: Double) {
        self.radio = radio
    }
    
    var area: Double {
        return Double.pi * radio * radio
    }
}

let circulo = Circulo(radio: 3)
print("Área del círculo: \(circulo.area)") // Área del círculo: 28.274333882308138

/*:
 La propiedad `area` en la clase `Circulo` se calcula en función del radio cada vez que se accede a ella.
 */

//: [Next](@next)
