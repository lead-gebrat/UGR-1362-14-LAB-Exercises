import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  String number = stdin.readLineSync()!;
  double x = double.parse(number);

  if (x % 2 == 0) {
    print('$x is an even number');
  } else {
    print('$x is an odd number');
  }
}
