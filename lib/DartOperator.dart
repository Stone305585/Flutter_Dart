void main() {

  final v1 = new Vector(10, 10);
  final v2 = new Vector(10, 10);

  print(v1.x == 10 && v1.y == 10);
  print((v1 + v2).x);
  print((v1 - v2).y);
}

///
/// 运算符重载
///
///
class Vector {

  final int x;
  final int y;

  const Vector(this.x, this.y);

  Vector operator +(Vector v) {

    return new Vector(x + v.x, y + v.y);
  }

  Vector operator -(Vector v) {

    return new Vector(x - v.x, y - v.y);
  }
}