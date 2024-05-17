import java.util.*

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter the month (1-12):")
    val month = scanner.nextInt()

    println("Enter the day (1-31):")
    val day = scanner.nextInt()

    val season = when (month) {
        1, 2, 12 -> if (day >= 1 && day <= 31) "Winter" else "Invalid day"
        3, 4, 5 -> if (day >= 1 && day <= 31) "Spring" else "Invalid day"
        6, 7, 8 -> if (day >= 1 && day <= 31) "Summer" else "Invalid day"
        9, 10, 11 -> if (day >= 1 && day <= 31) "Autumn" else "Invalid day"
        else -> "Invalid month"
    }

    println("Season: $season")
}