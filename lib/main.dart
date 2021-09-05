import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({@required this.title});

  @override
  Widget build(BuildContext context) {
    // Tab
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: createTabBar(),
            title: Text('Flutter 2'),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Apple")),
              Center(child: Text("Amazon")),
              Center(child: Text("Facebook")),
              Center(child: Text("Gitlab"))
            ],
          ),
        ));
  }
}

TabBar createTabBar() {
  return TabBar(
    tabs: [
      Row(children: [
        FaIcon(FontAwesomeIcons.apple),
        SizedBox(width: 5),
        Text('Apple Inc')
      ]),
      Row(children: [
        FaIcon(FontAwesomeIcons.amazon),
        SizedBox(width: 5),
        Text('Amazon Inc')
      ]),
      Row(children: [
        FaIcon(FontAwesomeIcons.facebookSquare),
        SizedBox(width: 5),
        Text('FaceBook Inc')
      ]),
      Row(children: [
        FaIcon(FontAwesomeIcons.gitlab),
        SizedBox(width: 5),
        Text('Gitlab Inc')
      ]),
    ],
    // Nếu isScrollable là true, mỗi Tab sẽ có chiều
    // rộng vừa đủ với nội dung của nó,
    //  và TabBar sẽ có một thanh cuộn nằm ngang.
    isScrollable: true,
    // Sét đặt mầu đỏ và độ đậm cho đường thẳng (line)
    // phía dưới Tab đang được chọn
    // indicatorColor: Color(0xffE74C3C),
    // indicatorWeight: 10);
    // labelColor được sử dụng để chỉ định mầu chữ cho nhãn
    //  (label) của Tab đang được lựa chọn
    // labelColor: Colors.red,
    // unselectedLabelColor: Colors.black,
    // do padding
    // labelPadding: EdgeInsets.all(20),
    // style
    //  labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
    // unselectedLabelStyle: TextStyle(fontStyle: FontStyle.normal, fontSize: 18),
  );
}
