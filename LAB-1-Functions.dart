void main() {
  final result = sum(num1: 2, num2: 4);
  print(result);
}

int sum({required int num1, required int num2}) {
  return num1 + num2;
}
