import 'package:flutter/material.dart';
import 'index.dart';
import 'scenes.dart';
import 'user.dart';
class homeBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    print("homeBar --");
    return _HomeState();
  }




}

class _HomeState extends State<homeBar>{

  int _currentindex = 0;
  final List<Widget> _children = [
    //首页
    indexWidget(Colors.red),
    //场景专栏
    SceneWidget(Colors.blue),
    //我的
    UserCenterWidget(Colors.yellow),

  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("首页导航"),

      ),
      body: _children[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex:_currentindex,

          items: [
            BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text('首页')
            ),
            BottomNavigationBarItem(
                icon: new Icon(Icons.room_service),
                title: new Text('专栏')
            ),
            BottomNavigationBarItem(
                icon: new Icon(Icons.person),
                title: new Text('我的')
            ),
          ]),
    );
  }

  void onTabTapped(int index){
      setState(() {
        _currentindex = index;
      });
  }
}

