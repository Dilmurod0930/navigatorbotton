

import 'package:flutter/material.dart';
import 'package:navigatorbottom/screens/navBottom_page.dart';

class MyRoute {
 static Route? onGenereteRoute (RouteSettings s){
    var args = s.arguments;
    switch (s.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const NavBottonPage());
        break;  
    }
  }

}