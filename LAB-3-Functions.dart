import 'dart:io';

void main() {
  stdout.write('Enter a word: ');
  String word = stdin.readLineSync()!;
  var result = reverse(word);
  print(result);
}

reverse(word) {
  List<String> letters = word.split('');
  List<String> reverse = letters.reversed.toList();
  String reversedWord = reverse.join('');

  return reversedWord;
}
