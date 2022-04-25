/* Object in a program should be replaceable with instances of subtypes without
altering the correctness of that program.
*/

protocol Polygon {
    func calculateAre() -> Float
}

class Rectangle: Polygon {

    var witdh: Float = 0
    var height: Float = 0

    func set(witdh: Float) {
        self.witdh = witdh
    }

    func set(height: Float) {
        self.height = height
    }

    func calculateAre() -> Float {
        return witdh * height
    }
}

class Square: Polygon {

    var side: Float = 0

    func set(side: Float) {
        self.side = side
    }

    func calculateAre() -> Float {
        return pow(side,2)
    }
}

func printArea(polygon: Polygon) {
    print(polygon.calculateAre())
}

func example() {
    let rectangle = Rectangle()
    rectangle.set(witdh: 4)
    rectangle.set(height: 5)
    print(printArea(polygon: rectangle))

    let square = Square()
    square.set(side: 4)
    printArea(polygon: square)
}
