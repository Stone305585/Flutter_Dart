String scream(int length) => "As${'a' * length}h!";

///
/// dart中函数式变成的使用
/// 比较类似java的建造者模式。
///
/// @author stone305585@live.com
/// @date 2018-09-12 13:02:08
main() {
  final values = [1, 2, 3, 4, 8];

  for (var length in values) {
    print(scream(length));
  }

  print('\n');
  // 函数式打印
  values.map(scream).forEach(print);

  print('\n');
  // 函数式打印2  skip:跳过第1个，注意这里不能是0，0无效。take：打印数量。
  values.map(scream).skip(1).take(2).forEach(print);

  print("\n");
  // where 用于过滤iterable中符合条件的元素
  values.where((p) => isBigger(p)).forEach(print);
}

bool isBigger(p) => p > 3;
