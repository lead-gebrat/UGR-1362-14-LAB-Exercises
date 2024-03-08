import 'dart:math';

void main() {
  List<int> numbers = List.generate(10, (_) => Random().nextInt(100));

  Set<int> uniqueNumbers = Set.from(numbers);

  for (int number in uniqueNumbers) {
    print(number);
  }
}
