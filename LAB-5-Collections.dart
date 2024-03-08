class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }

    int sum = marks.reduce((value, element) => value + element);
    double average = sum / marks.length;
    return average;
  }
}

void main() {
  Student student = Student('Alice', [80, 90, 70, 85, 95]);

  double averageMark = student.calculateAverageMark();
  print('${student.name}\'s Average Mark: $averageMark');
}
