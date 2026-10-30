import 'dart:math';

class GeometricObject {
  String color;
  bool filled;
  GeometricObject.value()
      : color = "white",
        filled = false;
  GeometricObject(this.color, this.filled);

  @override
  String toString() {
    return "Color = $color, Filled = $filled";
  }
}

class Triangle extends GeometricObject {
  double side1;
  double side2;
  double side3;

  Triangle.value()
      : side1 = 1.0,
        side2 = 1.0,
        side3 = 1.0,
        super.value();

  Triangle(this.side1, this.side2, this.side3, String color, bool filled)
      : super(color, filled);
  double getArea() {
    double s = (getPerimeter()) / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  @override
  String toString() {
    return "Triangle: side1 = $side1, side2 = $side2, side3 = $side3";
  }
}

class Rectangle extends GeometricObject {
  double height;
  double width;

  Rectangle.value()
      : height = 1.0,
        width = 1.0,
        super.value();

  Rectangle(this.height, this.width, String color, bool filled)
      : super(color, filled);

  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2.0 * (width + height);
  }

  @override
  String toString() {
    return "Rectangle: height = $height, width = $width";
  }
}

void main() {
  print("=== Testing Default Constructors ===");

  Triangle t1 = Triangle.value();
  print(t1);
  print("Perimeter = ${t1.getPerimeter()}");
  print("Area = ${t1.getArea()}");

  print("-------------------");

  Rectangle r1 = Rectangle.value();
  print(r1);
  print("Perimeter = ${r1.getPerimeter()}");
  print("Area = ${r1.getArea()}");
  print("===============================");

  Triangle t2 = Triangle(3.0, 4.0, 5.0, "blue", true);
  print(t2);
  print("Color = ${t2.color}, Filled = ${t2.filled}");
  print("Perimeter = ${t2.getPerimeter()}");
  print("Area = ${t2.getArea()}");
  print("-------------------");

  Rectangle r2 = Rectangle(4.0, 5.0, "red", true);
  print(r2);
  print("Color = ${r2.color}, Filled = ${r2.filled}");
  print("Perimeter = ${r2.getPerimeter()}");
  print("Area = ${r2.getArea()}");
}
