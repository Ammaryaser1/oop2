abstract class Shape {
  String color;

  Shape(this.color);

  double getArea();

  @override
  String toString() {
    return "Shape[color = $color]";
  }
}

class Rectangle extends Shape {
  int length;
  int width;

  Rectangle(String color, this.length, this.width) : super(color);

  @override
  double getArea() {
    return (length * width).toDouble();
  }

  @override
  String toString() {
    return "Rectangle[length = $length, width = $width, ${super.toString()}]";
  }
}

class Triangle extends Shape {
  int base;
  int height;

  Triangle(String color, this.base, this.height) : super(color);

  @override
  double getArea() {
    return 0.5 * base * height;
  }

  @override
  String toString() {
    return "Triangle[base = $base, height = $height, ${super.toString()}]";
  }
}

void main() {
  print("===> Testing Polymorphism with Shapes <===");

  Shape rect = Rectangle("Red", 5, 10);
  Shape tri = Triangle("Blue", 6, 8);

  print(rect);
  print("Area = ${rect.getArea()}");

  print("==============================");

  print(tri);
  print("Area = ${tri.getArea()}");
}
