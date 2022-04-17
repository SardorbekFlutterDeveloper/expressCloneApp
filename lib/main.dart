import 'package:express24/core/components/theme_comp.dart';
import 'package:express24/routes/my_routes.dart';
import 'package:express24/screens/search_page.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final MyRoutes _myRoutes = MyRoutes();

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeComp.lightTheme,
        dark:  ThemeComp.darkTheme,
        initial: AdaptiveThemeMode.light,
        builder: (light, dark) {
          return MaterialApp(
            title: "Exprees24",
            debugShowCheckedModeBanner: false,
            theme: light,
            darkTheme: dark,
            onGenerateRoute: _myRoutes.ongenerateRoute,
            initialRoute: "/",
          );
        });
  }
}
