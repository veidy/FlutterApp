import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

class indexWidget extends StatelessWidget{
  final Color color;

  indexWidget(this.color);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         color: color,
         child: IndexPage(),

       ),
     );
  }





}

class IndexPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return new _IndexPage();
  }



}

class _IndexPage extends State<IndexPage>{


  @override
  void initState() {
    super.initState();
    print('initState');
    _getList();
  }

  @override
  Widget build(BuildContext context) {
   return new Scaffold(body: Center(

   ),);
  }

  _getList() async {
    var url = 'http://www.wanandroid.com/article/list/0/json';
    var httpClient = new HttpClient();

    String result;

    try{

      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();

      if(response.statusCode == HttpStatus.ok){
          var json = await response.transform(Utf8Decoder()).join();
        result = json;
      }


      print('response:');
    }catch(exception){
      result = '请求失败';
    }

    print('response:'+result);

  }

}