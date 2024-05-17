import java.util.Scanner

fun factorial(n: Int): Long {
    return if (n == 0) {
        1
    } else {
        n * factorial(n - 1)
    }
}

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter a number:")
    val number = scanner.nextInt()

    val result = factorial(number)
    println("Factorial of $number: $result")
}