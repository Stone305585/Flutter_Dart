import 'dart:async';
import 'dart:math' show Random;

///
/// 异步的使用，Stream的使用，Iterable的使用，yield的使用
/// @author stone305585@live.com
/// @date 2018-09-12 13:02:08
main() async {
  print('Compute π using the Monte Carlo method.');
  await for (var estimate in computePi().take(5)) {
    print('π ≅ $estimate');
  }
}

/// Generates a stream of increasingly accurate estimates of π.
Stream<double> computePi({int batch: 100000}) async* {
  var total = 0;
  var count = 0;
  while (true) {
    var points = generateRandom().take(batch);
    // 落进1/4扇形内部的点的iterable
    var inside = points.where((p) => p.isInsideUnitCircle);
    // 总的点数
    total += batch;
    // 落进去的总点数
    count += inside.length;
    // 概率
    var ratio = count / total;
    // Area of a circle is A = π⋅r², therefore π = A/r².
    // So, when given random points with x ∈ <0,1>,
    // y ∈ <0,1>, the ratio of those inside a unit circle
    // should approach π / 4. Therefore, the value of π
    // should be:
    // 意思就是用落在1/4扇形内点的个数占所有点的概率来计算π
    yield ratio * 4;
  }
}

Iterable<Point> generateRandom([int seed]) sync* {
  final random = Random(seed);
  while (true) {
    // 用yield来生成Iterable
    yield Point(random.nextDouble(), random.nextDouble());
  }
}

class Point {
  final double x, y;
  const Point(this.x, this.y);
  // 用来计算x，y是否在圆的内部。
  bool get isInsideUnitCircle => x * x + y * y <= 1;
}