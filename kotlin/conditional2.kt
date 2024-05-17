import java.util.Scanner

fun main() {
    val scanner = Scanner(System.`in`)

    println("Enter the number of hours worked:")
    val hoursWorked = scanner.nextInt()

    println("Enter the hourly rate:")
    val hourlyRate = scanner.nextDouble()

    val normalHours = 40
    val overtimeRate = 1.5

    val overtimeHours = if (hoursWorked > normalHours) hoursWorked - normalHours else 0
    val regularPay = normalHours * hourlyRate
    val overtimePay = overtimeHours * hourlyRate * overtimeRate
    val totalSalary = regularPay + overtimePay

    println("Regular Pay: $$regularPay")
    println("Overtime Pay: $$overtimePay")
    println("Total Salary: $$totalSalary")
}