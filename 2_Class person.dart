class Person {
  String name;
  String address;

  // Constructor
  Person(this.name, this.address);

  @override
  String toString() {
    return "Person: name = $name, address = $address";
  }
}

class Student extends Person {
  int numCourses;
  List<String> courses;
  List<int> grades;

  Student(String name, String address)
      : numCourses = 0,
        courses = [],
        grades = [],
        super(name, address);

  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }

  void printGrades() {
    print("Grades for $name:");
    for (int i = 0; i < numCourses; i++) {
      print("${courses[i]}: ${grades[i]}");
    }
  }

  double getAverageGrades() {
    if (numCourses == 0) return 0.0;
    int sum = grades.fold(0, (a, b) => a + b);
    return sum / numCourses;
  }

  @override
  String toString() {
    return "Student: ${super.toString()}";
  }
}

class Teacher extends Person {
  int numCourses;
  List<String> courses;

  Teacher(String name, String address)
      : numCourses = 0,
        courses = [],
        super(name, address);

  bool addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    }
    courses.add(course);
    numCourses++;
    return true;
  }

  bool removeCourse(String course) {
    if (courses.contains(course)) {
      courses.remove(course);
      numCourses--;
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return "Teacher: ${super.toString()}";
  }
}


void main() {

  print("=== Testing Student ===");
  Student student = Student("Ammar yaser", "Alex, Egypt");
  print(student);

  student.addCourseGrade("Math", 85);
  student.addCourseGrade("Physics", 90);
  student.printGrades();
  print("Average Grade: ${student.getAverageGrades()}");

  print("\n=== Testing Teacher ===");
  Teacher teacher = Teacher("Dr. Hesham", "Asyut, Egypt");
  print(teacher);

  print("Add Math: ${teacher.addCourse("Math")}");
  print("Add Physics: ${teacher.addCourse("Physics")}");
  print("Add Math again: ${teacher.addCourse("Math")}");

  print("Teacher Courses: ${teacher.courses}");

  print("Remove Chemistry: ${teacher.removeCourse("Chemistry")}");
  print("Remove Math: ${teacher.removeCourse("Math")}");
  print("Teacher Courses after removal: ${teacher.courses}");
}