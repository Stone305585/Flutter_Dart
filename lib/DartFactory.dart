import 'dart:math';


///
/// Shape工厂方法，使用implements
///
/// @author stone305585@live.com
/// @date 2018-09-12 13:02:08
///
abstract class Shape {

  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type';
  }

  num get area;
}

class Circle implements Shape {
  final num radius;

  Circle(this.radius);

  @override
  // TODO: implement area
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {

  final num side;

  Square(this.side);

  @override
  // TODO: implement area
  num get area => pow(side, 2);
}

main() {
  final circle = Shape('circle');
  final square = Shape('square');

  print(circle.area);
  print(square.area);

}