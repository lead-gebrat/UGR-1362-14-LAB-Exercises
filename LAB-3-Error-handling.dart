import 'dart:io';

void main() {
  String filePath =
      'path/to/your/file.txt'; // Replace with the actual file path

  try {
    String fileContent = readFile(filePath);
    print('File content:');
    print(fileContent);
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: File not found or could not be read.');
    } else {
      print('An error occurred while reading the file: $e');
    }
  }
}

String readFile(String filePath) {
  File file = File(filePath);
  return file.readAsStringSync();
}
