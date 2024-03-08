void main() {
  Map<String, int> studentMarks = {};

  studentMarks.putIfAbsent('Alice', () => 85);
  studentMarks.putIfAbsent('Bob', () => 92);
  studentMarks.putIfAbsent('Charlie', () => 78);
  studentMarks.putIfAbsent('David', () => 90);

  print('Student Marks:');
  studentMarks.forEach((student, marks) {
    print('$student: $marks');
  });

  String searchName = 'Charlie';
  if (studentMarks.containsKey(searchName)) {
    var marks = studentMarks[searchName];
    print('$searchName\'s marks: $marks');
  } else {
    print('$searchName is not found in the map.');
  }
}
