import 'package:flutter/material.dart';
///
/// flutter的app
///
/// @author stone305585@live.com
/// @date 2018-09-12 13:02:08
void main() => runApp(new FlutterApp());

class FlutterApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: '2018的股市'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageStateBeef createState() => new _MyHomePageStateBeef();
}

class _MyHomePageStateBeef extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //小的评分星星行
    Widget packedRow = new Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          new Icon(Icons.star, color: Colors.green[500]),
          new Icon(Icons.star, color: Colors.green[500]),
          new Icon(Icons.star, color: Colors.green[500]),
          new Icon(Icons.star, color: Colors.black),
          new Icon(Icons.star, color: Colors.black),
        ]
    );

    //评分加评论
    Widget ratings = new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            new Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  new Icon(Icons.star, color: Colors.green[500]),
                  new Icon(Icons.star, color: Colors.green[500]),
                  new Icon(Icons.star, color: Colors.green[500]),
                  new Icon(Icons.star, color: Colors.black),
                  new Icon(Icons.star, color: Colors.black),
                ]
            ),
            new Text(
                '233个评论',
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5,
                  fontSize: 13.0,
                )
            )
          ]
      ),
    );

    TextStyle descTextStyle = new TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 13.0,
      height: 2.0,
    );
    // DefaultTextStyle.merge允许您创建一个默认文本，由子控件和所有后续子控件继承的风格
    var iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: new Container(
            padding: new EdgeInsets.all(5.0),
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new Column(
                      children: [
                        new Icon(Icons.kitchen, color: Colors.green[500]),
                        new Text('食材:'),
                        new Text('30分钟'),
                      ]
                  ),
                  new Column(
                      children: [
                        new Icon(Icons.timer, color: Colors.green[500]),
                        new Text('烹饪:'),
                        new Text('5分钟' + '$_counter'),
                      ]
                  ),
                  new Column(
                      children: [
                        new Icon(Icons.restaurant, color: Colors.green[500]),
                        new Text('品尝:'),
                        new Text('25分钟'),
                      ]
                  ),
                ]
            )
        )
    );

    //最上面的标题
    Container titleText = new Container(
        padding: new EdgeInsets.all(10.0),
        color: Colors.red,
        child: new Text(
            '黑椒牛排',
            style: new TextStyle(
              fontWeight: FontWeight.w800,
              letterSpacing: 1.5,
              fontSize: 20.0,
            )
        )
    );
    //中间的内容
    Text subTitle = new Text(
        '简单点，去赌场、赌局，看人性最容易了。'
            '越输压的越大，越输越要买庄。越赢越胆小，越输越胆大，甚至孤注一掷。人性就是贪婪和恐惧的，这是天性。'
            '我们要做的就是控制并尽可能地持续坚持住。至于状态低迷，调节的问题。个人都有不同的方法。'
            '我或者喜欢爬无人的后山，一个人静静地放松下，或者用一次次的登顶来激发斗志',
        textAlign: TextAlign.center,
        style: new TextStyle(
          fontFamily: 'Georgia',
          fontSize: 15.0,
        )
    );

    //左边的大的内容列
    Container centerColumn = new Container(
        padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: new Column(
            children: [
              titleText,
              subTitle,
              ratings,
              iconList,
            ]
        )
    );
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
          child: new Container(
              margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
              color: Colors.yellow,
              child: new Card(
                  color: Colors.black26,
                  child: new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Container(
                          width: 388.0,
                          height: 400.0,
                          color: Colors.deepPurpleAccent,
                          child: centerColumn,
                        ),
//                        mainImage,
                      ]
                  )
              )
          )
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.all_inclusive),
      ),
    );
  }
}

/**
 * 新建的测试state
 */
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Column(
              // Column is also layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug paint" (press "p" in the console where you ran
              // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
              // window in IntelliJ) to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text(
                  'You have 1',
                ),
                new Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
            new Column(
              // Column is also layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug paint" (press "p" in the console where you ran
              // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
              // window in IntelliJ) to see the wireframe for each widget.

              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text(
                  'You have 2',
                ),
                new Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
            new Column(
              // Column is also layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug paint" (press "p" in the console where you ran
              // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
              // window in IntelliJ) to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text(
                  'You have 3',
                ),
                new Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.all_inclusive),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
