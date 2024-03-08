import 'dart:async';

void main() async {
  print("Loading data...");

  try {
    List<String> data = await loadDataFromDatabase();
    print("Data loaded successfully:");
    print(data);
  } catch (error) {
    print("Error loading data: $error");
  }
}

Future<List<String>> loadDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2));

  List<String> data = ['summit', 'lideta', 'torhailoch', 'hayat'];

  return data;
}
