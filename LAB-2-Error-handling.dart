double divideNumbers(double dividend, double divisor) {
  try {
    return dividend / divisor;
  } catch (e) {
    if (e is IntegerDivisionByZeroException) {
      print('Error: Division by zero is not allowed.');
    } else {
      print('An error occurred during division: $e');
    }
    rethrow;
  }
}

void main() {
  double dividend = 10;
  double divisor = 0;

  try {
    double result = divideNumbers(dividend, divisor);
    print('Result: $result');
  } catch (e) {
    print('Error occurred: $e');
  }
}
