import 'package:flutter/material.dart';

class article extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: choices.length,
        child: new Scaffold(
          appBar: new AppBar(
            title: Text("健康科普"),
            backgroundColor: Color(0xffF9FAFD),
            bottom: TabBar(
              isScrollable: false,
              tabs: choices.map<Widget>((Choice choice) {
                return Tab(
                  text: choice.title,
//                icon: Icon(choice.icon),
                );
              }).toList(),
              labelColor: Color(0xff2688FC),
              unselectedLabelColor: Color(0xffAEB1B6),
            ),
          ),
          body: TabBarView(
              children: choices.map<Widget>((Choice choice) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: ArticleCard(
                choice: choice,
              ),
            );
          }).toList()),
        ));
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = <Choice>[
  Choice(title: '病例分析', icon: Icons.directions_car),
  Choice(title: '健康科普', icon: Icons.directions_bike),
  Choice(title: '诊间日记', icon: Icons.directions_boat),
];

class ArticleCard extends StatefulWidget {

  const ArticleCard({Key key, this.choice}) : super(key: key);

  final Choice choice;

//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//
//      body: ListView(children: <Widget>[],),
//    );
//  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ArticleCard();
  }
}

class ArticleData {
  var title;
  var url;
}

class _ArticleCard extends State<ArticleCard> {
  List widgets = [];
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 10; i++) {
      var subject = ArticleData();
      subject.title = "测试标题";
      subject.url = "http://pic37.nipic.com/20140113/8800276_184927469000_2.png";
      widgets.add(subject);
    }
  
    print("输出");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
//    print(widgets[0].title);
    
    return Scaffold(
      body: ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
//            height: 50,
//               child: Center(child: ),
            child: getRow(widgets[index]),
          );
        },
      ),
    );
  }

  Widget getRow(ArticleData subject) {
    var row = Container(
      margin: EdgeInsets.all(30),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
            children: <Widget>[Text(subject.title)],
          )),
          Image(
            image: NetworkImage(subject.url),
            width: 242,
            height: 152,
          )
        ],
      ),
    );

    return Card(
      child: row,
    );
  }
}
