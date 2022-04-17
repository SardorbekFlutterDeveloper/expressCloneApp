import 'package:express24/screens/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRoutes {
   Route? ongenerateRoute(RouteSettings r) {
    var agrs = r.arguments;
    switch (r.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );

       
    }
  }
}
