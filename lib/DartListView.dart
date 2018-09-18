import 'package:flutter/material.dart';

///
/// 该例子使用了:
/// 1:ListView
/// 2:align对齐方式
/// 3:Image加载
///
///
///
/// bottomCenter    (0.5, 1.0)    底部中心
/// bottomLeft      (0.0, 1.0)    左下角
/// bottomRight     (1.0, 1.0)    右下角
/// center          (0.5, 0.5)    水平垂直居中
/// centerLeft      (0.0, 0.5)    左边缘中心
/// centerRight     (1.0, 0.5)    右边缘中心
/// topCenter       (0.5, 0.0)    顶部中心
/// topLeft         (0.0, 0.0)    左上角
/// topRight        (1.0, 0.0)    右上角
///
///
class DartListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('滚动listview'),
        ),
        body:

        new Container(
          child:
          new ListView.builder(
            padding: const EdgeInsets.all(16.0), //padding
            itemBuilder: (context, i) {
              // 第0个展示一堆item的Column
              if (i == 0) {
                return new Column(
                  children: <Widget>[
                    textCenter,
                    decoratedBox,
                    centerImage,
                    alignContainer
                  ],
                );
              }
              // 奇数分割线
              if (i.isOdd)
                return new Divider();
              // 普通list item
              return tile;
            },
          ),

        )
    );
  }
}

Center textCenter = Center(
  child: new Text(
    '\n鸡腿肉',
    style: new TextStyle(
      fontFamily: 'serif',
      fontSize: 35.0,
    ),
  ),
);
///
/// 普通的图片的示例item
///
Center centerImage = Center(
  child: new Image.network('https://bbs.byr.cn/att/Picture/0/3220998/222'),
);

///
/// align的示例item
///
Container alignContainer = Container(
  height: 500.0,
  child: new Stack(
    children: <Widget>[
      new Align(
        alignment: FractionalOffset.bottomRight,
        child: new Image.network(
          'https://bbs.byr.cn/att/Picture/0/3220998/222',
          width: 100.0,
          height: 150.0,
          fit: BoxFit.fitHeight,
        ),
      ),
      new Align(
        alignment: new FractionalOffset(0.0, 0.0),
        child: new Image.network(
          'https://bbs.byr.cn/att/Picture/0/3220998/222',
          width: 100.0,
          height: 150.0,
          fit: BoxFit.cover,
        ),
      ),
    ],
  ),
);

///
/// 装饰的box的示例item
///
DecoratedBox decoratedBox = DecoratedBox(
  decoration: new BoxDecoration(
      gradient: new LinearGradient(
        begin: const FractionalOffset(0.0, 0.0),
        end: const FractionalOffset(1.0, 1.0),
        colors: <Color>[const Color(0xffff2cc), const Color(0xffff6eb4)],
      )
  ),
  child: new Text(
    '''
From fairest creatures we desire increase,
That thereby beauty's rose might never die,
But as the riper should by time decease,
His tender heir might bear his memory;
But thou, contracted to thine own bright eyes,
Feed'st thy light's flame with self-substantial fuel,
Making a famine where abundance lies,
Thyself thy foe, to thy sweet self too cruel.
Thout that are now the world's fresh ornament
And only herald to the gaudy spring,
Within thine own bud buriest thy content
And, tender churl, mak'st waste in niggarding.
Pity the world, or else this glutton be,
To eat the world's due, by the grave and thee.
WHEN forty winters shall besiege thy brow
And dig deep trenches in thy beauty's field,
Thy youth's proud livery, so gazed on now,
Will be a tottered weed of small worth held:
Then being asked where all thy beauty lies,
Where all the treasure of thy lusty days,
To say within thine own deep-sunken eyes
Were an all-eating shame and thriftless praise.
How much more prasie deserved thy beauty's use
If thou couldst answer, 'This fair child of mine
Shall sum my count and make my old excuse,'
Proving his beauty by succession thine.
This were to be new made when thou art old
And see thy blood warm when thou feel'st cold.
LOOK in thy glass, and tell the face thou viewest
Now is the time that face should form another,
Whose fresh repair if now thou renewest,
Thou dost beguile the world, unbless some mother.
For where is she so fair whose uneared womb
Disdains the tillage of thy husbandry?
Or who is he so fond will be the tomb
Of his self-love, to stop posterity?
Thou art thy mother's glass, and she in thee
Calls back the lovely April of her prime;
So thou through windows of thine age shalt see,
Despite of wrinkles, this thy golden time.
But if thou live rememb'red not to be,
Die single, and thine image dies with thee.
             ''',
    style: new TextStyle(
      fontFamily: 'serif',
      fontSize: 14.0,
    ),
  ),
);

///
/// 普通的item
///
ListTile tile = ListTile(
    title: new Text(
      '12341234',
      style: new TextStyle(
        fontSize: 23.0,
        color: Colors.deepPurple,
      ),
    )
);

void main() {
  runApp(
      new MaterialApp(
        title: '测试listview',
        home: new DartListView(),
      )
  );
}
