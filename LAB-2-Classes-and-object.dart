class Person {
  String? name;
  int? age;
  String? address;

  Person(this.name, this.age, this.address);
}

class Student extends Person {
  int? rollNumber;
  List<int>? marks;

  Student(String? name, int? age, String? address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    if (marks != null) {
      return marks!.reduce((a, b) => a + b);
    } else {
      return 0;
    }
  }

  double calculateAverageMarks() {
    if (marks != null && marks!.isNotEmpty) {
      return calculateTotalMarks() / marks!.length;
    } else {
      return 0.0;
    }
  }
}

void main() {
  Student umer = Student("umer", 21, "summit", 10, [78, 90, 88, 79]);

  var average = umer.calculateAverageMarks();
  print(average);
}
