import 'dart:io';

void main() {
  stdout.write('Enter your grade ');
  String x = stdin.readLineSync()!;
  double grade = double.parse(x);

  switch (grade) {
    case >= 90 && <= 100:
      print("A+");
    case >= 83 && <= 89:
      print('A');
    case >= 75 && <= 79:
      print('B+');
    case >= 70 && <= 74:
      print('B');
    case >= 65 && < 69:
      print('B-');
    case >= 60 && < 64:
      print('C+');
    case >= 55 && < 59:
      print('C');
    default:
      print('F');
  }
}
