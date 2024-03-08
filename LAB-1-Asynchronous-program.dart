import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 2));

  List<String> quotes = [
    "This is a quote",
    "This is another quote",
    "quote 4 ",
    "quote 3"
  ];

  int randomIndex = Random().nextInt(quotes.length);
  return quotes[randomIndex];
}

void main() async {
  String quote = await fetchRandomQuote();

  print("Random quote:");
  print(quote);
}
