
import 'package:flutter/material.dart';
class SceneWidget extends StatelessWidget{
  final Color color;
  SceneWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return new Container(color: color,);
  }

}