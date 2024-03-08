import 'dart:io';

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= (number / 2).floor(); i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

void findPrimesInRange(int start, int end) {
  print('Prime numbers between $start and $end:');
  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      print(number);
    }
  }
}

void main() {
  stdout.write('Enter your starting range: ');
  String x = stdin.readLineSync()!;
  int start = int.parse(x);

  stdout.write('Enter your ending range: ');
  String y = stdin.readLineSync()!;
  int end = int.parse(y);

  findPrimesInRange(start, end);
}
