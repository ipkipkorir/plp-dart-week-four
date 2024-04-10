class Book {
  String? title;
  String? author;
  double? price;

  void displayBookInfo() {
    print(":---------------------------------------------:");
    print("\nBook title: ${title}");
    print("\nAuthor: ${author}");
    print("\nPrice: ${price} \n");
    print(":---------------------------------------------:\n \n");
  }
}

// class for Camera
class Camera {
  String? name;
  String? color;
  double? megaPixel;

  void display() {
    print(":------------------------------------------:");
    print("\nName: ${name}");
    print("\nColor: ${color}");
    print("\nMega Pixels: ${megaPixel}");
    print("\n:------------------------------------------:\n");
  }
}

void main() {
  // Book book1 = Book();
  // book1.title = "Divine Mercy";
  // book1.author = "Maria Faustina";
  // book1.price = 1000.00;
  // // call the Book(class) method
  // print("\nBOOK CLASS");
  // book1.displayBookInfo();

  // // create objects of Camera
  // Camera cameraA = Camera();
  // cameraA.name = "Sony";
  // cameraA.color = "Black";
  // cameraA.megaPixel = 35.3;
  // // call the Camera class method
  // print("CAMERA CLASS");
  // cameraA.display();

  // // create objects of Student class
  // Student student1 = Student("Joan", 34, 123456);
  // student1.display();

  // create objects of Patient class
  Patient patient1 = Patient("Lazarus", 32, "Malaria");
  patient1.display();
}

// class with a Constructor
class Student {
  String? name;
  int? age;
  int? rollNumber;

  // constructor
  Student(String name, int age, int rollNumber) {
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }

  // display method
  void display() {
    print("\nSTUDENT CLASS");
    print(":-------------------------------------:");
    print("Student Name: ${this.name}");
    print("\nStudent Age: ${this.age}");
    print("\nStudent Roll Number: ${this.rollNumber}");
    print(":-------------------------------------:\n");
  }
}

// class Patient
class Patient {
  String? name;
  int? age;
  String? disease;

  // constructor
  Patient(this.name, this.age, this.disease);

  // method
  void display() {
    print("\n:--------------------------------:");
    print("Patient Name: ${this.name}");
    print("\nPatient Age: ${this.age}");
    print("\nPatient disease: ${this.disease}");
    print(":--------------------------------:\n");
  }
}
