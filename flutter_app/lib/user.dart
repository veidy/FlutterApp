import 'package:flutter/material.dart';
class UserCenterWidget extends StatelessWidget{
  final Color color ;

  UserCenterWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: color,
    );
  }

}