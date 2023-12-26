import 'package:flutter/material.dart';

import 'package:flutter_demo/view/home/home_screen.dart';
import 'package:flutter_demo/view/login/login_screen.dart';
import 'package:flutter_demo/view/search/search_screen.dart';

void main() {
  runApp( MaterialApp(

    home: const HomeScreen(), // becomes the route named '/'
    routes: <String, WidgetBuilder> {
      '/home': (BuildContext context) => const HomeScreen(),
      '/login': (BuildContext context) => const LoginScreen(),
      '/search': (BuildContext context) => const SearchScreen(),

    },
  ));
}



