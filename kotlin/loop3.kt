import java.util.Scanner

fun isPalindrome(number: Int): Boolean {
    var reversedNumber = 0
    var originalNumber = number

    while (originalNumber > 0) {
        val digit = originalNumber % 10
        reversedNumber = reversedNumber * 10 + digit
        originalNumber /= 10
    }

    return number == reversedNumber
}

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter a number:")
    val number = scanner.nextInt()

    val isPal = isPalindrome(number)

    if (isPal) {
        println("$number is a palindrome.")
    } else {
        println("$number is not a palindrome.")
    }
}