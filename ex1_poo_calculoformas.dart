import 'dart:math';

abstract class Shape {
  double get area;
}

class Retangulo implements Shape {
  final double width;
  final double height;

  Retangulo(this.width, this.height);

  @override
  double get area => width * height;
}

class Triangulo implements Shape {
  final double base;
  final double height;

  Triangulo(this.base, this.height);

  @override
  double get area => 0.5 * base * height;
}

class Circulo implements Shape {
  final double radius;

  Circulo(this.radius);

  @override
  double get area => pi * pow(radius, 2);
}

void main() {
  final shapes = [
    Retangulo(10, 20),
    Triangulo(10, 20),
    Circulo(10),
  ];

  for (final shape in shapes) {
    print('A Area do ${shape.runtimeType} é ${shape.area}');
  }
}