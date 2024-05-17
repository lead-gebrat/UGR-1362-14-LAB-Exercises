import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter the first number:")
    val number1 = scanner.nextDouble()

    println("Enter the second number:")
    val number2 = scanner.nextDouble()

    println("Enter the third number:")
    val number3 = scanner.nextDouble()

    var largest: Double

    if (number1 > number2) {
        if (number1 > number3) {
            largest = number1
        } else {
            largest = number3
        }
    } else {
        if (number2 > number3) {
            largest = number2
        } else {
            largest = number3
        }
    }

    println("The largest number is: $largest")
}