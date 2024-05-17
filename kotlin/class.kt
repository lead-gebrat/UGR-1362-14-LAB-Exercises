import java.util.Scanner

class Rectangle(val length: Double, val width: Double) {
    fun calculatePerimeter(): Double {
        return 2 * (length + width)
    }

    fun calculateArea(): Double {
        return length * width
    }
}

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter the length of the rectangle:")
    val length = scanner.nextDouble()

    println("Enter the width of the rectangle:")
    val width = scanner.nextDouble()

    val rectangle = Rectangle(length, width)

    val perimeter = rectangle.calculatePerimeter()
    println("Perimeter of the rectangle: $perimeter")

    val area = rectangle.calculateArea()
    println("Area of the rectangle: $area")
}