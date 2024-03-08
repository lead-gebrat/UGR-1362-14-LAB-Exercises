import "dart:io";

void main() {
  const int speed = 299792458;

  stdout.write('Enter a distance: ');
  String distance = stdin.readLineSync()!;
  double S = double.parse(distance);

  var time = speed / S;
  print("it takes $time seconds.");
}
