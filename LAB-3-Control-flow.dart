import 'dart:io';

void main() {
  stdout.write('Enter your first number: ');
  String x = stdin.readLineSync()!;
  double number1 = double.parse(x);

  stdout.write('Enter your operation: ');
  String operation = stdin.readLineSync()!;

  stdout.write('Enter your second number: ');
  String y = stdin.readLineSync()!;
  double number2 = double.parse(y);

  switch (operation) {
    case '+':
      print(number1 + number2);
      break;
    case '-':
      print(number1 - number2);
    case '*':
      print(number1 * number2);
    case '/':
      print(number1 / number2);
    default:
      print('Please enter a valid operation');
      break;
  }
}
