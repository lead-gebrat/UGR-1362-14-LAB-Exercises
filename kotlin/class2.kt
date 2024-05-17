import java.util.Scanner

class Triangle(val side1: Double, val side2: Double, val side3: Double) {
    fun isEquilateral(): Boolean {
        return side1 == side2 && side2 == side3
    }

    fun isIsosceles(): Boolean {
        return side1 == side2 || side1 == side3 || side2 == side3
    }

    fun isScalene(): Boolean {
        return side1 != side2 && side1 != side3 && side2 != side3
    }
}

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter the length of side 1:")
    val side1 = scanner.nextDouble()

    println("Enter the length of side 2:")
    val side2 = scanner.nextDouble()

    println("Enter the length of side 3:")
    val side3 = scanner.nextDouble()

    val triangle = Triangle(side1, side2, side3)

    if (triangle.isEquilateral()) {
        println("The triangle is equilateral.")
    } else if (triangle.isIsosceles()) {
        println("The triangle is isosceles.")
    } else if (triangle.isScalene()) {
        println("The triangle is scalene.")
    }
}