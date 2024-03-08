class Rectangle {
  int? width;
  int? length;

  Rectangle(this.width, this.length);
  int? area() {
    return width! * length!;
  }

  int? perimeter() {
    return 2 * (width! + length!);
  }
}

void main() {
  Rectangle rec = Rectangle(6, 6);
  var area = rec.area();
  print(area);
}
