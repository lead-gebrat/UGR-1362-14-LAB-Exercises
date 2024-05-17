import java.util.Scanner

fun isPrime(number: Int): Boolean {
    if (number <= 1) {
        return false
    }

    var divisor = 2

    while (divisor * divisor <= number) {
        if (number % divisor == 0) {
            return false
        }
        divisor++
    }

    return true
}

fun findPrimesInRange(start: Int, end: Int): List<Int> {
    val primes = mutableListOf<Int>()

    var currentNumber = start

    while (currentNumber <= end) {
        if (isPrime(currentNumber)) {
            primes.add(currentNumber)
        }
        currentNumber++
    }

    return primes
}

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter the starting number:")
    val start = scanner.nextInt()

    println("Enter the ending number:")
    val end = scanner.nextInt()

    val primeNumbers = findPrimesInRange(start, end)

    println("Prime numbers between $start and $end:")
    primeNumbers.forEach { println(it) }
}