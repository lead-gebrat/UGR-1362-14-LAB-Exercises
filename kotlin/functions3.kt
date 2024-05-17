import java.util.Scanner

fun hasUniqueCharacters(str: String): Boolean {
    val charSet = HashSet<Char>()

    for (char in str) {
        if (charSet.contains(char)) {
            return false
        }
        charSet.add(char)
    }

    return true
}

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter a string:")
    val input = scanner.nextLine()

    val hasUnique = hasUniqueCharacters(input)
    println("String \"$input\" has unique characters: $hasUnique")
}