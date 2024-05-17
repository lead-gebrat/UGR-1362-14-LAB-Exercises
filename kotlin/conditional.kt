fun main() {
    println("Enter the lengths of the sides of the triangle:")
    print("Side 1: ")
    val side1 = readLine()?.toDoubleOrNull()
    print("Side 2: ")
    val side2 = readLine()?.toDoubleOrNull()
    print("Side 3: ")
    val side3 = readLine()?.toDoubleOrNull()

    if (side1 != null && side2 != null && side3 != null) {
        if (side1 == side2 && side2 == side3) {
            println("The triangle is equilateral.")
        } else if (side1 == side2  side1 == side3  side2 == side3) {
            println("The triangle is isosceles.")
        } else {
            println("The triangle is scalene.")
        }
    } else {
        println("Invalid input. Please enter valid side lengths.")
    }
}