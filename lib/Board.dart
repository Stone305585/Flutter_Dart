import 'package:flutter/widgets.dart';

///
/// 关于有状态与无状态的选择
///1:如果自定义的控件可以与用户进行交互，比如通过键盘输入内容、通过滑动屏幕移动滑块、点击时改变状态，
/// 又或者是随着时间的推移而变化，比如数据Feed会更新状态。这时我们应该选择使用StatefulWidget创建一个有状态控件。
///2:如果自定义的控件仅依赖于对象本身的配置信息，仅仅是用于展示给定的信息。那我们应该选择使用
/// StatelessWidget创建一个无状态控件。
/// @author stone305585@live.com
/// @date 2018-09-12 13:02:08
///
class Board extends StatelessWidget {
  const Board({
    Key key,
    this.color: const Color(0xFF2DBD3A),
    this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: color,
      child: child,
    );
  }
}

class GreenBoard extends StatefulWidget {
  const GreenBoard({ Key key }) : super(key: key);

  @override
  _GreenBoardState createState() => new _GreenBoardState();
}

class _GreenBoardState extends State<GreenBoard> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        color: const Color(0xFF2DBD3A)
    );
  }
}