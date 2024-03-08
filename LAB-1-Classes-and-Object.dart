class Person {
  String? name;
  int? age;
  String? address;

  Person(this.name, this.age, this.address);
}

void main() {
  Person person1 = Person("hermela", 23, "summit");
  print(person1.name);

  person1.age = 21;
  print(person1.age);
}
