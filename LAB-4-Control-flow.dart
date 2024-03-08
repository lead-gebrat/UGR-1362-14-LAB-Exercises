import 'dart:io';

void main() {
  stdout.write('Enter your grade: ');
  String x = stdin.readLineSync()!;
  double grade = double.parse(x);

  switch (grade) {
    case >= 90 && <= 100:
      print("A+");
      break;
    case >= 83 && <= 89:
      print('A');
      break;
    case >= 75 && <= 79:
      print('B+');
      break;
    case >= 70 && <= 74:
      print('B');
      break;
    case >= 65 && < 69:
      print('B-');
      break;
    case >= 60 && < 64:
      print('C+');
      break;
    case >= 55 && < 59:
      print('C');
      break;
    default:
      print('F');
      break;
  }
}
