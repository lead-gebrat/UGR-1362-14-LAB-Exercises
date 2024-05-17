fun bubbleSort(array: IntArray) {
    val n = array.size

    for (i in 0 until n - 1) {
        for (j in 0 until n - i - 1) {
            if (array[j] > array[j + 1]) {
                val temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
        }
    }
}

fun main() {
    val numbers = intArrayOf(5, 2, 8, 1, 3)
    println("Original array: ${numbers.contentToString()}")

    bubbleSort(numbers)

    println("Sorted array: ${numbers.contentToString()}")
}