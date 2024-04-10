import 'dart:io';
import 'dart:convert';

class Person {
  String? name;
  int? age;
  String? address;
  int? phone_number;
  String? gender;

  // constructor
  Person(String? name, int? age, String? address, int? phone_number,
      String gender) {
    this.name = name;
    this.age = age;
    this.address = address;
    this.phone_number = phone_number;
    this.gender = gender;
  }

  // method to display info
  void display() {
    print("\nPERSON INFO");
    print(":-----------------------:");
    print("Name: ${name}");
    print("Age: ${age}");
    print("Address: ${address}");
    print("Phone: ${phone_number}");
    print("Gender: ${gender}");
    print(":-----------------------:\n");
  }
}

// derived class
class Student extends Person {
  String? school;
  String? course;

  // constructor
  Student(String? name, int? age, String? address, int? phone_number,
      String gender, String? school, String? course)
      : super(name, age, address, phone_number, gender) {
    this.name = name;
    this.age = age;
    this.address = address;
    this.phone_number = phone_number;
    this.gender = gender;
    this.school = school;
    this.course = course;
  }

  // method to display info
  @override
  void display() {
    print("\nSTUDENT INFO");
    print(":-------------------------------:");
    print("Student Name: ${name}");
    print("Student Age: ${age}");
    print("Student Address: ${address}");
    print("Student Phone: ${phone_number}");
    print("Student Gender: ${gender}");
    print("Student School: ${school}");
    print("Student Course: ${course}");
    print(":--------------------------------:\n");
  }
}

void main() {
  // create an object of Student and display its info
  Student s1 = Student(
      "John Mary", 34, "P.O. Box 115 E/R", 0723456789, "M", "UoE", "MSCS");
  s1.display();

  // create an object of Person and display its info
  Person p1 = Person("John Mary", 34, "P.O. Box 115 E/R", 0723456789, "M");
  p1.display();

  // create an object of Person
  // and initialize it from a file
  File p2_file = File('p2_file.txt');
  var contents = p2_file.readAsStringSync();
  List<List> my_list = [contents.split(',')];

  print(my_list[0]);
}
