
import 'package:flutter/material.dart';

final appExt = AppExt();
class AppExt {
  Future<dynamic> push(Widget page,BuildContext context) =>
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>page));


  Future<dynamic> pushAndRemoveUntil(Widget page,BuildContext context) =>
      Navigator.of(context).pushAndRemoveUntil(
          PageRouteBuilder(
              transitionDuration: Duration(seconds: 2),
              pageBuilder: (context,_,__)=>page),
              (_)=>false);
}