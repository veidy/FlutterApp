import 'package:flutter/material.dart';

class indexWidget extends StatelessWidget{
  final Color color;

  indexWidget(this.color);

  @override
  Widget build(BuildContext context) {
     return Container(
       color: color,
     );
  }

}