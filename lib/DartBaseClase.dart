void main() {

  PointJson p = new PointJson(1, 2);

  print(p.sayHello("---->>"));

}

///
/// 基本类构造函数
///
class Point {

  int a = 0;

  int b;

  int c;


  Point(int a, int b) {
    this.a = a;
    this.b = b;
    c = 5;
  }
}

class PointJson {
  int x;
  int y;

  PointJson(this.x, this.y);

  // 命名构造函数
  PointJson.fromJson(Map json) {
    x = json['x'];
    y = json['y'];
  }

  String sayHello(String a) => "Hello $a";
}